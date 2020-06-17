package com.proc.kart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proc.kart.model.Employee;
  
@Controller
@RequestMapping(value = "/json")
public class JsonRequestController {
 
	@RequestMapping(value = "/postEmployee", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody Employee postEmployeeData(@RequestBody Employee employee) {
 System.out.println("Jai Ram G ki!");
		double newSalary = employee.getSalary() + 1000;
		employee.setSalary(newSalary);
 
		return employee;
	}
	
	@RequestMapping(value = "/addEmployee")
	public String showEmployeePage(){
		return "addEmployee";
	}
			
}