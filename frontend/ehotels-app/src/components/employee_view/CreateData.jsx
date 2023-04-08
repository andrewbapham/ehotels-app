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
      .get(baseURL + "/api/employee/headers?table=" + table)
      .then((res) => {
        setHeaders(res.data);
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
      <select
        name="table-select"
        id="table-select"
        onChange={(e) => setTable(e.target.value)}
      >
        <option value="customer">Customer</option>
        <option value="employees">Employees</option>
        <option value="hotel">Hotel</option>
        <option value="room">Room</option>
      </select>
      <CreateDataForm headers={headers} setInputVals={setInputVals} />
    </>
  );
}

export default CreateData;
