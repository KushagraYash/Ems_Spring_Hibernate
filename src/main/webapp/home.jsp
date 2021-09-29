<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Home page</title>


<style type="text/css">
* {
	margin: 0;
	padding: 0%;
	box-sizing: border-box;
	font-family: cursive;
}

.center {
	display: flex;
	justify-content: center;
	align-items: center;
}

.main {
	height: 100vh;
}

a {
	text-decoration: none;
	color: #001f3f;
}

.box {
	width: 325px;
	height: 325px;
	box-shadow: 0 10px 20px rgba(50, 100, 100, 60);
	border-radius: 23px;
	flex-direction: column;
	color: #001f3f;
	position: relative;
}

.user_name {
	margin-bottom: 5px;
	font-size: 2rem;
}

.skill {
	color: #001f3f;
	text-align: center;
}

.left_container p {
	margin-bottom: 15px;
	font-size: 1.2rem;
	text-align: center;
}

.skills div {
	display: inline-block;
	color: rgb(155, 155, 155);
	border: 1px solid rgb(155, 155, 155);
	padding: 5px 10px;
	font-size: .9rem;
	margin: 4px 4px 4px 8px;
}

#colori {
	background: #6D6027; /* fallback for old browsers */
	background: -webkit-linear-gradient(to bottom, #D3CBB8, #6D6027);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to bottom, #D3CBB8, #6D6027);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

body {
	background-color: #F4D03F;
	background-image: linear-gradient(132deg, #F4D03F 0%, #16A085 100%);
}
</style>

</head>

<body>


	<div class="main center">
		<div id="colori" class="box center">
			<!--
			<img src="." alt="YASH TECHNOLOGIES">
    image -->
			<div>
				<p class="user_name">Employee</p>
				<p class="skill">Management system</p>
				<br>

				<div class="success">
					<div class="skills"></div>

				</div>
			</div>
			<div class="arr_continer center">
				<i class="fas fa-arrow-right"></i>
			</div>
			<div class="left_container off">
				<p>Operations</p>
				<div class="skills">
					<div>
						<a href="save">Registration </a>
					</div>
					<div>

						<a href="list">Employees </a>
					</div>
					<div>
						<a href="update">Update </a>
					</div>
					<div>

						<a href="delete">Delete </a>
					</div>
					<div>

						<a href="searchbyid">byId </a>
					</div>

					<div>
						<a href="searchbyname">byName</a>
					</div>
				</div>


			</div>
		</div>
	</div>

</body>

</html>