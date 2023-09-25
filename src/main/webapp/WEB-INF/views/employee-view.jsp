<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <%@include file="./base-style.jsp" %>
    <style>
        .employee-card {
            border: 1px solid #ccc;
            padding: 20px 20px 30px 20px; /* Increased padding (top, right, bottom, left) */
            margin: 20px auto;
            max-width: 400px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            border-radius: 10px; /* Rounded card edges */
        }

        .avatar {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 20px;
        }

        .info-card {
            padding: 2.25rem; /* Adjust the padding value as needed */
        }
    </style>
</head>
<body>

<div class="container mt-3">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="employee-card">
                <i class="fa-solid fa-user fa-5x mt-5"></i>
                <div class="card-body info-card">

                    <p>ID: ${employee.id}</p>
                    <p>Date of Birth: ${employee.dob}</p>
                    <p>Department: ${employee.department}</p>
                    <p>Salary: ${employee.salary}</p>
               <%--     <p>
                        Manager: ${employee.manager != null ? employee.manager.firstName + ' ' + employee.manager.lastName : 'N/A'}</p>--%>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
