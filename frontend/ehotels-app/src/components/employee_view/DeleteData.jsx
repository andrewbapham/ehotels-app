import React from "react";
import { useState } from "react";
import { useEffect } from "react";
import axios from "axios";
import qs from "qs";

function DeleteData(props) {
  const [table, setTable] = useState("customer");
  const [id, setId] = useState(0);
  const [success, setSuccess] = useState(false);
  const [err, setErr] = useState("");

  const deleteData = () => {
    axios
      .delete("/api/employee/delete?table=" + table + "&id=" + id)
      .then((res) => {
        console.log(res.data.affectedRows);
        if (res.status === 200 && res.data.affectedRows >= 1) {
          //Clear the form
          setSuccess(true);
        } else {
          setErr("No rows were deleted. ID may not exist.");
        }
      })
      .catch((err) => {
        console.log(err);
      });
  };

  return (
    <>
      {/* Dropdown menu to select table to modify */}
      <label htmlFor="table-name">Table:</label>
      <select
        name="table-select"
        id="table-select"
        onChange={(e) => setTable(e.target.value)}
      >
        <option value="customer">Customer</option>
        <option value="hotel">Hotel</option>
        <option value="room">Room</option>
        <option value="hotel_chain">Hotel Chain</option>
      </select>
      <br></br>
      <label htmlFor="delete-id">ID:</label>

      <input
        type="number"
        id="delete-id"
        onChange={(e) => setId(e.target.value)}
      ></input>
      <br></br>
      {success ? <p>Success</p> : ""}
      {err ? <p>{err}</p> : ""}
      <button onClick={() => deleteData()}>Delete</button>
    </>
  );
}

export default DeleteData;
