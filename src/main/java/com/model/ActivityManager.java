package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ActivityManager {
	
	private static final String DB_URL = "jdbc:mysql://localhost:3306/test";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "CERULEAN";

    public void saveActivity(Activity activity) throws SQLException {
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);){
    		String query = "INSERT INTO activity (id, aname, branch, uname, phone) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, activity.getId());
            preparedStatement.setString(2, activity.getAname());
            preparedStatement.setString(3, activity.getBranch());
            preparedStatement.setString(4, activity.getUname());
            preparedStatement.setString(5, activity.getPhone());

            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
        }
    }

}
