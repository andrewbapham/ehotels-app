const express = require("express");
const router = express.Router();

//Get info about customer with given customer_id
router.get("/customer_info", (req, res) => {
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

router.get("/findroom", (req, res) => {
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

router.post("/book", (req, res) => {
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

router.post("/update", (req, res) => {
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
router.post("/create", (req, res) => {
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

module.exports = router;
