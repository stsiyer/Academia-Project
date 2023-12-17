import axios from "axios";

const api = {
    login: async (username, password) => {
      const body = {username: username, password: password}
      const response = await axios.post(`http://localhost:8080/api/login`, body);
      if (response.data.status === 200) {
        return true;
      }
      return false;
    },
    getDropdownData: async () => {
      // Make a request to your Java backend to fetch placement data
      const response = await axios.get(`http://localhost:8080/api/placements/details`);
      return response.data.data;
    },
    getPlacementHistory: async (filter, setStudents, setAlimnis) => {
      setAlimnis([])
      const body = {organisation: filter.organization, domain: filter.domain, year: filter.year}
      const response = await axios.post(`http://localhost:8080/api/placements/history`, body);
      setStudents(response.data.data);
      if (filter.organization > 0)
      {
        const alumniRes = await axios.get('http://localhost:8080/api/placements/organisations/'+filter.organization+'/alumni', body);
        setAlimnis(alumniRes.data.data);       
      }
      return response.data.data;
    },
  };
  
  export default api;
  