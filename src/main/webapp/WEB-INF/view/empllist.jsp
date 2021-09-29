<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee list</title>

<style type="text/css">
* {
	margin: 0;
	padding: 0%;
	font-family: cursive;
}

.success {
	width: 50%;
	margin-left: 50px;
	margin-top: 20px;
	padding: 20px;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #A9C9FF;
	background-image: linear-gradient(180deg, #A9C9FF 0%, #FFBBEC 100%);
	background-repeat: no-repeat;
}

table {
	width: 400px;
	height: 200px;
	margin-left: 20px;
	margin-top: 20px;
	margin-bottom: 20px;
	background: #06beb6; /* fallback for old browsers */
	background: -webkit-linear-gradient(to top, #48b1bf, #06beb6);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to top, #48b1bf, #06beb6);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	color: black;
	border: 1px solid #ddd;
	border-radius: 4px;
}

td, tr, th {
	padding: 10px;
	color: #FFFFF0;
}
</style>

</head>
<body>
	<div class="success">
		<div align="center">
			<table border="1" cellpadding="5">
				<caption>
					<h2>List of employees</h2>
				</caption>
				<tr>
					<th>Id</th>
					<th id="name">Name</th>
					<th>Salary</th>
					<th>Department</th>
					<th>Designation</th>
					<th>Address</th>
				</tr>
				<c:forEach var="emp" items="${emplist}">
					<tr>
						<td><c:out value="${emp.id}" /></td>
						<td><c:out value="${emp.name}" /></td>
						<td><c:out value="${emp.salary}" /></td>
						<td><c:out value="${emp.department}" /></td>
						<td><c:out value="${emp.designation}" /></td>
						<td><c:out value="${emp.address}" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>