import { React, useEffect, useState } from "react";
import axios from "axios";

function UpdateUserInfo(props) {
  const [formData, setFormData] = useState({});
  const [error, setError] = useState("");
  const [success, setSuccess] = useState(false);

  const handleInputChange = (e) => {
    const target = e.target;
    const value = target.value;
    const name = target.name;
    setFormData({ ...formData, [name]: value });
  };

  useEffect(() => {
    setError("");
    axios
      .get(
        "http://localhost:3000/api/customer/customer_info?customer_id=" +
          //If customer_id is undefined, set it to an empty string, backend will skip query
          (formData.customer_id || "")
      )
      .then((res) => {
        console.log(res);
        if (res.data[0]) setFormData(res.data[0]);
      })
      .catch((err) => {
        console.log(err);
        setError(err.response.data || err.message);
      });
  }, [formData.customer_id]);

  const handleSubmit = (e) => {
    e.preventDefault();
    //Reset Success/Error
    setSuccess(false);
    setError("");

    axios
      .post("http://localhost:3000/api/customer/update", formData)
      .then((res) => {
        console.log(res);
        if (res.status === 200) {
          //Clear the form
          console.log(res);
          setFormData({});
          setSuccess(true);
        }
      })
      .catch((err) => {
        console.log(err);
        setError(err.response.data || err.message);
      });
  };

  return (
    <form onSubmit={handleSubmit}>
      <h3>Edit Information</h3>
      <p>
        Enter your customer id and the rest of the information will auto-fill.
        Then, enter the information you wish to update and click submit.
      </p>
      <label>
        customer_id:
        <input
          type="number"
          name="customer_id"
          value={formData.customer_id || ""}
          onChange={handleInputChange}
        />
      </label>
      <label>
        Name:
        <input
          type="text"
          name="customer_name"
          value={formData.customer_name || ""}
          onChange={handleInputChange}
        />
      </label>
      <label>
        Address:
        <input
          type="text"
          name="address"
          value={formData.address || ""}
          onChange={handleInputChange}
        />
      </label>
      <label>
        City:
        <input
          type="text"
          name="city"
          value={formData.city || ""}
          onChange={handleInputChange}
        />
      </label>
      <label>
        SSN:
        <input
          type="password"
          name="ssn"
          value={formData.ssn || ""}
          onChange={handleInputChange}
        />
      </label>
      <p>Registered on: {formData.registration_date?.slice(0, 10)}</p>
      {error && <p style={{ color: "red" }}>Error: {error}</p>}
      {success && <p style={{ color: "green" }}>Success!</p>}
      <button type="submit">Submit</button>
    </form>
  );
}

export default UpdateUserInfo;
