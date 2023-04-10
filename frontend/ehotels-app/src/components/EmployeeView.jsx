import { React, useState } from "react";
import DisplayData from "./employee_view/DisplayData";
import CreateData from "./employee_view/CreateData";

function EmployeeView(props) {
  const [action, setAction] = useState("create");
  return (
    <div>
      <h3>Employee</h3>
      <div className="display-data-section">
        <h4>View Data</h4>
        <DisplayData />
      </div>
      <div className="modify-data-section">
        <h4>Modify Data</h4>
        <input
          type="radio"
          id="create-data-employee"
          name="form-action"
          value="create"
          onClick={() => setAction("create")}
          defaultChecked
        />
        <label htmlFor="create-data-employee">Create data</label>
        <input
          type="radio"
          id="update-data-employee"
          name="form-action"
          value="update"
          onClick={() => setAction("update")}
        />
        <label htmlFor="update-data-employee">Update Data</label>
      </div>
      <CreateData action={action} />
    </div>
  );
}
export default EmployeeView;
