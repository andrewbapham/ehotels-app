import { useState, useEffect, React } from "react";
import axios from "axios";
import ModifyForm from "./ModifyForm";

function ModifyData(props) {
  const baseURL = "http://localhost:3000";
  const [table, setTable] = useState("customer");
  const [fields, setFields] = useState([]);

  useEffect(() => {
    axios
      .get(baseURL + "/api/employee/headers?table=" + table)
      .then((res) => {
        console.log(res.data);
      })
      .catch((err) => {
        //console.log(err);
      });
  }, [table]);
  return (
    <>
      {/*
    Dropdown menu to select table to modify
  */}
      <label htmlFor="table-name">Table:</label>
      <select name="table-select" id="table-select">
        <option value="customer">Customer</option>
        <option value="employees">Employees</option>
        <option value="hotel">Hotel</option>
        <option value="room">Room</option>
      </select>
      <ModifyForm table={table} />
    </>
  );
}

export default ModifyData;
