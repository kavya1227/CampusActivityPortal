<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="style4.css">
    <link rel="stylesheet" href="responsive.css">
</head>

<body>
    <header>
        <div class="logosec">
            <div class="logo">Dashboard</div>
        </div>
        <div class="logosec">
              <h3>ADMIN</h3>
        </div>
    </header>

    <div class="main-container">
        <div class="navcontainer">
            <nav class="nav">
                <div class="nav-upper-options">
                    <div class="nav-option option3">
                        <button><h3> Dashboard</h3></button>
                    </div>
                    <div class="nav-option option3">
                        <a href="activity.jsp"><button><h3>Activities</h3></button></a>
                    </div>
                    <div class="nav-option option5">
                         <a href="feedback.jsp"><button><h3>Feedback</h3></button></a>
                    </div>
                    <div class="nav-option logout">
                        <a href="login.jsp"><button><h3>Logout</h3></button></a>
                    </div>
                </div>
            </nav>
        </div>
        <div class="main">
            <div class="box-container">
                <div class="box box1">
                    <div class="text">
                        <h2 class="topic-heading">1276</h2>
                        <h2 class="topic">Overall Events</h2>
                    </div>
                    <img src="resources/events.jpg" alt="Views">
                </div>
                <div class="box box2">
                    <div class="text">
                        <h2 class="topic-heading">44</h2>
                        <h2 class="topic">Available Clubs</h2>
                    </div>
                    <img src="resources/team.png" alt="likes">
                </div>
                <div class="box box3">
                    <div class="text">
                        <h2 class="topic-heading">126</h2>
                        <h2 class="topic">Feedback</h2>
                    </div>
                    <img src="resources/feed.png" alt="comments">
                </div>
                <div class="box box4">
                    <div class="text">
                        <h2 class="topic-heading">370</h2>
                        <h2 class="topic">Support Incharges</h2>
                    </div>
                    <img src="resources/support.png" alt="published">
                </div>
            </div>

            <div class="report-container">
                <div class="report-header">
                    <h1 class="recent-Articles">Most Active Clubs of Each Type</h1>
                </div>
                <div class="report-body">
                    <div class="report-topic-heading">
                        <h3 class="t-op">Club Name</h3>
                        <h3 class="t-op">Organized By</h3>
                        <h3 class="t-op">Description</h3>
                        <h3 class="t-op">Type</h3>
                    </div>
                    <div class="items">
                        <div class="item1">
                            <h3 class="t-op-nextlvl">KL- Megha Club</h3>
                            <h3 class="t-op-nextlvl">CSE-Honors</h3>
                            <h3 class="t-op-nextlvl">Cloud-related technologies</h3>
                            <h3 class="t-op-nextlvl label-tag1">TEC</h3>
                        </div>
                        <div class="item1">
                            <h3 class="t-op-nextlvl">KL Garuda Club</h3>
                            <h3 class="t-op-nextlvl">Ai-DataScience</h3>
                            <h3 class="t-op-nextlvl">Drone Technology</h3>
                            <h3 class="t-op-nextlvl label-tag2">IIE</h3>
                        </div>
                        <div class="item1">
                            <h3 class="t-op-nextlvl">KL Centre for Extension Activities</h3>
                            <h3 class="t-op-nextlvl">InternetOfThings</h3>
                            <h3 class="t-op-nextlvl">Research and Education</h3>
                            <h3 class="t-op-nextlvl label-tag3">ESO</h3>
                        </div>
                        <div class="item1">
                            <h3 class="t-op-nextlvl">F.E.K (FASHION DESIGNING)</h3>
                            <h3 class="t-op-nextlvl">BioTech</h3>
                            <h3 class="t-op-nextlvl">Fashion and Modeling</h3>
                            <h3 class="t-op-nextlvl label-tag4">LCH</h3>
                        </div>
                        <div class="item1">
                            <h3 class="t-op-nextlvl">Safe Life Club</h3>
                            <h3 class="t-op-nextlvl">SAC</h3>
                            <h3 class="t-op-nextlvl">Marathon and Yoga</h3>
                            <h3 class="t-op-nextlvl label-tag5">HWB</h3>
                        </div>
                     </div>
                 </div>
            </div>
        </div>
     </div>
    <script src="./index.js"></script>
</body>
</html>