<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ include file="../components/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <%@ include file="../components/header.jsp" %>
    <link rel="stylesheet" href="/css/form.css" />
    <link rel="icon" type="image/png" sizes="32x32" href="/images/car/favicon-32x32.png">
  </head>
  <body>
    <!-- Navbar -->
    <%@ include file="../components/navbar.jsp" %>

    <!-- Main -->
    <main>
      <div class="container d-flex justify-content-center">
        <div class="form-wrapper medium">
          <h2 class="form-header">Post Car</h2>
          <!-- FORM -->
          <form:form action="postCarProcess" method="POST" enctype="multipart/form-data" modelAttribute="car">
            <label class="form-label">Brand</label>
            <div>
              <form:errors path="make" cssClass="error" />
            </div>
            <select class="form-control" name="make">
              <option value="">Select Brand</option>
<option value="Acura">Acura</option>
<option value="Alfa Romeo">Alfa Romeo</option>
<option value="Aston Martin">Aston Martin</option>
<option value="Audi">Audi</option>
<option value="Bentley">Bentley</option>
<option value="BMW">BMW</option>
<option value="Bugatti">Bugatti</option>
<option value="Buick">Buick</option>
<option value="Cadillac">Cadillac</option>
<option value="Chevrolet">Chevrolet</option>
<option value="Citroën">Citroën</option>
<option value="Dacia">Dacia</option>
<option value="Dodge">Dodge</option>
<option value="Ferrari">Ferrari</option>
<option value="Fiat">Fiat</option>
<option value="Ford">Ford</option>
<option value="Genesis">Genesis</option>
<option value="GMC">GMC</option>
<option value="Honda">Honda</option>
<option value="Hummer">Hummer</option>
<option value="Hyundai">Hyundai</option>
<option value="Infiniti">Infiniti</option>
<option value="Jaguar">Jaguar</option>
<option value="Jeep">Jeep</option>
<option value="Kia">Kia</option>
<option value="Koenigsegg">Koenigsegg</option>
<option value="Lamborghini">Lamborghini</option>
<option value="Land Rover">Land Rover</option>
<option value="Lexus">Lexus</option>
<option value="Lincoln">Lincoln</option>
<option value="Lotus">Lotus</option>
<option value="Maserati">Maserati</option>
<option value="Mazda">Mazda</option>
<option value="McLaren">McLaren</option>
<option value="Mercedes-Benz">Mercedes-Benz</option>
<option value="Mini">Mini</option>
<option value="Mitsubishi">Mitsubishi</option>
<option value="Nissan">Nissan</option>
<option value="Pagani">Pagani</option>
<option value="Peugeot">Peugeot</option>
<option value="Porsche">Porsche</option>
<option value="Ram">Ram</option>
<option value="Renault">Renault</option>
<option value="Rolls-Royce">Rolls-Royce</option>
<option value="Saab">Saab</option>
<option value="Subaru">Subaru</option>
<option value="Suzuki">Suzuki</option>
<option value="Tesla">Tesla</option>
<option value="Toyota">Toyota</option>
<option value="Volkswagen">Volkswagen</option>
<option value="Volvo">Volvo</option>

              <!-- Add more brands here -->
            </select>

            <label class="form-label">Model</label>
            <div>
              <form:errors path="model" cssClass="error" />
            </div>
            <form:input class="form-control" type="text" path="model" cssErrorClass="form-control error-border" />

            <label class="form-label">Year</label>
            <div>
              <form:errors path="year" cssClass="error" />
            </div>
            <form:input class="form-control" type="text" path="year" cssErrorClass="form-control error-border" />

            <label class="form-label">Price</label>
            <div>
              <form:errors path="price" cssClass="error" />
            </div>
            <form:input class="form-control" type="number" path="price" cssErrorClass="form-control error-border" />

            <label class="form-label">Description</label>
                        <div>
                          <form:errors path="descr" cssClass="error" />
                        </div>
                        <form:input class="form-control" type="text" path="descr" cssErrorClass="form-control error-border" />

            <label class="form-label">Car Picture</label>
            <div>
              <span class="error">${fileError}</span>
            </div>
            <input class="form-control" type="file" name="imageFile" />

            <button class="btn btn-primary form-button mt-3" type="submit">Post Car</button>
          </form:form>
        </div>
      </div>
    </main>

    <!-- Footer -->
    <%@ include file="../components/footer.jsp" %>
  </body>
</html>

