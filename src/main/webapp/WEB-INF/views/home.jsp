<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <%@include file="./base-style.jsp" %>
</head>

<html>
<head>
    <title>Hello Spring MVC</title>
</head>
<body>
<h2>${message}</h2>
<div class="container-fluid mt-3">
    <a href="addEmployee" class="btn btn-primary"> Add Employee </a>
    <a href="employeeReport" class="btn btn-primary"> List Employee </a>
</div>
</body>
</html>