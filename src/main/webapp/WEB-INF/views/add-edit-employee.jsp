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

    <h3>
        <c:choose>
            <c:when test="${mode == 'add'}">Add</c:when>
            <c:otherwise>Edit</c:otherwise>
        </c:choose> Employee Form
    </h3>

    <form class="mt-4"
          action="<c:if test="${mode == 'add'}">insertEmployee</c:if><c:if test="${mode == 'edit'}">saveEditEmployee</c:if>"
          method="post">

        <c:if test="${mode == 'edit'}">
            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <label for="id">Id</label>
                        <input type="text" value="${employee.id}" class="form-control" id="id" name="id"
                               readonly="readonly">
                    </div>
                </div>
            </div>
        </c:if>

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <input type="text" class="form-control" id="firstName" name="firstName"
                           placeholder="Enter First Name" required value="${employee.firstName}">
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="lastName">Last Name</label> <!-- Added Second Name field -->
                    <input type="text" class="form-control" id="lastName" name="lastName"
                           placeholder="Enter Last Name" required value="${employee.lastName}">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="dateOfBirth">Date of Birth</label>
                    <input type="date" class="form-control" id="dateOfBirth" name="dob" required
                           value="${employee.dob}">
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="department">Department</label>
                    <select class="form-control" id="department" name="department" required>
                        <option value="" disabled>Select</option>
                        <option value="IT" ${employee.department eq 'IT' ? 'selected' : ''}>IT</option>
                        <option value="HR" ${employee.department eq 'HR' ? 'selected' : ''}>HR</option>
                        <option value="Finance" ${employee.department eq 'Finance' ? 'selected' : ''}>Finance</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="salary">Salary</label>
                    <input type="number" class="form-control" id="salary" name="salary" required
                           placeholder="Enter Salary(AED)"
                           value="${employee.salary}">
                </div>
            </div>

            <div class="col">
                <div class="form-group">
                    <label for="manager">Manager</label>
                    <select class="form-control" id="manager" name="manager">
                        <option value="">Select</option>
                        <c:forEach var="manager" items="${managers}">
                            <option value="${manager.id}"
                                    <c:if test="${manager.id eq employee.manager.id}">
                                        selected="selected"
                                    </c:if>
                            >
                                    ${manager.id} - ${manager.firstName} ${manager.lastName}
                            </option>
                        </c:forEach>
                    </select>
                </div>

            </div>
        </div>

        <a href="${pageContext.request.contextPath}/" class="btn btn-warning">Back</a>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

</div>

</body>
</html>
