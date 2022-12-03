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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users users = (Users) request.getAttribute("user");
        String action = request.getParameter("action");
        if(action == null) action = "";
        if(users == null) action = "login";
        switch (action){
            case "register":
                UserManager.register(request);
                break;
            case "login":
                UserManager.login(request);
                break;
            case "listService":
                ServiceManager.showServiceList(request);
                break;
            case "listPet":
                PetManager.showPetList(request);
                break;
            case "petDetail":
                PetManager.petDetail(request);
                break;
        }
    }
}
