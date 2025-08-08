package com.interview.empManage.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.interview.empManage.persistances.Employees;
import com.interview.empManage.service.EmployeeService;
import com.opensymphony.xwork2.ActionSupport;

@Component
@Scope("prototype")
public class MainAction extends ActionSupport {

	private List<Employees> employeeList;
	private Employees employee;
	private int empId;

	@Autowired
	private EmployeeService employeeService;

	public String execute() {
		System.out.println("---------------------------------");
		return SUCCESS;
	}

	public String getAllEmployees() {
		employeeList = employeeService.fetchAllEmployees();
		employee = new Employees();
		return SUCCESS;
	}

	public String addEmployee() {
		 employeeService.saveEmployee(employee);
	        return SUCCESS;
	}
	
	public String updateEmployee() {
		 employeeService.saveEmployee(employee);
	        return SUCCESS;
	}
	
	public String deleteEmployee() {
		 employeeService.deleteEmployee(empId);
	        return SUCCESS;
	}

	/* getter and setters */
	public List<Employees> getEmployeeList() {
		return employeeList;
	}

	public void setEmployeeList(List<Employees> employeeList) {
		this.employeeList = employeeList;
	}

	public Employees getEmployee() {
		return employee;
	}

	public void setEmployee(Employees employee) {
		this.employee = employee;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

}
