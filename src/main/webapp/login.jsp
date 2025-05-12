<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="style3.css"/>
    <title>Login</title>
</head>

<body>
    <div class="main">
            <h1>Campus Activity Portal</h1>
            <h3>Enter your login credentials</h3>
            <form action="LoginServlet" method="get">
                  <label for="first">Regd No:</label>
                  <input type="text" id="id" name="id" placeholder="Enter your College Id" required>
                  <label for="pwd">Password:</label>
                  <input type="password" id="pwd" name="pwd" placeholder="Enter your Password" required>
                  <div class="wrap">
                        <button type="submit">Submit</button>
                  </div>
            </form>
            <p>Not registered?
                  <a href="register.jsp" style="text-decoration: none;">Create an account</a>
            </p>
      </div>
</body>

</html>
