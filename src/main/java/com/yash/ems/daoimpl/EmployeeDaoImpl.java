package com.yash.ems.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.yash.ems.dao.EmployeeDao;
import com.yash.ems.model.Employee;
import com.yash.ems.util.HibernateUtil;
/**
 * 
 * @author kushagra.sharma
 *
 */

@Repository
/**
 *	@Repository
 *marker for any class that fulfils the role or stereotype of a repository (also known as Data Access Object or DAO) 
 *
 */
@Service
public class EmployeeDaoImpl extends HibernateUtil implements EmployeeDao {

	@Autowired

	private HibernateUtil hiber;

	// session.getTransaction().begin();
	@Override
	public boolean save(Employee employee) {
		try {
			Session session = hiber.getSession();
			Transaction t = session.beginTransaction();
			session.save(employee);
			t.commit();
			session.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Employee> findAll() {
		Session session = hiber.getSession();
		Transaction t = session.beginTransaction();
		Query q = session.createQuery("from Employee");
		List<Employee> employee = q.list();
		t.commit();
		session.close();
		return employee;

	}

	@Override
	public boolean update(Employee employee) {
		try {
			Session session = hiber.getSession();
			Transaction t = session.beginTransaction();
			session.update(employee);
			t.commit();
			session.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@SuppressWarnings("removal")
	@Override
	public boolean delete(int id) {
		try {
			Session session = hiber.getSession();
			Transaction t = session.beginTransaction();
			Employee employee = (Employee) session.get(Employee.class, new Integer(id));
			if (null != employee) {
				session.delete(employee);
				t.commit();
				session.close();
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;

	}
}
