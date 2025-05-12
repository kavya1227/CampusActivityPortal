<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="style.css"/>
    <title>Campus Activity Portal</title>
</head>

<body>
    <header>
        <nav>
            <div class="logo">
              Campus Activity Portal
            </div>
            <ul class="nav-links">
                <li><a href="http://localhost:8080/CampusActivitySystem/">
                  Home</a>
                </li>
                <li><a href="about.jsp">
                  About</a>
                </li>
                <li><a href="contact.jsp">
                  Contact</a>
                </li>
                <li><a href="login.jsp">
                  Login</a>
                </li>
                <li><a href="register.jsp">
                  Register</a>
                </li>
            </ul>
        </nav>
    </header>

    <section class="home">
        <h1>Campus Activity Portal</h1>
        <p style="font-weight: bold">
           is a Java Enterprise Program Application
        </p>
        <div class="home-info">
            <div class="home-img">
                <img src="resources/1st.jpg" alt="CampusActivitySystem"/>
            </div>
            <div>
            <p> Campus Activity Portal is a web-based 
            application designed to streamline the process
            of organizing and managing college events.
            This system allows students to view, register,
            participate in activities of choice on understanding
            the details and asking queries.
            </p>
                <a href="about.jsp"><button>Read More...</button></a>
            </div>
        </div>
    </section>
    <footer>
        <p> &#169; 2024 Acceleration Hackathon. All Rights Reserved.</p>
    </footer>
</body>

</html>
