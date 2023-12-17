import React from 'react';

const AlumniTableRow = ({ alumni }) => {
  return (
    <tr>
      <td>{alumni.name}</td>
      <td>{alumni.position}</td>
      <td>{alumni.joiningDate}</td>
      <td>{alumni.email}</td>
      {/* Add more columns based on your student data */}
    </tr>
  );
};

export default AlumniTableRow;
