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

    <h1>Add Employee Form</h1>
    <form action="insertEmployee" method="post">

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <input type="text" class="form-control" id="firstName" name="firstName"
                           placeholder="Enter First Name" required>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="lastName">Last Name</label> <!-- Added Second Name field -->
                    <input type="text" class="form-control" id="lastName" name="lastName"
                           placeholder="Enter Last Name">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="dateOfBirth">Date of Birth</label>
                    <input type="date" class="form-control" id="dateOfBirth" name="dob">
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="department">Department</label>
                    <select class="form-control" id="department" name="department">
                        <option value="IT">IT</option>
                        <option value="HR">HR</option>
                        <option value="Finance">Finance</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="salary">Salary</label>
                    <input type="number" class="form-control" id="salary" name="salary" placeholder="Enter Salary(AED)">
                </div>
            </div>

            <div class="col">
                <div class="form-group">
                    <label for="manager">Manager</label>
                    <select class="form-control" id="manager" name="manager">
                        <option value="">Select</option> <!-- Add an empty default option -->
                        <c:forEach var="manager" items="${managers}">
                            <option value="${manager.id}">
                                    ${manager.id} - ${manager.firstName} ${manager.lastName}
                            </option>
                        </c:forEach>
                    </select>
                </div>

            </div>
        </div>

        <%--     <div class="row">
                 <div class="col">
                     <div class="form-group">
                         <label for="address">Address</label>
                         <textarea class="form-control" id="address" name="address" rows="5"
                                   placeholder="Enter Address"></textarea>
                     </div>
                 </div>
             </div>--%>

        <a href="${pageContext.request.contextPath}/" class="btn btn-warning">Back</a>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

</div>

</body>
</html>
