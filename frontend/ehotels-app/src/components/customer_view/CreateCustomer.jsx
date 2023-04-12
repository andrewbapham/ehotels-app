import axios from "axios";
import { React, useState } from "react";

function CreateCustomer(props) {
  const [formData, setFormData] = useState({});
  const [error, setError] = useState("");
  const [success, setSuccess] = useState(false);
  const [userID, setUserID] = useState(null);

  const handleInputChange = (e) => {
    const target = e.target;
    const value = target.value;
    const name = target.name;
    setFormData({ ...formData, [name]: value });
  };

  const handleSubmit = (e) => {
    //Reset Success/Error
    setUserID(null);
    setSuccess(false);
    setError("");

    e.preventDefault();
    axios
      .post("/api/customer/create", formData)
      .then((res) => {
        console.log(res);
        if (res.status === 200) {
          //Clear the form
          console.log(res);
          setFormData({});
          setSuccess(true);
          setUserID(res.data.insertId);
        }
      })
      .catch((err) => {
        console.log(err);
        setError(err.response.data || err.message);
      });
  };

  return (
    <>
      <form onSubmit={handleSubmit} style={{ display: "block" }}>
        <h3>Create an account</h3>
        <div>
          <label htmlFor="customer-name">Name:</label>
          <input
            type="text"
            id="customer-name"
            name="name"
            onChange={handleInputChange}
          />
        </div>

        <div>
          <label htmlFor="customer-address">Street Address:</label>
          <input
            type="text"
            id="customer-address"
            name="address"
            onChange={handleInputChange}
          />
        </div>
        <div>
          <label htmlFor="customer-city">City:</label>
          <input
            type="text"
            id="customer-city"
            name="city"
            onChange={handleInputChange}
          />
        </div>
        <div>
          <label htmlFor="SSN">SSN:</label>
          <input type="text" id="SSN" name="SSN" onChange={handleInputChange} />
        </div>
        {success && userID && (
          <p>
            Account created successfully! Your unique customer ID is: {userID}.
            Please don't forget it!
          </p>
        )}
        {error && <p>{error}</p>}
        <button type="submit">Create</button>
      </form>
    </>
  );
}

export default CreateCustomer;
