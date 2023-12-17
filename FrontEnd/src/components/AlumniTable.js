import React from 'react';
import AlumniTableRow from './AlumniTableRow';

const AlumniTable = ({ alumnis }) => {
  return (
    <div className='table_box'>
      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Position</th>
            <th>Joining Date</th>
            <th>Email</th>
            {/* Add more columns based on your student data */}
          </tr>
        </thead>
        <tbody>
          {alumnis.map((alumni) => (
            <AlumniTableRow key={alumni.email} alumni={alumni} />
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default AlumniTable;
