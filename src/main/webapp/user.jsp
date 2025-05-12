<%@ page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.User" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style5.css">
    <link rel="stylesheet" href="style4.css">
    <link rel="stylesheet" href="responsive.css">
</head>
<body>
    <header>
        <div class="logosec">
            <div class="logo">Welcome! 
                <% 
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
                %>
            </div>
        </div>
        <div class="logosec">
            <div class="logo2"><a href="form.jsp"><button><h3>Register</h3></button></a></div>
            <div class="logo2"><a href="login.jsp"><button><h3>Logout</h3></button></a></div>
        </div>
    </header>
    <div class="container">
    <!-- SmartSphere -->
    <div class="product-wrapper">
        <div class="product">
            <div class="img">
                <img src="resources/1.jpeg">
            </div>
            <div class="info">
                <div class="details">
                    <h1>SmartSphere</h1>
                    <h2>IoT Innovation Hackathon</h2>
                    <p>Build innovative IoT solutions to real-world problems</p>
                    <h4>ESO</h4>
                </div>
            </div>
        </div>
    </div>

    <!-- Swaras -->
    <div class="product-wrapper">
        <div class="product">
            <div class="img">
                <img src="resources/2.png">
            </div>
            <div class="info">
                <div class="details">
                    <h1>Swaras</h1>
                    <h2>Vocal Training</h2>
                    <p>Enriches interested students with facts related to musical career</p>
                    <h4>LCH</h4>
                </div>
            </div>
        </div>
    </div>

    <!-- IntelliFusion -->
    <div class="product-wrapper">
        <div class="product">
            <div class="img">
                <img src="resources/3.jpeg">
            </div>
            <div class="info">
                <div class="details">
                    <h1>IntelliFusion</h1>
                    <h2>AI - Machine Learning Seminar</h2>
                    <p>Latest trends and research in fields of AI</p>
                    <h4>IIE</h4>
                </div>
            </div>
        </div>
    </div>

    <!-- CyberShield Nexus -->
    <div class="product-wrapper">
        <div class="product">
            <div class="img">
                <img src="resources/4.jpeg">
            </div>
            <div class="info">
                <div class="details">
                    <h1>CyberShield Nexus</h1>
                    <h2>Cybersecurity Awareness Week</h2>
                    <p>Series of activities including workshops, guest lectures, and competitions</p>
                    <h4>TECH</h4>
                </div>
            </div>
        </div>
    </div>

    <!-- GeneForge -->
    <div class="product-wrapper">
        <div class="product">
            <div class="img">
                <img src="resources/5.png">
            </div>
            <div class="info">
                <div class="details">
                    <h1>GeneForge</h1>
                    <h2>Genetic Engineering Symposium</h2>
                    <p>Discussing the advancements and ethical considerations in genetic engineering</p>
                    <h4>HWB</h4>
                </div>
            </div>
        </div>
    </div>

    <!-- NexLink IoT -->
    <div class="product-wrapper">
        <div class="product">
            <div class="img">
                <img src="resources/6.png">
            </div>
            <div class="info">
                <div class="details">
                    <h1>NexLink IoT</h1>
                    <h2>Smart Home Projects Expo</h2>
                    <p>Exhibition of innovative smart home projects</p>
                    <h4>EXO</h4>
                </div>
            </div>
        </div>
    </div>

    <!-- AlgoArchitect -->
    <div class="product-wrapper">
        <div class="product">
            <div class="img">
                <img src="resources/7.png">
            </div>
            <div class="info">
                <div class="details">
                    <h1>AlgoArchitect</h1>
                    <h2>Data Structures and Algorithms Coding Contest</h2>
                    <p>Contest to test and improve students' skills</p>
                    <h4>TECH</h4>
                </div>
            </div>
        </div>
    </div>

    <!-- Narthana -->
    <div class="product-wrapper">
        <div class="product">
            <div class="img">
                <img src="resources/8.png">
            </div>
            <div class="info">
                <div class="details">
                    <h1>Narthana</h1>
                    <h2>Fusion Dance Club Selections</h2>
                    <p>Encourage performances of both classical and western styles</p>
                    <h4>LCH</h4>
                </div>
            </div>
        </div>
    </div>
</div>
    
    <script src="./script.js"></script>
</body>
</html>
