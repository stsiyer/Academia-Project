package com.example.academia.student.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentEntityDao extends JpaRepository<StudentEntity, Integer> {
    
}
