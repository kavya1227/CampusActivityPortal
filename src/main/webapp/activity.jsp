<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="style6.css"/>
    <title>Activity</title>
</head>
<body>
    <div class="main">
        <h1>Activity Entries</h1>
        <div class="report-container">
            <div class="report-header">
                <div class="recent-Articles">Recent Activities</div>
            </div>
            <div class="report-body">
                <table border="1">
                    <tr>
                        <th>Activity ID</th>
                        <th>Activity Name</th>
                        <th>Branch</th>
                        <th>User Name</th>
                        <th>Phone</th>
                    </tr>
                    <%
                        // Database connection and data retrieval
                        java.sql.Connection connection = null;
                        java.sql.Statement statement = null;
                        java.sql.ResultSet resultSet = null;
                        
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            connection = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "CERULEAN");
                            statement = connection.createStatement();
                            resultSet = statement.executeQuery("SELECT * FROM activity");

                            while (resultSet.next()) {
                    %>
                    <tr>
                        <td><%= resultSet.getString("id") %></td>
                        <td><%= resultSet.getString("aname") %></td>
                        <td><%= resultSet.getString("branch") %></td>
                        <td><%= resultSet.getString("uname") %></td>
                        <td><%= resultSet.getString("phone") %></td>
                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            if (resultSet != null) try { resultSet.close(); } catch (Exception e) {}
                            if (statement != null) try { statement.close(); } catch (Exception e) {}
                            if (connection != null) try { connection.close(); } catch (Exception e) {}
                        }
                    %>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
