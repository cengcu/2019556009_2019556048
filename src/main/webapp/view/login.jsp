<%@ include file="components/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <%@ include file="components/header.jsp" %>
    <link rel="stylesheet" href="/css/form.css" />
 <link rel="icon" type="image/png" sizes="32x32" href="/images/car/favicon-32x32.png">
  </head>
  <body>
    <!-- Navbar -->
    <%@ include file="components/navbar.jsp" %>

    <!-- Main -->
    <main>
      <div class="container d-flex justify-content-center">
        <div class="form-wrapper small">
          <h2 class="form-header">Login</h2>
          <form:form action="loginUser" method="POST" modelAttribute="user">
            <c:if test="${param.error != null}">
              <div class="login-error">
                <p>Invalid username or password, please try again!</p>
              </div>
            </c:if>
            <c:if test="${param.logout != null}">
              <div class="login-logout">
                <p>You have been successfully logged out</p>
              </div>
            </c:if>
            <label class="form-label fs-6"></label>
            <form:input id="username" placeholder="Username" class="form-control" type="text" path="username" />

            <label class="form-label fs-6"></label>
            <form:input id="password" placeholder="Password" class="form-control" type="password" path="password" />

 <button class="btn btn-danger mt-3 form-button" type="submit">Login</button>

            <div class="mt-3 text-center">
              <a href="<%= request.getContextPath() %>/register" class="text-decoration-none">Create an account</a>
            </div>
          </form:form>
        </div>
      </div>
    </main>
    <!-- Footer -->
    <%@ include file="components/footer.jsp" %>
  </body>
</html>
