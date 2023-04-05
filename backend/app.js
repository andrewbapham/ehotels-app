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
      const headers = result.map((col) => col.Field);
      res.send(headers);
    }
  });
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
