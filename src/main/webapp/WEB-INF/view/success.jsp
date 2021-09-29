<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Enrollment Detail Confirmation</title>

<!-- 
<link href="<c:url value='/static/css/custom.css' />" rel="stylesheet"></link>
 -->

<style type="text/css">
* {
	margin: 0;
	padding: 0%;
	text-align: center;
	box-sizing: border-box;
	font-family: cursive;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #FF3CAC;
	background-image: linear-gradient(225deg, #FF3CAC 0%, #784BA0 50%, #2B86C5 100%);
}

.success {
	width: auto;
	height: auto;
	margin-left: 20px;
	margin-top: 20px;
	margin-bottom: 20px;
	padding: 20px;
	background-color: teal;
	color: white;
	border: 1px solid #ddd;
	border-radius: 4px;
}

.floatRight {
	float: right;
	margin-right: 18px;
}
</style>

</head>
<body>
	<div class="success">
		Confirmation message : ${success} <br> <br> Your details: <br>
		<br> Name: ${employee.name} <br> Salary: ${employee.salary}
		<br> Department: ${employee.department} <br> Designation:
		${employee.designation} <br> Address: ${employee.address} <br>

	</div>
</body>
</html>
