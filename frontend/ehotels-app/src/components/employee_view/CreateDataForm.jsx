import React, { useEffect, useRef, useState } from "react";
import axios from "axios";

function CreateDataForm(props) {
  const typeMap = useRef({
    "varchar(255)": "text",
    int: "number",
    date: "date",
    "tinyint(1)": "checkbox",
  });

  const [formData, setFormData] = useState({});
  const [error, setError] = useState({});
  const [reqError, setReqError] = useState({});
  const [success, setSuccess] = useState(false);

  const handleInputChange = (e) => {
    if (e.target.type === "checkbox") {
      setFormData({ ...formData, [e.target.name]: e.target.checked });
      return;
    }
    const target = e.target;
    const value = target.value;
    const name = target.name;
    setFormData({ ...formData, [name]: value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    //Reset Success/Error
    setError({});
    setReqError({});
    setSuccess(false);
    //Check if any input fields are empty, only for create
    if (props.action === "create") {
      let emptyFields = [];
      props.headers.forEach((headerObj) => {
        let headerText = Object.keys(headerObj)[0];
        if (headerText === "paid" && formData[headerText] === undefined) {
          formData[headerText] = false;
        }
        if (formData[headerText] === undefined) {
          emptyFields.push(headerText);
        }
      });

      if (emptyFields.length > 0) {
        setError({ ...error, emptyField: true });
        return;
      }
      axios
        .post("/api/employee/create?table=" + props.table, formData)
        .then((res) => {
          if (res.status === 200) {
            //Clear the form
            setFormData({});
            setSuccess(true);
          }
        })
        .catch((err) => {
          console.log(err);
          setReqError(err.response || err.message);
        });
    } else if (props.action === "update") {
      axios
        .put("/api/employee/update?table=" + props.table, formData)
        .then((res) => {
          if (res.status === 200) {
            //Clear the form
            setFormData({});
            setSuccess(true);
          }
        })
        .catch((err) => {
          console.log(err);
          setReqError(err.response || err.message);
        });
    }
  };

  const emptyData = {};

  let inputs = [];
  props.headers.forEach((headerObj) => {
    //headerObj is of the form:
    // {columnName : columnType}
    //Header the name of the column
    // [0] since Object.keys returns an array of keys, and there is only one key
    let headerText = Object.keys(headerObj)[0];
    //Don't show the id fields if we are creating a new entry
    inputs.push(
      <div className="input-field" key={"div_" + headerText}>
        <label htmlFor={headerText}>{headerText + ":"}</label>
        <input
          //Access the type of the column from the typeMap, and use that to set the HTML input type
          // e.g. typeMap[headers["name"]] = typeMap["varchar(255)"] = "text"
          type={typeMap.current[headerObj[headerText]]}
          id={headerText}
          name={headerText}
          onChange={handleInputChange}
          value={formData[headerText] || ""}
        />
      </div>
    );
  });

  useEffect(() => {
    //Clear the error and form data when the headers change
    setError({});
    setFormData({});
    setReqError({});
  }, [props.headers, props.action]);

  //First load, headers will be empty so return nothing.
  if (props.headers === undefined || props.headers.length === 0) {
    return <></>;
  }
  return (
    <form>
      {error.emptyField ? <p>Error: missing fields.</p> : <></>}
      {error.invalid ? <p>Error: Invalid input data.</p> : <></>}
      {reqError.data ? <p>Error: {reqError.data}</p> : <></>}
      {inputs}
      {success ? <p>Success!</p> : <></>}
      <button onClick={handleSubmit}>Submit</button>
    </form>
  );
}

export default CreateDataForm;
