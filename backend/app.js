const express = require("express");
const app = express();
const port = 3000;
const customerRoute = require("./routes/Customer");
const employeeRoute = require("./routes/Employee");

const mysql = require("mysql");
const db = mysql.createConnection({
  host: "localhost",
  //If developing locally, need to create MySQL user with access to db, with same username and password
  user: "ehotels_access",
  //IMPORTANT: Password used for testing only, don't use in real prod scenario. Must be set when setting up Docker containers.
  password: "csi2132",
  database: "ehotels_db",
});

global.db = db;

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

app.use("/api/customer", customerRoute);
app.use("/api/employee", employeeRoute);

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
