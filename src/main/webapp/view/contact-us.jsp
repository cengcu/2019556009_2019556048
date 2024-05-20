<%@ include file="components/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <%@ include file="components/header.jsp" %>
    <link rel="stylesheet" href="/css/contact-us.css" />
  <link rel="icon" type="image/png" sizes="32x32" href="/images/car/favicon-32x32.png">
  </head>
  <body>
    <!-- Navbar -->
    <%@ include file="components/navbar.jsp" %>

    <!-- Main -->
<main>
  <!-- Hero banner -->
  <div class="container-fluid jumbotron d-flex align-items-center" style="height: 200px;">
    <div class="container">
      <h2 class="pt-5 fw-bolder text-dark text-start">CONTACT US</h2>
    </div>
  </div>
</main>


      <!-- Contact -->
      <div class="container mt-4 d-flex justify-content-center flex-column flex-lg-row">
        <div class="contact mb-3">
          <h3 class="text-center fw-bold">Ask Question</h3>
          <form action="">
            <label class="form-label"></label>
            <input type="text" class="form-control mb-2" name="name" placeholder="Your Name" />

            <label class="form-label"></label>
            <input type="text" class="form-control mb-2" placeholder="E-Mail" name="email" />

            <label class="form-label"></label>
            <textarea class="form-control" name="message" placeholder="Message"></textarea>

             <div class="text-center mt-3">
               <button class="btn btn-danger btn-lg form-button" type="submit">Send Question</button>
             </div>

          </form>
        </div>
        <div class="social-media mb-3">
<h3 class="text-center fw-bold">Contact</h3>
          <ul>
            <li><i class="fa-solid fa-phone"></i> <a href="">+905446789432</a></li>
            <li><i class="fa-solid fa-envelope"></i> <a href="">meha.cars@gmail.com</a></li>
            <li><i class="fa-solid fa-location-pin"></i>Cukurova University, Adana/Turkey</li>
          </ul>
        </div>
      </div>
    </main>

    <!-- Footer -->
    <%@ include file="components/footer.jsp" %>
  </body>
</html>
