import React from 'react';
import { BrowserRouter as Router, Route, Routes, Navigate } from 'react-router-dom';
import Login from './components/Login';
import StudentList from './components/StudentList';
import { useState } from 'react';
import './App.css';

const App = () => {
  const [userLoggedin, setUserLoggedin] = useState(false);

  const PrivateRoute = ({ element }) => {
    return userLoggedin ? element : <Navigate to="/" />;
  };

  return (
    <Router>
      <Routes>
        <Route path="/" element={<Login setUserLoggedin={setUserLoggedin} />} />
        <Route
          path="/studentlist"
          element={
            <PrivateRoute
              element={<StudentList />}
              path="/studentlist"
            />
          }
        />
      </Routes>
    </Router>
  );
};

export default App;
