import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import CustomerView from './components/CustomerView'
import EmployeeView from './components/EmployeeView'
import './App.css'

function App() {
  const [role, setRole] = useState('customer')
  handleRoleChange = () => {
    if (role==='customer') {
      setRole('employee')
    } else {
      setRole('customer')
    }

  }

  return (
    <div className="App">
      <div class="role-selector">
        <h3>Select a role:</h3>
        <input
          type="radio"
          id="customer-role"
          name="user-role"
          value="customer"
          checked
        />
        <label for="customer-role">Customer</label>
        <input
          type="radio"
          id="employee-role"
          name="user-role"
          value="employee"
          onclick="handleRoleChange()"
        />
        <label for="employee-role">Employee</label>
      </div>
      {role === 'customer' ? <CustomerView/> : <EmployeeView/>}
    </div>
  )
}

export default App
