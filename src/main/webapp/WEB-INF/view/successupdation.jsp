<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deletion Successful</title>

<style type="text/css">
* {
	margin: 0;
	padding: 0%;
	text-align: center;
	box-sizing: border-box;
	font-family: cursive;
}

body{
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
	margin-right: 18px;
}
</style>

</head>
<body>
	<div class="success">
		Confirmation message : ${success} <br><br> 
	</div>
</body>
</html>