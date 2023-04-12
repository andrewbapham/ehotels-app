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
  res.header("Access-Control-Allow-Methods", "PUT, POST, GET, DELETE, OPTIONS");
  next();
});

//Allow parsing of JSON in request body
app.use(express.json());

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
  db.query("SHOW COLUMNS FROM " + req.query.table, (err, result) => {
    if (err) {
      console.log(err);
    } else {
      const headers = [];
      result.forEach((col) => {
        let obj = {};
        obj[col.Field] = col.Type;
        if (
          req.query.action === "create" &&
          col.Field.includes("id") &&
          col.Field.includes(req.query.table)
        ) {
          //console.log("skipped column: " + col.Field);
          return;
        }
        headers.push(obj);
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
    if (!roomQuery) continue;
    if (i === 0) {
      roomQuery += queryStatements[i];
    } else {
      roomQuery += " AND " + queryStatements[i];
    }
  }

  roomQuery += " AND Room.hotel_id = Hotel.hotel_id";

  let chainInfoQuery =
    "SELECT availRooms.*, Hotel.hotel_name, Hotel.address, Hotel.city, Hotel.stars, Hotel_chain.chain_name FROM (" +
    roomQuery +
    ") availRooms, Hotel, Hotel_chain WHERE availRooms.hotel_id = Hotel.hotel_id AND Hotel.chain_id = Hotel_chain.chain_id";

  console.log(chainInfoQuery);

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
  amenities: "Room.amenities LIKE ",
  view: "Room.view LIKE ",
  dateRange: "Booking.startDate <= ",
  numRoomsInHotel: "",
};

// Generate the SQL clause for the given parameter and value
function generateClause(param, value) {
  // Creates a string of the form "param = 'value'", eg. "Hotel.stars = 5"
  let clause = searchQueries[param] + value;
  //Special cases for date range and numRoomsInHotel
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
  } else if (param === "amenities") {
    clause = "Room.amenities LIKE '%";
    //Add a like clause for each amenity
    value.forEach((amenity) => {
      clause += amenity + "%' AND Room.amenities LIKE '%";
    });
    //Remove the last " AND Room.amenities LIKE '%"
    clause = clause.slice(0, -27);
    console.log(clause);
  } else if (value === "any") {
    //Placeholder to replace with a valid SQL clause if any value is acceptable
    clause = "TRUE";
  }
  return clause;
}

//Endpoint that creates new customer account, for the customer view
app.post("/api/customer/create", (req, res) => {
  let sql =
    "INSERT INTO Customer (customer_name, address, city, ssn, registration_date) VALUES ?";

  let values = [];
  values.push(Object.values(req.body));

  //Get current date in the form YYYY-MM-DD
  const registration_date = new Date().toISOString().slice(0, 10);
  values[0].push(registration_date);

  db.query(sql, [values], (err, result) => {
    if (err) {
      console.log(err);
      res
        .status(400)
        .send("Error inserting row into table - " + err.sqlMessage);
    } else {
      console.log(result);
      res.send(result);
    }
  });
});

//Create endpoint that creates a new row in the requested table
app.post("/api/employee/create", (req, res) => {
  let columnInsert = "(";
  const post = req.body;
  const columns = Object.keys(post);

  // Create list of columns to insert into (e.g. (customer_name, address, city), etc.)
  for (let i = 0; i < columns.length; i++) {
    if (i === columns.length - 1) {
      columnInsert += columns[i] + ")";
    } else {
      columnInsert += columns[i] + ", ";
    }
  }

  let sql = "INSERT INTO " + req.query.table + " " + columnInsert + " VALUES ?";
  let values = [];
  values.push(Object.values(post));
  //Use parametrized queries (?) to prevent SQL injection
  //Replaces ? with all values in the values array
  db.query(sql, [values], (err, result) => {
    if (err) {
      console.log(err);
      res
        .status(400)
        .send("Error inserting row into table - " + err.sqlMessage);
    } else {
      res.send(result);
    }
  });
});

app.put("/api/employee/update", (req, res) => {
  const post = req.body;
  const columns = Object.keys(post);

  let setValues = "";

  //Get column names and data types
  const headers = [];
  db.query("SHOW COLUMNS FROM " + req.query.table, (err, result) => {
    if (err) {
      console.log(err);
    } else {
      result.forEach((col) => {
        //Get column names and types to build query
        let obj = {};
        obj.name = col.Field;
        obj.type = col.Type;

        headers.push(obj);
      });

      // Loop adds all SET = Values to the query
      for (let i = 0; i < columns.length; i++) {
        //Use column types to determine whether or not to add quotes
        setValues += columns[i] + " = ";
        if (!headers[i].type.includes("int")) {
          setValues += "'" + post[columns[i]] + "'";
        } else {
          setValues += post[columns[i]];
        }
        if (i < columns.length - 1) setValues += ", ";
      }

      let sql =
        "UPDATE " +
        req.query.table +
        " SET " +
        setValues +
        " WHERE " +
        req.query.table +
        "_id" +
        " = " +
        post[req.query.table + "_id"];

      let values = [];
      values.push(Object.values(post));
      db.query(sql, [values], (err, result) => {
        if (err) {
          console.log(err);
          res
            .status(400)
            .send("Error inserting row into table - " + err.sqlMessage);
        } else {
          res.send(result);
        }
      });
    }
  });
});

app.delete("/api/employee/delete", (req, res) => {
  //Unique case, hotel_chain's id is named chain_id
  if (req.query.table === "hotel_chain") {
    sql = "DELETE FROM Hotel_chain WHERE chain_id = " + req.query.id;
  } else {
    let sql =
      "DELETE FROM " +
      req.query.table +
      " WHERE " +
      req.query.table +
      "_id" +
      " = " +
      req.query.id;
  }

  db.query(sql, (err, result) => {
    if (err) {
      console.log(err);
      res.status(400).send("Error deleting from table - " + err.sqlMessage);
    } else {
      res.send(result);
    }
  });
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
