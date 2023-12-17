package com.example.academia.placement;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.academia.placement.data.CourseRpository;
import com.example.academia.placement.domain.model.Domain;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CourseService {
    private final CourseRpository courseRepository;
    

    public List<Domain> getAllDomains() {
        return courseRepository.getAllDomains();
    }

    public Domain getDomainById(int id) {
        return courseRepository.getDomainById(id);
    }
}
