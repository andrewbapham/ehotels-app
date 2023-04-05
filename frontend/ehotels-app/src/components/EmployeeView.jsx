import { React } from "react";
import DisplayData from "./employee_view/DisplayData";
import ModifyData from "./employee_view/ModifyData";

function EmployeeView(props) {
  return (
    <div>
      <h3>Employee</h3>
      <div className="display-data-section">
        <DisplayData />
      </div>
      <div className="modify-data-section">
        <h4>Modify Data</h4>
        <ModifyData />
      </div>
    </div>
  );
}
export default EmployeeView;
