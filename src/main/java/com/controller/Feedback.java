package com.controller;

import com.model.Message;
import com.model.MessageManager;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MessageManager messageManager = new MessageManager();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");

        Message msg = new Message(name, email, phone, message);
        
        try {
            messageManager.saveMessage(msg);
            response.sendRedirect("contact.jsp?success=true");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("contact.jsp?error=true");
        }
    }
}
