package com.del.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.del.model.Employee;

@Service("employeeService")

public interface EmployeeService  {
	
	public List<Employee> findAll();
	
	public void save( Employee employee);
	
	public void delete(Employee employee);
	public  Employee findById(Integer id);
	

	
	
	
	
}

