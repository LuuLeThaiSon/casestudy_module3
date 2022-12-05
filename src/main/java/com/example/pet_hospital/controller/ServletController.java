package com.example.pet_hospital.controller;

import com.example.pet_hospital.manger.PetManager;
import com.example.pet_hospital.manger.ServiceManager;
import com.example.pet_hospital.manger.UserManager;
import com.example.pet_hospital.model.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Controller", value = "/controller")
public class ServletController extends HttpServlet {
    UserManager users;
    PetManager pets;
    ServiceManager services;

    @Override
    public void init() throws ServletException {
        users = new UserManager();
        pets = new PetManager();
        services = new ServiceManager();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users user = users.getUserCookie(request);
        request.setAttribute("user", user);


        String action = request.getParameter("action");
        if (action == null) action = "";
        switch (action) {
            case "home":
                response.sendRedirect( "index.jsp");
                return;
            case "shop":
                response.sendRedirect( "shop-product.jsp");
                return;
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
        Users user = (Users) request.getAttribute("user");
        String action = request.getParameter("action");
        if (action == null) action = "";
        if (users == null) action = "login";
        switch (action) {
            case "register":
                users.register(request, response);
                return;
            case "login":
                users.login(request, response);
                return;
            case "listService":
                services.showServiceList(request, response);
                return;
            case "listPet":
                pets.showPetList(request, response);
                return;
            case "petDetail":
                pets.petDetail(request, response);
                return;
        }
    }
}
