package com.sre.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sre.api.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {

}
