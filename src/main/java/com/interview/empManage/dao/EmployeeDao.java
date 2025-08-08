package com.interview.empManage.dao;

import java.util.List;

import com.interview.empManage.persistances.Employees;

public interface EmployeeDao {

	List<Employees> getAllEmployees();

	void saveOrUpdate(Employees employee);

	void deleteEmployee(int empId);
}
