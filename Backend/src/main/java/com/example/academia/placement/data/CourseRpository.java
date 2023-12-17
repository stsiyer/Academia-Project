package com.example.academia.placement.data;

import java.util.List;

import org.springframework.stereotype.Component;

import com.example.academia.placement.data.dao.DomainEntityDao;
import com.example.academia.placement.data.entity.DomainEntity;
import com.example.academia.placement.domain.model.Domain;

import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class CourseRpository {
    private final DomainEntityDao domainEntityDao;

    public List<Domain> getAllDomains() {
        return mapToDomains(domainEntityDao.findAll());
    }

    public Domain getDomainById(int id) {
        return mapToDomainDomain(getDomainEntityById(id));
    }

    private DomainEntity getDomainEntityById(int id) {
        return domainEntityDao.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Domain not found with id: " + id));
    }

    private Domain mapToDomainDomain(DomainEntity entity) {
        return Domain.builder()
                .id(entity.getId())
                .program(entity.getProgram())
                .batch(entity.getBatch())
                .capacity(entity.getCapacity())
                .qualification(entity.getQualification())
                .build();
    }

    private List<Domain> mapToDomains(List<DomainEntity> entities) {
        return entities.stream().map(this::mapToDomainDomain).toList();
    }
}
