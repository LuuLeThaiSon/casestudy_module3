package com.example.pet_hospital.controller;

import com.example.pet_hospital.dao.PetDAO;
import com.example.pet_hospital.manger.PetManager;
import com.example.pet_hospital.manger.ServiceFullDAO;
import com.example.pet_hospital.model.Pets;
import com.example.pet_hospital.model.Service;
import com.example.pet_hospital.model.Species;
import com.example.pet_hospital.son.ServiceDao;
import com.example.pet_hospital.son.ServiceManagerSon;
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
    private ServiceManagerSon serviceManager;
    private PetDAO petDAO;
    @Override
    public void init(){
        petManager = new PetManager();
        serviceManager = new ServiceManagerSon();
        petDAO = new PetDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action ="";
        }

        switch (action) {
            case "delete" :
                delete(request, response);
                break;
        }
        findAllPet(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "addNewPet" :
                addNewPet(request, response);
                break;
            case "editPet" :
                update(request, response);
                break;
        }
        findAllPet(request, response);

    }

    public void findAllPet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pets> pets = petManager.findAllPet(request);
        request.setAttribute("pets", pets);
        List<Service> services = serviceManager.findAllService(request);
        request.setAttribute("services", services);
        List<Species> species = petManager.findAllSpecies(request);
        request.setAttribute("species", species);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin-account.jsp");
        requestDispatcher.forward(request, response);
    }

    public void addNewPet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        petManager.save(request);
    }
    public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        petManager.save(request);
    }

    public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        petManager.deletePet(request);
    }
}
