package com.yash.ems.exception;

/**
 * handle Exception by user define;
 * if Employee ID not found then this exception accured;
 *@author kushagra.sharma
 *
 */
public class EmployeeIdNotFoundException  extends Exception
{

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;

	public EmployeeIdNotFoundException(String msg) 
	{
		super(msg);
	}

}
