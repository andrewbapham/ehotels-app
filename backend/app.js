const express = require("express");
const app = express();
const port = 3000;

const mysql = require("mysql");
const db = mysql.createConnection({
  host: "localhost",
  //If developing locally, need to create MySQL user with access to db, with same username and password
  user: "ehotels_access",
  //IMPORTANT: Password used for testing only, don't use in real prod scenario. Must be set when setting up Docker containers.
  password: "csi2132",
  database: "ehotels_db",
});

//Enable CORS to allow requests from frontend on localhost:3000
app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );
  next();
});

db.connect((err) => {
  if (err) {
    console.log(err);
  } else {
    console.log("Connected to database");
  }
});

app.get("/", (req, res) => {
  res.send("Hello World!");
});

//Returns all rows from the requested table
app.get("/api/employee", (req, res) => {
  db.query("SELECT * FROM " + req.query.table, (err, result) => {
    if (err) {
      console.log(err);
    } else {
      res.send(result);
      //console.log(result);
    }
  });
});

//Returns column headers for the requested table
app.get("/api/employee/headers", (req, res) => {
  console.log("received");
  db.query("SHOW COLUMNS FROM " + req.query.table, (err, result) => {
    if (err) {
      console.log(err);
    } else {
      const headers = result.map((col) => {
        let obj = {};
        obj[col.Field] = col.Type;
        return obj;
      });
      console.log(headers);
      res.send(headers);
    }
  });
});

app.get("/api/customers/findroom", (req, res) => {
  //Generate query based on search parameters
  let roomQuery = "SELECT Room.* FROM Room, Hotel, Booking WHERE ";
  let queryStatements = [];
  for (let key in req.query) {
    //Skip bad parameters
    if (!(key in searchQueries)) {
      continue;
    } else if (req.query[key] !== "") {
      queryStatements.push(generateClause(key, req.query[key]));
    }
  }

  //Add all the where parts of the query together
  for (let i = 0; i < queryStatements.length; i++) {
    if (i === 0) {
      roomQuery += queryStatements[i];
    } else {
      roomQuery += " AND " + queryStatements[i];
    }
  }
  roomQuery += " AND Room.hotel_id = Hotel.hotel_id";

  let chainInfoQuery =
    "SELECT availRooms.*, Hotel.hotel_name, Hotel.address, Hotel.city, Hotel.stars, Hotel_chain.Chain_name FROM (" +
    roomQuery +
    ") availRooms, Hotel, Hotel_chain WHERE availRooms.hotel_id = Hotel.hotel_id AND Hotel.chain_id = Hotel_chain.chain_id";

  //console.log(chainInfoQuery);
  db.query(chainInfoQuery, (err, result) => {
    if (err) {
      console.log(err);
    } else {
      res.send(result);
    }
  });
});

let searchQueries = {
  capacity: "Room.capacity = ",
  city: "Hotel.city LIKE ",
  priceEquals: "Room.price = ",
  priceLessThan: "Room.price <= ",
  priceGreaterThan: "Room.price >= ",
  stars: "Hotel.stars = ",
  chain: "Hotel.chain_id = ",
  amenities: "Rooms.amenities LIKE ",
  dateRange: "Booking.startDate <= ",
  numRoomsInHotel: "",
};

function generateClause(param, value) {
  let clause = searchQueries[param] + value;
  if (typeof value === "object" && param === "dateRange") {
    clause =
      "Room.room_id NOT IN (SELECT r.room_id FROM occupiedrooms r WHERE r.start_date <= '" +
      value.endDate +
      "' AND r.end_date >= '" +
      value.startDate +
      "')";
  } else if (param === "numRoomsInHotel") {
    clause =
      "Room.hotel_id IN (SELECT counts.hotel_id FROM (SELECT Room.hotel_id, count(*) FROM Room, hotel h, Booking b WHERE  Room.room_id NOT IN (SELECT r.room_id FROM occupiedrooms r WHERE r.start_date <= '" +
      value.endDate +
      "' AND r.end_date>= '" +
      value.startDate +
      "') AND Room.hotel_id = h.hotel_id GROUP BY Room.hotel_id HAVING COUNT(*) >= " +
      value.numRooms +
      ") counts)";
  }
  return clause;
}

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
