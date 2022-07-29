package com.sre.api.impl;

import org.springframework.stereotype.Service;

import com.sre.api.model.Employee;
import com.sre.api.repository.EmployeeRepository;
import com.sre.api.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	
	private EmployeeRepository employeeRepository ;

	public EmployeeServiceImpl(EmployeeRepository employeeRepository) {
		super();
		this.employeeRepository = employeeRepository;
	}



	@Override
	public Employee SaveEmployee(Employee employee) {
		return employeeRepository.save(employee);
	}
	

}
