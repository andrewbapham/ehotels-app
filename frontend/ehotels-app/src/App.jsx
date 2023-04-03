import { useEffect, useState } from "react";
import reactLogo from "./assets/react.svg";
import viteLogo from "/vite.svg";
import CustomerView from "./components/CustomerView";
import EmployeeView from "./components/EmployeeView";
import "./App.css";

function App() {
  const [role, setRole] = useState("customer");

  return (
    <div className="App">
      <div class="role-selector">
        <h3>Select a role:</h3>
        <input
          type="radio"
          id="customer-role"
          name="user-role"
          value="customer"
          onClick={() => setRole("customer")}
          defaultChecked
        />
        <label for="customer-role">Customer</label>
        <input
          type="radio"
          id="employee-role"
          name="user-role"
          value="employee"
          onClick={() => setRole("employee")}
        />
        <label for="employee-role">Employee</label>
      </div>
      {role === "customer" ? <CustomerView /> : <EmployeeView />}
    </div>
  );
}

export default App;
