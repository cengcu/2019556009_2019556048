<%@ include file="components/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ include file="components/header.jsp" %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="/css/about-us.css" />
  <link rel="icon" type="image/png" sizes="32x32" href="/images/car/favicon-32x32.png">
  <style>
  .carousel-item img {
    max-height: auto;
    max-width: 100%; /* Resmin tam genişliğini kullanmak için */
    margin: 0 auto; /* Resmi yatayda ortalamak için */
  }

  </style>
</head>
<body>
  <!-- Navbar -->
  <%@ include file="components/navbar.jsp" %>

  <!-- Main -->
  <main>
    <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="/images/car/1.jpg" class="d-block w-100" alt="Customer-Centric Approach ">
        </div>
        <div class="carousel-item">
          <img src="/images/car/2.jpg" class="d-block w-100" alt="Expreienced and Reliable">
        </div>
        <div class="carousel-item">
          <img src="/images/car/3.jpg" class="d-block w-100" alt="All Kinds of Cars">
        </div>
        <div class="carousel-item">
          <img src="/images/car/4.jpg" class="d-block w-100" alt="Here For You!">
         </div>
      </div>
    </div>

    <div class="container mt-4 d-flex">
      <div class="about p-4">
        <h3 class="fw-bolder">Who We Are?</h3>
        <p class="text-secondary">
          Hello, we are Hande OCAK, number 2019556048, and Melike ARIKAN, number 2019556009, from Cukurova University, computer engineering, 4th year students. After our tough struggles and our survivor-like university life, we are graduating this year.
        <p> Compared to other known sites, we offer safe and free use to our valued users. You can arrange a test drive day for any vehicle you want and purchase your vehicle safely. In case of any problems, we are always here to serve you. You can reach us froe contact section on the <a href="<%= request.getContextPath() %>/contact-us">Contact Us</a> page. Good luck and may God not cause any trouble. </p>
        <br>
        <br>
             <h3 class="fw-bolder">The Story of Our Brand</h3>
        <p>Melike and Hande were both passionate about cars. Growing up, they were immersed in the world of automobiles; helping their father with repairs and poring over car magazines were some of their favorite pastimes. When they met in university, their shared passion for cars strengthened their friendship.</p>
        <p>Although they pursued careers in different fields, the dream of starting a business in the automotive sector was always on their minds. They wanted to indulge in their passion while making a mark in the industry. With this ambition and determination, they decided to establish "Meha" in 2010.</p>
        <p>The name "Meha" was derived from the combination of the founders' names, Melike and Hande. It was more than just a brand name; it symbolized the realization of a dream brought to life by two friends coming together.</p>
        <p>Initially just an idea, Meha quickly evolved into a thriving venture, thanks to Melike and Hande's perseverance, determination, and industry knowledge. Starting as a small online platform, Meha swiftly gained the trust of customers. Its commitment to quality service and transparent, trustworthy trading principles set it apart from other players in the industry.</p>
        <p>Meha didn't just sell cars; it became a platform catering to the needs of car enthusiasts. From selling second-hand vehicles to providing spare parts, maintenance services, and car reviews, Meha offers a wide range of services. Putting customer satisfaction at the forefront of every interaction, Meha became a trusted name in the automotive community.</p>
        <p>Today, Meha is more than just an online car sales site; it's a gathering place for car enthusiasts. The journey started by Melike and Hande exemplifies how passion and trust can lead to great success. And Meha continues to grow, becoming the go-to destination for automotive enthusiasts, day by day.</p>
      <br>
      <br>
      </div>
    </div>
  </main>

  <!-- Footer -->
  <%@ include file="components/footer.jsp" %>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
