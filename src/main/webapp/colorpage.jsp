

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="colorpicker!" />
  </jsp:include>
</head>
<body style="background: ${color}">
<jsp:include page="partials/navbar.jsp" />
<h1>Here is your ${color} page</h1>


</body>
</html>
