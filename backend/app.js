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
      res.send(headers);
    }
  });
});

//Get info about customer with given customer_id
app.get("/api/customer/customer_info", (req, res) => {
  //skip if no customer_id provided
  if (!req.query.customer_id) {
    res.send([]);
    return;
  }

  let query =
    "SELECT * FROM customer WHERE customer.customer_id = " +
    req.query.customer_id;
  db.query(query, (err, result) => {
    if (err) {
      console.log(err);
      res.status(400).send(err.message);
    } else {
      if (result.length === 0) {
        res.status(400).send("No customer with that ID");
        return;
      }
      res.send(result);
    }
  });
});

app.get("/api/customer/findroom", (req, res) => {
  //Generate query based on search parameters
  let roomQuery = "SELECT room.* FROM room, hotel WHERE ";
  let queryStatements = [];
  for (let key in req.query) {
    //Skip bad parameters
    if (!(key in searchQueries)) {
      continue;
    } else if (req.query[key] !== "") {
      if (key === "numRoomsInHotel") {
        //Pass all value needed to generate clause for numRoomsInHotel
        let valueObject = {
          startDate: req.query.dateRange.startDate,
          endDate: req.query.dateRange.endDate,
          numRooms: req.query.numRoomsInHotel,
        };

        queryStatements.push(generateClause(key, valueObject));
      }
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

  roomQuery += " AND room.hotel_id = hotel.hotel_id";

  let chainInfoQuery =
    "SELECT availRooms.*, hotel.hotel_name, hotel.address, hotel.city, hotel.stars, hotel_chain.chain_name FROM (" +
    roomQuery +
    ") availRooms, hotel, hotel_chain WHERE availRooms.hotel_id = hotel.hotel_id AND hotel.chain_id = hotel_chain.chain_id";

  db.query(chainInfoQuery, (err, result) => {
    if (err) {
      console.log(err);
    } else {
      res.send(result);
    }
  });
});

let searchQueries = {
  capacity: " room.capacity = ",
  city: "hotel.city LIKE ",
  priceEquals: " room.price = ",
  priceLessThan: " room.price <= ",
  priceGreaterThan: " room.price >= ",
  stars: "hotel.stars = ",
  chain: "hotel.chain_id = ",
  amenities: " room.amenities LIKE ",
  view: " room.view LIKE ",
  dateRange: "hotel.startDate <= ",
  numRoomsInHotel: " ",
};

// Generate the SQL clause for the given parameter and value
function generateClause(param, value) {
  // Creates a string of the form "param = 'value'", eg. "hotel.stars = 5"
  let clause = searchQueries[param] + value;
  //Special cases for date range and numRoomsInHotel
  if (typeof value === "object" && param === "dateRange") {
    clause =
      " room.room_id NOT IN (SELECT r.room_id FROM occupied_rooms r WHERE r.start_date <= '" +
      value.endDate +
      "' AND r.end_date >= '" +
      value.startDate +
      "')";
  } else if (param === "numRoomsInHotel") {
    if (!value.startDate || !value.endDate || !value.numRooms) {
      // If any parmeters are undefined, skip this clause
      return "TRUE";
    }
    clause =
      " room.hotel_id IN (SELECT counts.hotel_id FROM (SELECT room.hotel_id, count(*) FROM room, hotel h WHERE  room.room_id NOT IN (SELECT r.room_id FROM occupied_rooms r WHERE r.start_date <= '" +
      value.endDate +
      "' AND r.end_date>= '" +
      value.startDate +
      "') AND room.hotel_id = h.hotel_id GROUP BY room.hotel_id HAVING COUNT(*) >= " +
      value.numRooms +
      ") counts)";
  } else if (param === "amenities") {
    clause = " room.amenities LIKE '%";
    //Add a like clause for each amenity
    value.forEach((amenity) => {
      clause += amenity + "%' AND room.amenities LIKE '%";
    });
    //Remove the last " AND Room.amenities LIKE '%"
    clause = clause.slice(0, -27);
  } else if (value === "any") {
    //Placeholder to replace with a valid SQL clause if any value is acceptable
    clause = "TRUE";
  }
  return clause;
}

app.post("/api/customer/book", (req, res) => {
  let sql =
    "INSERT INTO booking (customer_id, room_id, start_date, end_date) VALUES ?";
  let values = [];

  values.push(Object.values(req.body));
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

app.post("/api/customer/update", (req, res) => {
  let sql = "UPDATE customer SET ? WHERE customer_id = ?";
  let values = [];

  //Remove the registration date since it can't be updated by customers anyways
  delete req.body.registration_date;

  values.push(req.body);
  values.push(req.body.customer_id);
  db.query(sql, values, (err, result) => {
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

//Endpoint that creates new customer account, for the customer view
app.post("/api/customer/create", (req, res) => {
  let sql =
    "INSERT INTO customer (customer_name, address, city, ssn, registration_date) VALUES ?";

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
  let sql = "";
  if (req.query.table === "hotel_chain") {
    sql = "DELETE FROM hotel_chain WHERE chain_id = " + req.query.id;
  } else {
    sql =
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
