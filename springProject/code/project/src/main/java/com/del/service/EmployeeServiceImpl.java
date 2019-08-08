package com.del.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.del.dao.EmployeeDao;
import com.del.model.Employee;

@Service("EmployeeService")

public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;

	public List<Employee> findAll() {
		List<Employee> employeelist = employeeDao.findAll();
		return employeelist;
	}

	public void save(Employee employee) {
		employeeDao.save(employee);

	}

	public void delete(Employee employee) {
		employeeDao.delete(employee);
	}

	public Employee findById(Integer id) {

		Employee employee = employeeDao.findById(id).get();
		return employee;

	}

}
