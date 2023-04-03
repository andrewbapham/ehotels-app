import { useState, useEffect, React } from "react";
import DataTable from "./DataTable";
import axios from "axios";

const baseURL = "http://localhost:3000";

function EmployeeView(props) {
  const [table, setTable] = useState("customer");
  const [data, setData] = useState([]);

  useEffect(() => {
    axios
      .get(baseURL + "/api/employee?table=" + table)
      .then((res) => {
        setData(res.data);
      })
      .catch((err) => {
        console.log(err);
      });
  }, [table]);

  return (
    <div>
      <h3>Employee</h3>
      <label htmlFor="table-name">Data:</label>
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
      {data.length === 0 ? "" : <DataTable data={data} />}
    </div>
  );
}
export default EmployeeView;
