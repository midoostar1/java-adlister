

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="colorpicker!" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<h4>Enter your favourite color</h4>


<form action="color" method="post" class="form-control mx-4">

    <input type="text" id="color" class="form-control"  name="color" />
    <label class="form-label" for="color">Color</label>

    <button value="submit" type="submit" class="btn btn-success btn-lg m-3"
            style="background-color:hsl(210, 100%, 50%) ">Submit</button>

</form>

</body>
</html>
