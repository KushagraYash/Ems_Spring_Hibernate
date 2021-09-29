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
	background-color: rgba(8, 236, 236, 0.267);
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
	padding: 2px;
	margin-right: 10px;
}
</style>


</head>
<body>
	<div class="success">
		<form:form method="POST" modelAttribute="employee"
			class="form-horizontal">
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="name">Enter Id</label>
					<div class="col-md-7">
						<form:input type="number" path="id" id="id"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="name" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-actions floatRight">
					<input type="submit" value="Delete" class="btn btn-primary btn-sm">
				</div>
			</div>

		</form:form>
	</div>
</body>
</html>