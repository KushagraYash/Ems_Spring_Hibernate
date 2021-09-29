<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	background-color: #74EBD5;
	background-image: linear-gradient(90deg, #74EBD5 0%, #9FACE6 100%);
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

		<form action="getempbyname">
		
		employee Name
		<input type="text" id="Name" name="Name" />
		<input type="submit" value ="submit" />
		
		</form>
	</div>
</body>
</html>