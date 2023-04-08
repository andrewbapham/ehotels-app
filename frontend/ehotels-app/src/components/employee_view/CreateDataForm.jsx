import React, { useEffect } from "react";
import axios from "axios";

const typeMap = {
  "varchar(255)": "text",
  int: "number",
};

function CreateDataForm(props) {
  //First load, headers will be empty so return nothing.
  if (props.headers === undefined || props.headers.length === 0) {
    return <></>;
  }
  let inputs = [];
  props.headers.forEach((headerObj) => {
    //headerObj is of the form:
    // {columnName : columnType}
    //Header the name of the column
    // [0] since Object.keys returns an array of keys, and there is only one key
    let headerText = Object.keys(headerObj)[0];
    inputs.push(
      <div className="input-field" key={"div_" + headerText}>
        <label htmlFor={headerText}>{headerText + ":"}</label>
        <input
          //Access the type of the column from the typeMap, and use that to set the HTML input type
          // e.g. typeMap[headers["name"]] = typeMap["varchar(255)"] = "text"
          type={typeMap[headerObj[headerText]]}
          id={headerText}
          name={headerText}
        />
      </div>
    );
  });

  return <div>{inputs}</div>;
}

export default CreateDataForm;
