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

    <h3>Employee List</h3>
    <a href="addEmployee" class="btn btn-primary mt-3"> Add Employee </a>
    <div class="row mt-3">

        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Department</th>
                <th scope="col">View</th>
                <th scope="col">Edit</th>
                <th scope="col">Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="emp" items="${employee}">
                <tr>
                    <td class="table-plus">${emp.id}</td>
                    <td>${emp.firstName}</td>
                    <td>${emp.department}</td>
                   <%-- <td>${emp.salary}</td>--%>
                    <td>
                        <a href="employeeView/${emp.id}" class="btn btn-success">
                            View <!-- "View" button with green color -->
                        </a>
                    </td>
                    <td>
                        <a href="editEmployee/${emp.id}" class="btn btn-warning">
                            Edit
                        </a>
                    </td>
                    <td>
                        <a href="deleteEmployee/${emp.id}" class="btn btn-danger">
                            Delete
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>