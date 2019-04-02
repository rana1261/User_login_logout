<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
</head>
<body>
	<div class="wrap">
		<form action="save" method="post">
			<h2>Registration From</h2>
			<input type="text" name="name" placeholder="Enter Your name" required>
			<input type="email" name="email" placeholder="Enter Your email" required> 
			<input type="text" name="username" placeholder="Enter Your user name" required>
			<input type="password" name="password" placeholder="Password" required>
			<input type="password" name="cpassword" placeholder="Confirm password" required>
			<input type="text" name="address" placeholder="Enter your address (Ex:- village , upzila , Thana , District)" required>
			<br> 
			<br> 
			<input type="submit" value="Submit Now">
			<p>If you have completed your Registration. please,click below for login.</p>
			<a href="login" style="color: white; text-decoration: none; font-size: 15px; float: right;; margin-right: 10px;">Log In </a>
		</form>
	</div>
</body>
</html>