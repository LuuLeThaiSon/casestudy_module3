package com.example.pet_hospital.controller;

import com.example.pet_hospital.dao.PetServiceDAO;
import com.example.pet_hospital.manger.UserManager;
import com.example.pet_hospital.model.PetService;
import com.example.pet_hospital.model.Pets;
import com.example.pet_hospital.model.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletCart", value = "/ServletCart")
public class ServletCart extends HttpServlet {

    private List<Pets> pets;

    @Override
    public void init() throws ServletException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) action = "";
        switch (action){
            case "delete":
                delete(request,response);
                return;
            default:
                showListCart(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    private void showListCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users user = new UserManager().getUserCookie(request);
        List<PetService> petServices = new PetServiceDAO().findAllServiceByUser(user.getId());
        RequestDispatcher rd = request.getRequestDispatcher("cart-service.jsp");
        request.setAttribute("service", petServices);
        rd.forward(request,response);
    }
    private void delete(HttpServletRequest request, HttpServletResponse response) {
        String userPetId = request.getParameter("userPetId");
        String serviceId = request.getParameter("serviceId");
        try {
            new PetServiceDAO().deletePetService(Long.parseLong(userPetId),Long.parseLong(serviceId));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        Users user = new UserManager().getUserCookie(request);
        List<PetService> petServices = new PetServiceDAO().findAllServiceByUser(user.getId());
        request.setAttribute("service", petServices);
        try {
            response.sendRedirect("cart-service.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
