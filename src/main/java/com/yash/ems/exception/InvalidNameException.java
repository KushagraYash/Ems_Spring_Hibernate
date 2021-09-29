package com.yash.ems.exception;
/**
 * handle Exception by user define;
 * if Employee Name not  and invalid input taken by user  then this exception accured;
 * @author kushagra.sharma
 *
 */

public class InvalidNameException extends Exception
{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2285786816684015837L;

	public InvalidNameException(String msg) 
	{
		super(msg);
	}
}
