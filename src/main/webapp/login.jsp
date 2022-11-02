


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>



<form method="post" action="login.jsp">
    <div class="mb-3">
        <label for="username" class="form-label">Username</label>
        <input type="text" class="form-control" id="username" aria-describedby="username" name="username">

    </div>
    <div class="mb-3">
        <label for="Password" class="form-label">Password</label>
        <input type="password" class="form-control" id="Password" name="password">
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>
</form>


<p>Username: ${param.username}</p>
<p>Password: ${param.password}</p>

<c:choose>
    <c:when test="${param.username.equals('admin') && param.password.equals('password')}">
        <%--This code will run if the condition evaluates to true--%>
        <% response.sendRedirect("/profile.jsp"); %>
    </c:when>
    <c:otherwise>
        <c:if test="${param.username != null && param.password != null}">
            <% response.sendRedirect("/login.jsp"); %>
        </c:if>
    </c:otherwise>
</c:choose>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>
