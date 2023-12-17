import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import api from '../services/api';
import './Login.css'; // Import your CSS file

const Login = ({setUserLoggedin}) => {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const navigate = useNavigate();

  const handleLogin = async () => {
    try {
      if (username.length=== 0 || password.length === 0)
      {
        alert('Please Enter a valid Username and Password');
        return;
      }
      const response = await api.login(username, password);
      if (response) {
        setUserLoggedin(true);
        navigate('/studentlist');
      } else {
        alert('Authentication failed');
      }
    } catch (error) {
      console.error('Error during login:', error);
      alert('Authentication failed');
    }
  };

  return (
    <div className='box'>
      <div className="login-container">
      <h2>Login</h2>
      <label>
        Username:
        <input type="text" value={username} onChange={(e) => setUsername(e.target.value)}/>
      </label>
      <br />
      <label>
        Password:
        <input type="password" value={password} onChange={(e) => setPassword(e.target.value)}/>
      </label>
      <br />
      <button className="login-button" onClick={handleLogin}>Login</button>
    </div>
    </div>
  );
};

export default Login;
