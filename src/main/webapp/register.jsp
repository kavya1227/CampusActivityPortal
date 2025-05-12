<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="style3.css"/>
    <title>Register</title>
</head>

<body>
    <div class="main">
            <h1>Campus Activity Portal</h1>
            <h3>Register your credentials</h3>
            <form action="RegisterServlet" method="get">
                  <label for="id">Regd No:</label>
                  <input type="text" id="id" name="id" placeholder="Enter your College Id" required>
                  
                  <label for="pwd1">Password:</label>
                  <input type="password"id="pwd1" name="pwd1" placeholder="Enter your Password" required>
                  
                  <label for="pwd2">Confirm Password:</label>
                  <input type="password"id="pwd2" name="pwd2" placeholder="Re-enter your Password" required>
                  <div class="wrap">
                        <button type="submit">Submit</button>
                  </div>
            </form>
            <p>Already registered?
                  <a href="login.jsp" style="text-decoration: none;">Go to your Account</a>
            </p>
      </div>
</body>

</html>
