<%@page import="view.droneStringView"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
<meta charset="UTF-8">
<title>Registration</title>
<link rel="stylesheets" href="register.css"
	href="./stylesheets/register.css" />

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 10px;
	background: #beb8c7;
}

.container {
	max-width: 700px;
	width: 100%;
	background-color: #fff;
	padding: 25px 30px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

.title {
	font-size: 25px;
	font-weight: 500;
	position: relative;
}

.user-details {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	margin: 20px 0 12px 0;
}

.Signupinput {
	margin-bottom: 15px;
	width: 48%;
}

.Signupinput span.details {
	display: block;
	font-weight: 500;
	margin-bottom: 5px;
}

.user-details .Signupinput input {
	height: 45px;
	width: 100%;
	outline: none;
	border: none;
	font-size: 16px;
	font-weight: 500;
	border-bottom: 2px solid rgba(0, 0, 0, 0.2);
	transition: all 0.3s ease;
}

.gender-title {
	font-size: 20px;
	font-weight: 500;
}

.category {
	display: flex;
	width: 80%;
	margin: 14px 0;
	justify-content: space-between;
}

.category label {
	display: flex;
	align-items: center;
	cursor: pointer;
}

.dot {
	height: 18px;
	width: 18px;
	border-radius: 50%;
	margin-right: 10px;
	background: #d9d9d9;
	border: 5px solid transparent;
	transition: all 0.3s ease;
}

.button {
	height: 45px;
	margin: 35px 0;
}

.button input {
	height: 100%;
	width: 100%;
	border-radius: 5px;
	border: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 1px;
	cursor: pointer;
	transition: all 0.3s ease;
	background: #7d2ae8;
}
</style>
<link rel="stylesheets" type="text/css" href="stylesheet/register.css" />
</head>
<body>
	<div class="container">
		<h1>Registration Form</h1>
		<form action="${pageContext.request.contextPath}/registerServlet"
			method="post">
			
				<div class="title">Registration</div>
			
				<div class="user-details">
					<div class="Signupinput">
						<span class="details">Full Name</span> <input type="text"
							name="fullName" placeholder="Enter your name" required>
					</div>
					<div class="Signupinput">
						<span class="details">username</span> <input type="text"
							name="userName" placeholder="Enter your username" required>
					</div>
					<div class="Signupinput">
						<span class="details">Email</span> <input type="email"
							name="email" placeholder="Enter your email" required>
					</div>
					<div class="Signupinput">
						<span class="details">Phone Number</span> <input type="text"
							name="phoneNumber" placeholder="Enter your number" required>
					</div>
					<div class="Signupinput"
						style="margin-bottom: 15px; border-bottom: 2px solid #ccc;">

						<span class="details">Gender</span> <select name="gender" required
							style="padding: 8px 70px 5px 0px; border: none;">

							<option value="" disabled selected>Select your gender</option>

							<option value="male">Male</option>

							<option value="female">Female</option>

							<option value="other">Other</option>

						</select>

					</div>


					<div class="Signupinput">
						<span class="details">Province</span> <input type="text"
							name="province" placeholder="Enter your Province" required>
					</div>
					<div class="Signupinput">
						<span class="details">City</span> <input type="text" name="city"
							name="city" placeholder="Enter your City" required>
					</div>
					<div class="Signupinput">
						<span class="details">State</span> <input type="text"
							name="street" placeholder="Enter your State" required>
					</div>
					<div class="Signupinput">
						<span class="details">Password</span> <input type="password"
							name="password" placeholder="Enter your password" required>
					</div>
					<div class="Signupinput">
						<span class="details">Confirm Password</span> <input type="password" 
					name="retypePassword" placeholder="Confirm your password" required>
					</div>
				</div>
				<div class="button">
					<input type="submit" value="Register">
				</div>
				<div class="text sign-up-text">
					Already have an account?<a href="Loginnew.html">Login now</a>
				</div>
			</form>
		<%
		String errMsg = (String) request.getAttribute(droneStringView.MESSAGE_ERROR);
		String successMsg = (String) request.getAttribute(droneStringView.MESSAGE_SUCCESS);

		if (errMsg != null) {
			// print
		%>
		<h4 class="error-msg">
			<%
			out.println(errMsg);
			%>
		</h4>
		<%
		}

		if (successMsg != null) {
		// print
		%>
		<h4 class="success-msg">
			<%
			out.println(successMsg);
			%>
		</h4>
		<%
		}
		%>
	</div>
</body>

</html>