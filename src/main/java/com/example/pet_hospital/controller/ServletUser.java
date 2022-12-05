package com.example.pet_hospital.controller;

import com.example.pet_hospital.manger.UserManager;
import com.example.pet_hospital.model.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletUser", value = "/ServletUser")
public class ServletUser extends HttpServlet {
    UserManager users;

    @Override
    public void init() throws ServletException {
        users = new UserManager();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users user = users.getUserCookie(request);
        request.setAttribute("user", user);


        String action = request.getParameter("action");
        if (action == null) action = "";
        switch (action) {
            case "userDetail":
                users.userDetail(request, response);
                return;
            case "logout":
                users.logout(request, response);
                return;
            default:
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
                requestDispatcher.forward(request, response);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "";
        switch (action) {
            case "register":
                users.register(request, response);
                return;
            case "login":
                users.login(request, response);
        }
    }
}
