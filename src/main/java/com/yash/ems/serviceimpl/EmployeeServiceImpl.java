package com.yash.ems.serviceimpl;

import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transaction;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sun.tools.sjavac.Log;
import com.yash.ems.exception.EmployeeIdNotFoundException;
import com.yash.ems.exception.InvalidNameException;
import com.yash.ems.model.Employee;
import com.yash.ems.service.EmployeeService;
import com.yash.ems.util.HibernateUtil;

@SuppressWarnings("restriction")
@Service
public class EmployeeServiceImpl implements EmployeeService
{
	@Autowired

	private HibernateUtil hiber;

//	-------------------------------BY ID-------------------------------------

	@Override
	public Employee getEmployeeById(int id) throws EmployeeIdNotFoundException {
		Session session = hiber.getSession();
		Employee e = session.get(Employee.class, id);
		return e;
	}
	
//	-------------------------------BY NAME-------------------------------------

	@Override
	public Employee getEmployeeByName(String name) throws InvalidNameException {
		
		Session session = hiber.getSession();
		Transaction t=(Transaction) session.beginTransaction();
		
		String hq1 = "FROM EMPLOYEE E WHERE E.name = :empname";
		Query query1 = session.createQuery(hiber);
		query1.setParameter("empname", name);
		List<Employee> elist = query1.getResultList();
		Employee e = elist.get(0);
		t.commit();
		Log.info("Successfully found....");
		session.close();
		
		return e;
		
	}
//--------------------------------------------------------------------------------
	
}
