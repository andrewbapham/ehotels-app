import { useEffect, useState, React } from "react";
import DataTable from "./DataTable";
import axios from "axios";

function DisplayData(props) {
  const [table, setTable] = useState("customer");
  const [data, setData] = useState([]);

  useEffect(() => {
    axios
      .get("/api/employee?table=" + table)
      .then((res) => {
        setData(res.data);
      })
      .catch((err) => {
        setData("Couldn't fetch data from server.");
        //console.log(err);
      });
  }, [table]);

  return (
    <>
      <label htmlFor="table-name">Data:</label>
      <select
        name="table-select"
        id="table-select"
        onChange={(e) => setTable(e.target.value)}
      >
        <option value="customer">Customer</option>
        <option value="employee">Employees</option>
        <option value="hotel">Hotel</option>
        <option value="hotel_chain">Hotel Chain</option>
        <option value="room">Room</option>
        <option value="booking">Booking</option>
        <option value="renting">Renting</option>
        <option value="room_capacity_by_hotel">Room Capacities</option>
        <option value="available_rooms_per_area">
          Available Rooms per Area
        </option>
      </select>
      {data.length === 0 ? "Table is empty." : <DataTable data={data} />}
    </>
  );
}

export default DisplayData;
