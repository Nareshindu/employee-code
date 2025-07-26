package com.unibrain.service.impl;

import com.unibrain.entity.EmployeesDetails;
import com.unibrain.repository.EmployeesDetailsRepository;
import com.unibrain.service.EmployeesDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeesDetailsServiceImpl implements EmployeesDetailsService {

    @Autowired
    private EmployeesDetailsRepository repository;

    @Override
    public List<EmployeesDetails> getAllEmployees() {
        return repository.findAll();
    }

    @Override
    public EmployeesDetails saveEmployee(EmployeesDetails employee) {
        return repository.save(employee);
    }

    @Override
    public EmployeesDetails getEmployeeById(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public EmployeesDetails getEmployeeByEmployeeId(String employeeId) {
        return repository.findByEmployeeId(employeeId);
    }

    @Override
    public void deleteEmployee(int id) {
        repository.deleteById(id);
    }
}
