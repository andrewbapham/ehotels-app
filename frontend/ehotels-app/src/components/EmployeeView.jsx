import { React } from "react";
import DisplayData from "./employee_view/DisplayData";
import CreateData from "./employee_view/CreateData";

function EmployeeView(props) {
  return (
    <div>
      <h3>Employee</h3>
      <div className="display-data-section">
        <h4>View Data</h4>
        <DisplayData />
      </div>
      <div className="modify-data-section">
        <h4>Modify Data</h4>
        <CreateData />
      </div>
    </div>
  );
}
export default EmployeeView;
