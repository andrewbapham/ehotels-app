const express = require("express");
const router = express.Router();

//Returns all rows from the requested table
router.get("/employee", (req, res) => {
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
router.get("/headers", (req, res) => {
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

//Create endpoint that creates a new row in the requested table
router.post("/create", (req, res) => {
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

router.put("/update", (req, res) => {
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

router.delete("/delete", (req, res) => {
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

module.exports = router;
