<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
    <title><tiles:insertAttribute name="title" ignore="true"/></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/styles.css' />">
</head>
<body>

<style>
    .bg-primary-custom {
        background-color: #2d2d63;
        color: white;
        padding: 10px 0;
        /* background-color: #007bff!important; */
    }
</style>

<div>
    <header class="bg-primary-custom text-white">
        <tiles:insertAttribute name="header"/>
    </header>
    <main class="py-3">
        <tiles:insertAttribute name="body"/>
    </main>
    <%--  <footer class="bg-primary text-white py-3">
          <tiles:insertAttribute name="footer"/>
      </footer>--%>
</div>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
