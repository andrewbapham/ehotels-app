import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App";
import "./index.css";
import { createBrowserRouter, RouterProvider } from "react-router-dom";
import ErrorPage from "./ErrorPage";
import CustomerView from "./components/CustomerView";
import EmployeeView from "./components/EmployeeView";
import Navbar from "react-bootstrap/Navbar";
import Nav from "react-bootstrap/Nav";

const router = createBrowserRouter([
  {
    path: "/",
    element: <App />,
    errorElement: <ErrorPage />,
  },
  {
    path: "/customer",
    element: <CustomerView />,
  },
  {
    path: "/employee",
    element: <EmployeeView />,
  },
]);

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <Navbar className="navbar">
      <Navbar.Brand href="/" className="nav-element">
        eHotels App
      </Navbar.Brand>
      <Nav className="nav-element">
        <Nav.Link href="/customer" className="nav-link">
          Customer
        </Nav.Link>
        <Nav.Link href="/employee" className="nav-link">
          Employee
        </Nav.Link>
      </Nav>
    </Navbar>
    <RouterProvider router={router} />
  </React.StrictMode>
);
