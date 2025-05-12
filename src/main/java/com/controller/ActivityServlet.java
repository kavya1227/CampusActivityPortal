package com.controller;

import com.model.Activity;
import com.model.ActivityManager;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ActivityServlet")
public class ActivityServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ActivityManager activityManager = new ActivityManager();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String aname = request.getParameter("aname");
        String branch = request.getParameter("branch");
        String uname = request.getParameter("uname");
        String phone = request.getParameter("phone");

        Activity activity = new Activity(id, aname, branch, uname, phone);

        try {
            activityManager.saveActivity(activity);
            response.sendRedirect("form.jsp?success=true");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("form.jsp?error=true");
        }
    }
}
