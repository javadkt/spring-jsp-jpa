<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <%@include file="./base-style.jsp" %>
</head>
<body>

<div class="container mt-3">
    <h1>Employees</h1>
    <a href="addEmployee" class="btn btn-primary">Add Employee</a>
    <div class="row mt-3">
        <c:forEach var="emp" items="${employee}">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">${emp.firstName} ${emp.lastName}</h5>
                        <p class="card-text">ID: ${emp.id}</p>
                        <p class="card-text">Date of Birth: ${emp.dob}</p>
                        <p class="card-text">Department: ${emp.department}</p>
                        <p class="card-text">Salary: ${emp.salary}</p>
                        <a href="employeeView/${emp.id}" class="btn btn-success">View</a>
                        <a href="editEmployee/${emp.id}" class="btn btn-warning">Edit</a>
                        <a href="deleteEmployee/${emp.id}" class="btn btn-danger">Delete</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
