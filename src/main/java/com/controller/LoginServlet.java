package com.controller;

import com.model.User;
import com.model.UserManager;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserManager userManager = new UserManager();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String password = request.getParameter("pwd");

        try {
            User user = userManager.authenticateUser(id, password);
            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                if ("admin".equalsIgnoreCase(user.getId())) {
                    response.sendRedirect("admin.jsp");
                } else {
                    response.sendRedirect("user.jsp");
                }
            } else {
                response.sendRedirect("login.jsp?error=Invalid credentials");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=An error occurred");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
