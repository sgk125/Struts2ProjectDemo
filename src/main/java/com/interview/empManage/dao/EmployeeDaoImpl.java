package com.interview.empManage.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.interview.empManage.persistances.Employees;

@Repository
@Transactional
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
	private SessionFactory sessionFactory;

	public List<Employees> getAllEmployees() {
		Session session = sessionFactory.getCurrentSession();
		List<Employees> list = session.createQuery("from Employees").list();
		return list;
	}

	public void saveOrUpdate(Employees employee) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(employee);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteEmployee(int empId) {

		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from Employees emp where emp.id=:empId");
			query.setParameter("empId", empId);
			Employees employee = (Employees) query.uniqueResult();

			if (employee != null) {
				session.delete(employee);
				System.out.println("Employee deleted successfully");
			} else {
				System.out.println("Employee not found with ID: " + empId);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
