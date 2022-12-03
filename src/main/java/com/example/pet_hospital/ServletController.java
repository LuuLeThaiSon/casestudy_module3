package com.example.pet_hospital;

import com.example.pet_hospital.method.PetManager;
import com.example.pet_hospital.method.ServiceManager;
import com.example.pet_hospital.method.UserManager;
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

    private void direct(HttpServletRequest request, HttpServletResponse response, String path) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(path);
        requestDispatcher.forward(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) action = "";
        switch (action){
            case "home":
                direct(request, response, "Web_Pet/index.jsp");
                break;
            case "shop":
                direct(request, response, "Web_Pet/shop-product.jsp");
                break;
            case "userDetail":
                users.userDetail(request,response);
                break;


        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users user = (Users) request.getAttribute("user");
        String action = request.getParameter("action");
        if(action == null) action = "";
        if(users == null) action = "login";
        switch (action){
            case "register":
                users.register(request,response);
                break;
            case "login":
                users.login(request,response);
                break;
            case "listService":
                services.showServiceList(request,response);
                break;
            case "listPet":
                pets.showPetList(request,response);
                break;
            case "petDetail":
                pets.petDetail(request,response);
                break;
        }
    }
}
