package com.yash.ems.service;


import com.yash.ems.exception.EmployeeIdNotFoundException;
import com.yash.ems.exception.InvalidNameException;
import com.yash.ems.model.Employee;

/**
 * EmployeeService Interface for declaring additional methods
 * 
 *
 */
public interface EmployeeService {
	/**
	 * 
	 * @param id
	 * @return
	 * @throws EmployeeIdNotFoundException
	 */
	public Employee getEmployeeById(int id) throws EmployeeIdNotFoundException;

	/**
	 * 
	 * @param name
	 * @return
	 * @throws InvalidNameException
	 */

	public Employee getEmployeeByName(String name) throws InvalidNameException;

}
