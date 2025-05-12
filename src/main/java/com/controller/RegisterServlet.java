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

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserManager userManager = new UserManager();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd1");
        String confirmPassword = request.getParameter("pwd2");

        if (id == null || pwd == null || confirmPassword == null) {
            response.sendRedirect("register.jsp");
            return;
        }

        if (!userManager.validatePassword(pwd, confirmPassword)) {
            response.sendRedirect("register.jsp");
            return;
        }

        User user = new User(id, pwd);

        try {
            if (userManager.addUser(user)) {
                response.sendRedirect("login.jsp");
            } else {
                response.sendRedirect("register.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
