import { useState } from "react";
import CustomerView from "./components/CustomerView";
import EmployeeView from "./components/EmployeeView";
import "./App.css";
import { Link } from "react-router-dom";

function App() {
  return (
    <div className="App">
      <div className="role-selector">
        <h3>Select a role:</h3>
        <Link to={"/customer"}>
          <button>Customer</button>
        </Link>
        <Link to={"/employee"}>
          <button>Employee</button>
        </Link>
        {/* <input
          type="radio"
          id="customer-role"
          name="user-role"
          value="customer"
          onClick={() => setRole("customer")}
          defaultChecked
        />
        <label htmlFor="customer-role">Customer</label>
        <input
          type="radio"
          id="employee-role"
          name="user-role"
          value="employee"
          onClick={() => setRole("employee")}
        />
        <label htmlFor="employee-role">Employee</label> */}
      </div>
    </div>
  );
}

export default App;
