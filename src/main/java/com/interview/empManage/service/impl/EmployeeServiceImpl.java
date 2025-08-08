package com.interview.empManage.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.interview.empManage.dao.EmployeeDao;
import com.interview.empManage.persistances.Employees;
import com.interview.empManage.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeDao employeeDao;

    //@Override for java version 8
    public List<Employees> fetchAllEmployees() {
        return employeeDao.getAllEmployees();
    }

	public void saveEmployee(Employees employee) {
		employeeDao.saveOrUpdate(employee);
		
	}

	public void deleteEmployee(int empId) {
		employeeDao.deleteEmployee(empId);
		
	}
}
