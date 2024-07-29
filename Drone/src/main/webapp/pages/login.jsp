<%@page import="view.droneStringView"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String contextPath = request.getContextPath();
String errMsg = (String) request.getAttribute(droneStringView.MESSAGE_ERROR);
String successMsg = (String) request.getAttribute(droneStringView.MESSAGE_SUCCESS);
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="Login.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

body {
	display: flex;
	align-items: center;
	justify-content: center;
	background: #beb8c7;
	padding: 100px;
}

.container {
	max-width: 400px;
	width: 100%;
	background: #fff;
	padding: 40px 30px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

.title {
	font-size: 24px;
	font-weight: 500;
	color: #333;
	position: relative;
}

.title:before {
	content: '';
	position: absolute;
	left: 0;
	bottom: 0;
	height: 3px;
	width: 25px;
	background: #7d2ae8;
}

.logininput {
	display: flex;
	align-items: center;
	height: 50px;
	width: 100%;
	margin: 10px 0;
	position: relative;
}

.logininput input {
	height: 100%;
	width: 100%;
	outline: none;
	border: none;
	padding: 0 30px;
	font-size: 16px;
	font-weight: 500;
	border-bottom: 2px solid rgba(0, 0, 0, 0.2);
	transition: all 0.3s ease;
}

.logininput i {
	position: absolute;
	color: #7d2ae8;
	font-size: 17px;
}

.text a:hover {
	text-decoration: underline;
}

.button {
	margin-top: 40px;
}

.button input {
	color: #fff;
	background: #7d2ae8;
	border-radius: 6px;
	cursor: pointer;
}
</style>

<body>
	<%
	if (errMsg != null) {
	%>
	<p class="error-msg">
		<%
		out.println(errMsg);
		%>
	</p>
	<%
	}
	%>
	<div class="container">
		<div class="login-form">
			<div class="title">Login</div>
			<form action="${pageContext.request.contextPath}/LoginServlet"
				method="post">
				<div class="input-boxes">
					<div class="logininput">
						<i class="fas fa-envelope"></i> <input type="text" name="userName"
							placeholder="Enter your userName" required>
					</div>
					<div class="logininput">
						<i class="fas fa-lock"></i> <input type="password" name="password"
							placeholder="Enter your password" required>
					</div>
					<div class="text">
						<a href="#">Forgot password?</a>
					</div>
					<div class="button input-box">
						<input type="submit" value="Submit">
					</div>
					<div class="text sign-up-text">
						Don't have an account? <label for="flip">Sigup now</label>
					</div>

				</div>
			</form>
		</div>


	</div>
</body>

</html>