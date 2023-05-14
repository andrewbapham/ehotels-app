import { React, useState } from "react";
import DisplayData from "./employee_view/DisplayData";
import CreateData from "./employee_view/CreateData";
import DeleteData from "./employee_view/DeleteData";
import { Link } from "react-router-dom";

function EmployeeView(props) {
  const [action, setAction] = useState("create");
  return (
    <div>
      <h3>Change role:</h3>
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
      <div className="delete-data-section">
        <h4>Delete Data</h4>
        <DeleteData />
      </div>
    </div>
  );
}
export default EmployeeView;
