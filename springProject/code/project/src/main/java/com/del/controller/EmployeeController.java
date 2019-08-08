package com.del.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.del.model.Employee;
import com.del.service.EmployeeService;


@RestController
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	
	
	@GetMapping("/")
	public ModelAndView findAll() {
		List<Employee> employeesList = employeeService.findAll();
		ModelAndView modelAndView = new ModelAndView("List");
		modelAndView.addObject("EMPLOYEELIST", employeesList);
		return modelAndView;
	}
	
	

	@PostMapping("/validateUser")
	public ModelAndView validateUser(@RequestParam String id, @RequestParam String pass) {
		ModelAndView modelAndView;
		
		if (id.equals("101") && pass.equals("pass")) {
			modelAndView = new ModelAndView("home");
		} else {
			modelAndView = new ModelAndView("index");
		}
		return modelAndView;

	}

	@PostMapping("/addemployee")
	public ModelAndView addEmployee(@RequestParam Integer id, @RequestParam String name, @RequestParam String location,
			@RequestParam String role, @RequestParam Integer salary) {
		Employee e = new Employee();
		e.setId(id);
		e.setName(name);
		e.setLocation(location);
		e.setRole(role);
		e.setSalary(salary);
		System.out.println(e);

		employeeService.save(e);
		List<Employee> employeeList = employeeService.findAll();
		ModelAndView modelAndView = new ModelAndView("List");
		modelAndView.addObject("EMPLOYEELIST", employeeList);
		return modelAndView;

	}
	

	@PostMapping("/save")
	public ModelAndView save(@RequestParam Integer id, @RequestParam String name, @RequestParam String location,@RequestParam String role,@RequestParam Integer salary) 
	{
		Employee employee=new Employee();
		employee.setId(id);
		employee.setName(name);
		employee.setLocation(location);
		employee.setRole(role);
		employee.setSalary(salary);
		
		employeeService.save(employee);
		List<Employee> employeesList = employeeService.findAll();
		ModelAndView modelAndView = new ModelAndView("List");
		modelAndView.addObject("EMPLOYEELIST", employeesList);
		return modelAndView;
	}
	
	@PostMapping("/updateEmployee")
	public ModelAndView modify(@RequestParam Integer id) {
		Employee employee = employeeService.findById(id);
		ModelAndView modelAndView = new ModelAndView("UpdateEmployee");
		modelAndView.addObject("Employee", employee);
		return modelAndView;
	}

	@GetMapping("/deleteEmployee")
	public ModelAndView delete(@RequestParam Integer id) {

		Employee employee = employeeService.findById(id);
		employeeService.delete(employee);
		List<Employee> employeesList = employeeService.findAll();
		ModelAndView modelAndView = new ModelAndView("List");
		modelAndView.addObject("EMPLOYEELIST", employeesList);
		return modelAndView;
	}
	@PostMapping("/retrieveEmployee")
	public ModelAndView retrieve(@RequestParam Integer id) {
		Employee employee = employeeService.findById(id);
		ModelAndView modelAndView = new ModelAndView("EmployeeInfo");
		modelAndView.addObject("Employee", employee);
		return modelAndView;
	}

}