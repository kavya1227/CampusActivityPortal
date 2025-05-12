<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="style2.css"/>
    <title>ContactUs</title>
</head>

<body>
    <header>
        <nav>
            <div class="logo">
              Campus Activity Portal
            </div>
            <ul class="nav-links">
                <li><a href="http://localhost:8080/CampusActivitySystem/">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="register.jsp">Register</a></li>
            </ul>
        </nav>
    </header>
    <section class="contact-form">
        <div class="form-container">
        <h2>Contact Us</h2><br/>
            <h4>(Any Queries,Suggestions,Complaints)</h4><br/><br/>
            
            <!-- Success Message -->
            <%
                String success = request.getParameter("success");
                if ("true".equals(success)) {
            %>
                <div class="success-message" style="color: green;">
                    Message sent successfully!
                </div>
            <% } %>

            <!-- Failure Message -->
            <%
                String error = request.getParameter("error");
                if ("true".equals(error)) {
            %>
                <div class="error-message" style="color: red;">
                    An error occurred while sending the message. Please try again.
                </div>
            <% } %>
            
            <br/><br/>
            <form action="Feedback" method="get">
 
                <label for="name">Name: </label>
                <input type="text" id="name" name="name" required>
 
                <label for="email">Email: </label>
                <input type="email" id="email" name="email" required>
 
                <label for="phone">Phone: </label>
                <input type="tel" id="phone" name="phone">
 
                <label for="message">Message: </label>
                <textarea id="message" name="message" rows="4" required></textarea>
 
                <button type="submit" class="submit-button">Submit</button>
            </form>
        </div>
    </section>
    <section class="contact-info">
        <h2>Contact Information</h2>
        <address>
            Enterprise Programming Project<br>
            Summer Acceleration<br>
            Section 12<br>
            Mentor: P V Vara Prasad<br>
            Phone: <a href="tel:9949125842">9949125842</a><br>
            Email: <a href="mailto:varaprasad_cse@kluniversity.in">varaprasad_cse@kluniversity.in</a>
        </address>
    </section>
	<footer>
        <p> &#169; 2024 Acceleration Hackathon. All Rights Reserved.</p>
    </footer>
</body>

</html>