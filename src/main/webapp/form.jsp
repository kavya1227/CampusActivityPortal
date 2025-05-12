<%@ page session="false" language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.User" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="style2.css"/>
    <link rel="stylesheet" href="style3.css"/>
    <title>Form</title>
</head>

<body>
    <div class="main">
        <h1>Campus Activity Portal</h1>
        <h3>Register your activities</h3><br/>
        <!-- Success Message -->
            <%
                String success = request.getParameter("success");
                if ("true".equals(success)) {
            %>
                <div class="success-message" style="color: green;">
                    Activity registered successfully!
                </div>
            <% } %>

            <!-- Failure Message -->
            <%
                String error = request.getParameter("error");
                if ("true".equals(error)) {
            %>
                <div class="error-message" style="color: red;">
                    An error occurred while registering the activity. Please try again.
                </div>
            <% } %>
        <form action="ActivityServlet" method="get">
            <label for="id">Regd No:</label>
            <input type="text" id="id" name="id" value=<% 
                    HttpSession session = request.getSession(); // Avoid creating a new session
                    if (session != null) {
                        User user = (User) session.getAttribute("user");
                        if (user != null) {
                            out.print(user.getId());
                        } else {
                            response.sendRedirect("login.jsp");
                        }
                    } else {
                        response.sendRedirect("login.jsp");
                    }
                %>>

            <label for="uname">Name:</label>
            <input type="text" id="uname" name="uname" placeholder="Enter your Name" required>

            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" placeholder="Enter your Phone Number" required>

            <label for="branch">Branch:</label>
            <input type="text" id="branch" name="branch" placeholder="Enter your Branch" required>

            <label for="aname">Activity Name:</label>
            <select id="aname" name="aname" required>
                <option value="SmartSphere">SmartSphere - IoT Innovation Hackathon</option>
				<option value="Swaras">Swaras - Vocal Training</option>
				<option value="IntelliFusion">IntelliFusion - AI - Machine Learning Seminar</option>
				<option value="CyberShield Nexus">CyberShield Nexus - Cybersecurity Awareness Week</option>
				<option value="GeneForge">GeneForge - Genetic Engineering Symposium</option>
				<option value="NexLink IoT">NexLink IoT - Smart Home Projects Expo</option>
				<option value="AlgoArchitect">AlgoArchitect - Data Structures - Algorithms Coding Contest</option>
				<option value="Narthana">Narthana - Fusion Dance Club Selections</option>

                <!-- Add more activities as needed -->
            </select>

            <div class="wrap">
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>
</body>

</html>
