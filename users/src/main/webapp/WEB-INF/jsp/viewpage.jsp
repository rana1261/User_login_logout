<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>DashBoard</title>
<link rel="stylesheet" href="<c:url value="/resources/css/dashborad.css" />">

</head>
<body>
 <div class="header">
        
        <div class="header-right">
            <a href="registrationform">Registration</a>
            <a href="login">Log in</a>
        </div>
    </div>
    
    <div class=msg>
     <h1>${message}</h1>    
    </div>
    
</body>
</html>