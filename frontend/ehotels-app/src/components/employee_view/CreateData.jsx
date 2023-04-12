import { useState, useEffect, React } from "react";
import axios from "axios";
import CreateDataForm from "./CreateDataForm";

function CreateData(props) {
  const baseURL = "http://localhost:3000";
  const [table, setTable] = useState("customer");
  const [headers, setHeaders] = useState([]);
  const [inputVals, setInputVals] = useState({});

  useEffect(() => {
    axios
      .get("/api/employee/headers?table=" + table + "&action=" + props.action)
      .then((res) => {
        setHeaders(res.data);
      })
      .catch((err) => {
        //console.log(err);
      });
  }, [table, props.action]);
  return (
    <>
      {/*
    Dropdown menu to select table to modify
  */}
      <label htmlFor="table-name">Table:</label>
      <select
        name="table-select"
        id="table-select"
        onChange={(e) => setTable(e.target.value)}
      >
        <option value="customer">Customer</option>
        <option value="employee">Employees</option>
        <option value="hotel">Hotel</option>
        <option value="room">Room</option>
        <option value="booking">Booking</option>
        <option value="renting">Renting</option>
      </select>
      <CreateDataForm
        headers={headers}
        setInputVals={setInputVals}
        action={props.action}
        table={table}
      />
    </>
  );
}

export default CreateData;
