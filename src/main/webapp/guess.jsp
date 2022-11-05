

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="guess-number!" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<h4>Guess a number between 1 and 3</h4>


<form action="number" method="post" class="form-control mx-4">

    <input type="text" id="number" class="form-control"  name="number" />
    <label class="form-label" for="color">Color</label>

    <button value="submit" type="submit" class="btn btn-success btn-lg m-3"
            style="background-color:hsl(210, 100%, 50%) ">Submit</button>

</form>

</body>
</html>
