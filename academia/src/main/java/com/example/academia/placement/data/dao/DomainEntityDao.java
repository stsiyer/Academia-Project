package com.example.academia.placement.data.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.academia.placement.data.entity.DomainEntity;

@Repository
public interface DomainEntityDao extends JpaRepository<DomainEntity, Integer> {
  
}
