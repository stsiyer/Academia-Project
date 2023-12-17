import React from 'react';
import StudentTableRow from './StudentTableRow';

const StudentTable = ({ students }) => {
  return (
    <div className='table_box'>
      <table>
        <thead>
          <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Department</th>
            <th>Year</th>
            <th>Email</th>
            <th>Organization</th>
            <th>Status</th>
            {/* Add more columns based on your student data */}
          </tr>
        </thead>
        <tbody>
          {students.map((student) => (
            <StudentTableRow key={student.rollNo} student={student} />
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default StudentTable;
