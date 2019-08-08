package com.del.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.del.model.Employee;



public interface EmployeeDao extends JpaRepository<Employee, Integer> {

}
