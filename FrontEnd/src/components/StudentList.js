import React, { useState, useEffect } from 'react';
import './StudentList.css';
import StudentTable from './StudentTable'; 
import AlumniTable from './AlumniTable';
import api from '../services/api';

const StudentList = () => {
  const initialSearchCriteria = {
    organization: '',
    year: '',
    domain: ''
  };

  const [students, setStudents] = useState([]);
  const [alumnis, setAlimnis] = useState([]);
  const [searchCriteria, setSearchCriteria] = useState(initialSearchCriteria);

  const [organizations, setOrganizations] = useState([]);
  const [years, setYears] = useState([]);
  const [domains, setDomains] = useState([]);

  useEffect(() => {
    const fetchDropdownData = async () => {
      try {
        // Fetch organizations, years, and domains from API
        const response = await api.getDropdownData();
        await api.getPlacementHistory(searchCriteria, setStudents, setAlimnis);
        const orgList = response.organisations.map(org => ({ id: org.id, name: org.name }));
        const programList = response.domains.map(domain => ({ id: domain.id, program: domain.program }));
        const yearList = response.years;

        setOrganizations(orgList);
        setYears(yearList);
        setDomains(programList);
      } catch (error) {
        console.error('Error fetching dropdown data', error);
      }
    };

    fetchDropdownData();
  }, []);

  const handleSearch = async() => {
    await api.getPlacementHistory(searchCriteria, setStudents, setAlimnis);
  };
  

  const handleReset = async () => {
    // Reset all search criteria to their initial values
    setSearchCriteria(initialSearchCriteria);
    await api.getPlacementHistory(initialSearchCriteria, setStudents, setAlimnis);
    setAlimnis([])
  };

  return (
    <div className='student-list-container'>
      <h2>Placement History</h2>
      <div>
        <label>
          Organization:
          <select
            value={searchCriteria.organization}
            onChange={(e) => setSearchCriteria({ ...searchCriteria, organization: e.target.value })}
          >
            <option value="">Select Organization</option>
            {organizations.map((org) => (
              <option key={org.id} value={org.id}>
                {org.name}
              </option>
            ))}
          </select>
        </label>
        <label>
          Year:
          <select
            value={searchCriteria.year}
            onChange={(e) => setSearchCriteria({ ...searchCriteria, year: e.target.value })}
          >
            <option value="">Select Year</option>
            {years.map((year) => (
              <option key={year} value={year}>
                {year}
              </option>
            ))}
          </select>
        </label>
        <label>
          Domain:
          <select
            value={searchCriteria.domain}
            onChange={(e) => setSearchCriteria({ ...searchCriteria, domain: e.target.value })}
          >
            <option value="">Select Domain</option>
            {domains.map((domain) => (
              <option key={domain.id} value={domain.id}>
                {domain.program}
              </option>
            ))}
          </select>
        </label>
        <button onClick={handleSearch}>Search</button>
        <span style={{ marginRight: '10px' }}></span>
        <button onClick={handleReset}>Reset</button>
      </div>
      <h3 className='head-4'>Student List</h3>
      <StudentTable students={students} />
      {alumnis.length !== 0 && <h3 className='head-4'>Working Alumni</h3> }
      {alumnis.length !== 0 && <AlumniTable alumnis={alumnis} />}
    </div>
  );
};

export default StudentList;
