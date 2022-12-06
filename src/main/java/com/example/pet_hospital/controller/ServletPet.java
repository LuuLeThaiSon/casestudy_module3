package com.example.pet_hospital.controller;

import com.example.pet_hospital.dao.PetDAO;
import com.example.pet_hospital.manger.PetManager;
import com.example.pet_hospital.model.Pets;
import com.example.pet_hospital.model.Service;
import com.example.pet_hospital.model.Species;
import com.example.pet_hospital.son.SonServlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletPet", value = "/admin")
public class ServletPet extends HttpServlet {
    //sơn
    private PetManager petManager;
    @Override
    public void init(){
        petManager = new PetManager();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
//        if (action == null) {
//            action ="";
//        }
//
//        switch (action) {
//            case "showPet" :
//                findAllPet(request, response);
//                break;
//        }
        findAllPet(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
//        if (action == null) {
//            action = "";
//        }
//
//        switch (action) {
//            case "showPet" :
//                findAllPet(request, response);
//                break;
//        }
        findAllPet(request, response);

    }

    public void findAllPet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pets> pets = petManager.findAllPet(request);
        request.setAttribute("pets", pets);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin-account.jsp");
        requestDispatcher.forward(request, response);
    }

    public void findAllService(HttpServletRequest request, HttpServletResponse response) {
        List<Service> services = new ArrayList<>();

    }
}
