<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<s:url var="url_jqlib" value="/resources/js/jquery-3.6.0.min.js"/>
<script src="${url_jqlib}"></script>

<%@page isELIgnored="false" %>

<meta name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js">

</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js">

</script>

<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/styles.css' />">


<title><c:out value="${title }"> home page</c:out></title>