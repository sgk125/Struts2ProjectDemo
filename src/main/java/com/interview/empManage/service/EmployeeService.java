package com.interview.empManage.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.interview.empManage.persistances.Employees;

public interface EmployeeService {

	List<Employees> fetchAllEmployees();

	void saveEmployee(Employees employee);

	void deleteEmployee(int empId);
}
