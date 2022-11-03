

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Order Pizzer!" />
  </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="container">
  <h1>Welcome To My Pizza Store</h1>

  <form action="order" method="POST">

    <div class="inputs-transparent">
      <label class="form-select-label" for="selectCrust"> Select Crust Type</label>
      <select id="selectCrust" class="form-select" aria-label="Default select example" name="selectCrust">
        <option selected>Cheesy Bites Crust</option>
        <option value="1">Cheesy Bites Crust</option>
        <option value="2">Stuffed Crust</option>
        <option value="3">Thin & Crispy Crust
        </option>
      </select>
    </div>



    <div class="inputs-transparent">
      <label class="form-select-label" for="selectSauce"> Select Sauce</label>
      <select id="selectSauce" class="form-select" aria-label="Default select example" name="selectSauce">
        <option selected>Classic Marinara.</option>
        <option value="3">  Premium Crushed Tomato.</option>
        <option value="1"> Creamy Garlic Parmesan</option>
        <option value="1"> Buffalo.</option>
        <option value="2">Honey Sriracha.</option>
        <option value="3"> Creamy Garlic Parmesan.</option>
      </select>
    </div>


    <div class="inputs-transparent">
      <label class="form-select-label" for="selectSize"> Select Size</label>
      <select id="selectSize" class="form-select" aria-label="Default select example" name="selectSize">
        <option selected>Medium</option>
        <option value="Small">One</option>
        <option value="Large">Two</option>
        <option value="XLarge">Three</option>
      </select>
    </div>




    <h3>SELECT TOPPING</h3>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="beef" name="beef" />
      <label class="form-check-label" for="beef">beef</label>
    </div>

    <!-- Checked checkbox -->
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="bacon" id="bacon" name="bacon" />
      <label class="form-check-label" for="bacon"> bacon</label>
    </div>

    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="typical veggies including olives" id="veggies" name="veggies" />
      <label class="form-check-label" for="veggies">typical veggies including olives</label>
    </div>


    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="sausage" id="sausage" name="sausage"/>
      <label class="form-check-label" for="sausage">sausage</label>
    </div>

    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="red & green peppers" id="peppers" name="peppers"/>
      <label class="form-check-label" for="peppers">red & green peppers</label>
    </div>


    <div class="form-outline mb-4">
      <input type="text" id="address" class="form-control form-control-lg" name="Address" />
      <label class="form-label" for="address">Address</label>
    </div>


    <div class="col-md-6 mb-4">
      <input type="text" id="city" class="form-control form-control-lg" name="city" />
      <label class="form-label" for="city"></label>
    </div>


      <div class="col-md-6 mb-4">
        <input type="text" id="state" class="form-control form-control-lg" name="state"/>
        <label class="form-label" for="state"></label>
      </div>


    <div class="form-outline mb-4">
      <input type="text" id="zip" class="form-control form-control-lg" name="zip"/>
      <label class="form-label" for="zip">Zip</label>
    </div>

    <div class="d-flex justify-content-end pt-3">
      <button value="submit" type="submit" class="btn btn-success btn-lg ms-2"
              style="background-color:hsl(210, 100%, 50%) ">Place order</button>
    </div>


  </form>



</div>
</body>
</html>
