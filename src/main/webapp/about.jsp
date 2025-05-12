<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="style.css"/>
    <title>AboutUs</title>
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

    <section class="team">
    <br/><br/>
        <h1 style="color:#916496">Meet Our Team</h1>
        <div class="team-cards">          
            <div class="card">
                <div class="card-img">
                    <img src="resources/mine.jpeg" alt="Member1"/>
                </div>
                <div class="card-info">
                    <h2 class="card-name">Appikatla Srilekha</h2>
                    <p class="card-role">Team Lead</p>
                    <p class="card-email">2200030030@kluniversity.in</p>
                    <p><a href="https://www.linkedin.com/in/appikatla-srilekha/"><button class="button">LinkedIn Profile</button></a></p>
                </div>
            </div>
            <div class="card">
                <div class="card-img">
                    <img src="resources/rasagna.jpeg" alt="Member2"/>
                </div>
                <div class="card-info">
                    <h2 class="card-name">Ramineni Rasagna</h2>
                    <p class="card-role">Backend Developer</p>
                    <p class="card-email">2200031680@kluniversity.in</p>
                    <p><a href="https://www.linkedin.com/in/ramineni-rasagna-002845247/"><button class="button">LinkedIn Profile</button></a></p>
                </div>
            </div>
            <div class="card">
                <div class="card-img">
                    <img src="resources/harini.jpeg" alt="Member3"/>
                </div>
                <div class="card-info">
                    <h2 class="card-name">Kanumilli Harini</h2>
                    <p class="card-role">Frontend Developer</p>
                    <p class="card-email">2200031289@kluniversity.in</p>
                    <p><a href="https://www.linkedin.com/in/harini-kanumilli-5ba416251?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"><button class="button">LinkedIn Profile</button></a></p>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <p> &#169; 2024 Acceleration Hackathon. All Rights Reserved.</p>
    </footer>
</body>

</html>