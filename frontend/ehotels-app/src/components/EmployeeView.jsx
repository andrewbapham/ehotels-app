import React from "react";

function EmployeeView(props) {
  return (
    <div>
      <h3>Employee</h3>
      <label for="table-name">Data:</label>
      <select name="table-select" id="table-select">
        <option value="Customer">Customer</option>
        <option value="Employees">Employees</option>
        <option value="Hotel">Hotel</option>
        <option value="Room">Room</option>
      </select>
    </div>
  );
}
export default EmployeeView;
