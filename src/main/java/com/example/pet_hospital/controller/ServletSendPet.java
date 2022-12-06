package com.example.pet_hospital.controller;

import com.example.pet_hospital.dao.PetDAO;
import com.example.pet_hospital.dao.UserPetDAO;
import com.example.pet_hospital.manger.UserManager;
import com.example.pet_hospital.model.Species;
import com.example.pet_hospital.model.UserPet;
import com.example.pet_hospital.model.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletSendPet", value = "/ServletSendPet")
public class ServletSendPet extends HttpServlet {
    ServletSendPet servletSendPet;
    PetDAO petDAO;
    @Override
    public void init() throws ServletException {
        petDAO = new PetDAO();
        servletSendPet = new ServletSendPet();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Species> species = petDAO.findAllSpecies();
        request.setAttribute("species", species);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("pet-info.jsp");
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) action = "";
        switch (action){
            case "add":
                update(request, response);
        }
    }

    public void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
        UserManager userManager = new UserManager();
        UserPetDAO userPetDAO = new UserPetDAO();
        Users user = userManager.getUserCookie(request);

        String petName = request.getParameter("petName");
        String petAge = request.getParameter("petAge");
        String hobbit = request.getParameter("hobbit");
        String species = request.getParameter("species");
        Species species1 = petDAO.findSpeciesById(Long.parseLong(species));

        UserPet userPet = new UserPet(0,petName, Integer.parseInt(petAge), hobbit, species1 , user);
        userPetDAO.updateUserPet(userPet);
        response.sendRedirect("ServletSendPet");
    }
}
