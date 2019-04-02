<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log In Page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/loginStyle.css" />">
</head>
<body>
<div class = "login">
     <form action="loginVerify" method="post">
	   <h2>  Login </h2>
	   
	   <input type = "text" name = "username" placeholder = "Enter Your user name">
	   <input type = "password" name = "password" placeholder = "Enter your Password">
	    <br>
		<br>
	  <input type = "Submit"  value = "Login Now">
	  <p>If you are not complete the registration, to registration click registration.</p>
	  <a href="registrationform" style="color: white; text-decoration: none; font-size: 15px; float: right;; margin-right: 10px;"> Registration </a>
	 </form>
</div>
</body>
</html>