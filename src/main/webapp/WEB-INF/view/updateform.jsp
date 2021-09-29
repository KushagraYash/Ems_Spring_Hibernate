<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Registration Form</title>



<style>
.form-container {
	position: fixed;
	width: 325px;
	height: 400px;
	margin-left: 20px;
	margin-top: 20px;
	margin-bottom: 20px;
	padding: 20px;
	background: #06beb6; /* fallback for old browsers */
	background: -webkit-linear-gradient(to top, #48b1bf, #06beb6);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to top, #48b1bf, #06beb6);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	color: white;
	border: 1px solid #ddd;
	border-radius: 4px;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: rgba(8, 236, 236, 0.267);
}

.floatRight {
	float: right;
	margin-right: 18px;
}

.has-error {
	color: yellow;
}

.success {
	position: fixed;
	width: 325px;
	height: 400px;
	margin-left: 20px;
	margin-top: 20px;
	margin-bottom: 20px;
	padding: 20px;
	background-color: teal;
	color: white;
	border: 1px solid #ddd;
	border-radius: 4px;
}

.row, h1 {
	text-align: center;
}

.row {
	padding: 4px;
}
</style>

</head>
<body>
	<div class="form-container">
		<h1>Updation Form</h1>
		<form:form method="POST" modelAttribute="employee"
			class="form-horizontal">
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="name">Id</label>
					<div class="col-md-7">
						<form:input type="number" path="id" id="id"
							class="form-control input-sm" value="${employee.id}" />
						<div class="has-error">
							<form:errors path="name" class="help-inline" />
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="name">Name</label>
					<div class="col-md-7">
						<form:input type="text" path="name" id="name"
							class="form-control input-sm" value="${employee.name}" />
						<div class="has-error">
							<form:errors path="name" class="help-inline" />
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="salary">Salary</label>
					<div class="col-md-7">
						<form:input type="number" path="salary" id="salary"
							class="form-control input-sm" value="${employee.salary}" />
						<div class="has-error">
							<form:errors path="salary" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="section">Department</label>
					<div class="col-md-7" class="form-control input-sm">
						<form:radiobuttons path="department" items="${department}" />
						<div class="has-error">
							<form:errors path="department" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="email">Designation</label>
					<div class="col-md-7">
						<form:input type="text" path="designation" id="designation"
							class="form-control input-sm" value="${employee.designation}" />
						<div class="has-error">
							<form:errors path="designation" class="help-inline" />
						</div>
					</div>
				</div>
			</div>


			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="address">Address</label>
					<div class="col-md-7">
						<form:select path="address" id="address"
							class="form-control input-sm">
							<form:option value="">Select Country</form:option>
							<form:options items="${countries}" />
						</form:select>
						<div class="has-error">
							<form:errors path="address" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-actions floatRight">
					<input type="submit" value="Update" class="btn btn-primary btn-sm">
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>