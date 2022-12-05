package com.example.pet_hospital.son;

import com.example.pet_hospital.model.Pets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SonServlet", value = "/son")
public class SonServlet extends HttpServlet {
    ControllerSon controllerSon;

    @Override
    public void init(){
        controllerSon = new ControllerSon();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        findAllPets(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        findAllPets(request, response);
    }

    public void findAllPets(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pets> pets = controllerSon.findAllPet(request);
        request.setAttribute("pets", pets);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("shop-product.jsp");
        requestDispatcher.forward(request, response);
    }
}
