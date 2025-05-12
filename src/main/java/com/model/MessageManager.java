package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MessageManager {
	private static final String DB_URL = "jdbc:mysql://localhost:3306/test";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "CERULEAN";

    public void saveMessage(Message message) throws SQLException {
        String query = "INSERT INTO contact (name, email, phone, message) VALUES (?, ?, ?, ?)";
        
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement statement = connection.prepareStatement(query)) {
            
            statement.setString(1, message.getName());
            statement.setString(2, message.getEmail());
            statement.setString(3, message.getPhone());
            statement.setString(4, message.getMessage());
            
            statement.executeUpdate();
        }
    }
}
