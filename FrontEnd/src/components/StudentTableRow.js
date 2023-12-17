import React from 'react';

const StudentTableRow = ({ student }) => {
  return (
    <tr>
      <td>{student.rollNo}</td>
      <td>{student.studentName}</td>
      <td>{student.domainName}</td>
      <td>{student.year}</td>
      <td>{student.email}</td>
      <td>{student.organisationName}</td>
      <td>{student.status}</td>
      {/* Add more columns based on your student data */}
    </tr>
  );
};

export default StudentTableRow;
