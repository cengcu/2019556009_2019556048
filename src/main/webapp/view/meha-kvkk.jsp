<%@ include file="components/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ include file="components/header.jsp" %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="/css/about-us.css" />
  <link rel="icon" type="image/png" sizes="32x32" href="/images/car/favicon-32x32.png">

</head>
<body>
  <!-- Navbar -->
  <%@ include file="components/navbar.jsp" %>

  <!-- Main -->
  <main>
    <div class="container mt-4 d-flex">
      <div class="about p-4">
        <h1 class="fw-bolder">Personal Data Protection Law Information Text</h1>
        <p class="text-secondary">
              <h3 class="fw-bolder">1. Data Controller</h3>
              <p>Meha Cars (hereinafter referred to as "the company"), address: [Address], phone: [Phone Number], email: [Email Address], is operated by a company.</p>

              <h3 class="fw-bolder">2. Purposes of Processing Personal Data</h3>
              <p>The company processes personal data necessary for activities such as customer relationship management, sales and marketing activities, service provision, and customer satisfaction processes.</p>

              <h3 class="fw-bolder">3. Categories of Processed Personal Data</h3>
              <p>The company may process the following categories of personal data:</p>
              <ul>
                  <li>Contact Information: Name, surname, address, phone number, email address.</li>
                  <li>Identity Information: Turkish ID number, passport number, driver's license number.</li>
                  <li>Financial Information: Credit card information, bank account information.</li>
              </ul>

              <h3 class="fw-bolder">4. Transfer of Personal Data</h3>
              <p>The company may share personal data with authorized public institutions and business partners within the framework of legal obligations or when necessary for the provision of services.</p>

              <h3 class="fw-bolder">5. Rights of the Data Subject</h3>
              <p>As data subjects, you have the following rights under Article 11 of the Personal Data Protection Law:</p>
              <ul>
                  <li>To learn whether your personal data is processed,</li>
                  <li>To learn the purpose of processing your personal data and whether they are used for the intended purpose,</li>
                  <li>To know the third parties to whom your personal data are transferred,</li>
                  <li>To request the correction of your personal data if they are incomplete or inaccurate,</li>
                  <li>To request the deletion or destruction of your personal data in accordance with the Personal Data Protection Law and other relevant legislation,</li>
                  <li>To request the notification of the operations carried out as per subparagraphs (d) and (e) to third parties to whom your personal data have been transferred.</li>
              </ul>

              <h3 class="fw-bolder">6. Changes to the Personal Data Processing Policy</h3>
              <p>The company may make changes to this policy from time to time. Changes will be published on our website, and they will be effective as of the date they are implemented.</p>

              <p>This information text provides general information about our company's methods of processing your personal data within the scope of the Personal Data Protection Law. Please contact us for more information or to exercise your rights.</p>

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