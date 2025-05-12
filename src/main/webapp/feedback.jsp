<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="style6.css"/>
    <title>Feedback</title>
</head>
<body>
    <div class="main">
        <h1>Submitted Feedback</h1>
        <div class="report-container">
            <div class="report-header">
                <div class="recent-Articles">Recent Messages</div>
            </div>
            <div class="report-body">
                <table border="1">
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Message</th>
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
                            resultSet = statement.executeQuery("SELECT * FROM contact");

                            while (resultSet.next()) {
                    %>
                    <tr>
                        <td><%= resultSet.getString("name") %></td>
                        <td><%= resultSet.getString("email") %></td>
                        <td><%= resultSet.getString("phone") %></td>
                        <td><%= resultSet.getString("message") %></td>
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
