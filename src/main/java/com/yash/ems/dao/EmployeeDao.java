package com.yash.ems.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.yash.ems.model.Employee;

/**
 * Employee Interface for declaring methods of CRUD (CREATE READ UPDATE DELETE)
 * @author kushagra.sharma
 */

@Repository
public interface EmployeeDao {
	/*
	 *  save method is used for inserting records into table employee
	 */
	public boolean save(Employee employee);

	/*
	 * findAll method is used for fetching records from Employee table
	 */
	public List<Employee> findAll();

	/*
	 *  update method is used for updating records into table employee
	 */
	public boolean update(Employee employee);

	/*
	 *  delete method is used for deleting records from employee table
	 */
	
	public boolean delete(int id);
}
