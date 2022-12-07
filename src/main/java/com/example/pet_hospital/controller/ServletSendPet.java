package com.example.pet_hospital.controller;

import com.example.pet_hospital.dao.PetDAO;
import com.example.pet_hospital.dao.PetServiceDAO;
import com.example.pet_hospital.dao.ServiceDAO;
import com.example.pet_hospital.dao.UserPetDAO;
import com.example.pet_hospital.manger.UserManager;
import com.example.pet_hospital.model.*;

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
            createPetService(request,response);

        }
    }

    public UserPet updateUserPet(HttpServletRequest request) throws IOException {
        UserManager userManager = new UserManager();
        UserPetDAO userPetDAO = new UserPetDAO();
        Users user = userManager.getUserCookie(request);
        String petName = request.getParameter("petName");
        String petAge = request.getParameter("petAge");
        String hobbit = request.getParameter("hobbit");
        String species = request.getParameter("species");
        Species species1 = petDAO.findSpeciesById(Long.parseLong(species));
        long idUserPet = userPetDAO.getMamId() + 1;
        UserPet userPet = new UserPet(idUserPet,petName, Integer.parseInt(petAge), hobbit, species1 , user);
        userPetDAO.updateUserPet(userPet);
        return userPet;
    }

    public void createPetService(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Users users = new UserManager().getUserCookie(request);
        if(users != null ){
            long idService = Long.parseLong(request.getParameter("idService"));
            UserPet userPet = updateUserPet(request);
            Service service = new ServiceDAO().findServiceById(idService);
            PetService petService = new PetService(service, userPet, 0);

            new PetServiceDAO().updatePetService(petService);
            request.setAttribute("petService", petService);
            response.sendRedirect("ControllerLinhServlet");
        }else{
            response.sendRedirect("login.jsp");
        }
    }
}
