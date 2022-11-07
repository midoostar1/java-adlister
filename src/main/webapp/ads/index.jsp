<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
<jsp:include page="/partials/navbar.jsp" />
<div class="container">
    <h1>Welcome to the Adlister!</h1>
    <h3>ADS LIST</h3>

    <c:forEach var="ads" items="${ads}">
        <div class="ads">
            <h2>${ads.title}</h2>
            <p> ${ads.description}</p>
        </div>
    </c:forEach>


</div>
</body>
</html>

