package com.example.pet_hospital.son;

import com.example.pet_hospital.model.Pets;
import com.example.pet_hospital.model.Species;

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

        switch (action) {
            case "selectAllPets" :
                findAllPets(request, response);
                break;
            case "sortBy":
                sortBy(request, response);
                break;
        }
        findAllPets(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "selectSpecies":
                findPetsBySpecies(request, response);
                break;
            case "searchByName":
                findPetsByName(request, response);
                break;
            case "selectByPrice":
                selectByPrice(request, response);
                break;
        }
        findAllPets(request, response);
    }

    public void findAllPets(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pets> pets = controllerSon.findAllPet(request);
        List<Species> species = controllerSon.findAllSpecies(request);
        request.setAttribute("pets", pets);
        request.setAttribute("species", species);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("shop-product.jsp");
        requestDispatcher.forward(request, response);
    }

    public void findPetsBySpecies(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pets> pets = controllerSon.findPetsBySpeciesId(request);
        List<Species> species = controllerSon.findAllSpecies(request);
        request.setAttribute("pets", pets);
        request.setAttribute("species", species);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("shop-product.jsp");
        requestDispatcher.forward(request, response);
    }

    public void findPetsByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pets> pets = controllerSon.findPetsByName(request);
        List<Species> species = controllerSon.findAllSpecies(request);
        request.setAttribute("pets", pets);
        request.setAttribute("species", species);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("shop-product.jsp");
        requestDispatcher.forward(request, response);
    }

    public void selectByPrice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pets> pets = controllerSon.selectByPrice(request);
        List<Species> species = controllerSon.findAllSpecies(request);
        request.setAttribute("pets", pets);
        request.setAttribute("species", species);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("shop-product.jsp");
        requestDispatcher.forward(request, response);
    }
    public void sortBy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pets> pets = controllerSon.sortPets(request);
        List<Species> species = controllerSon.findAllSpecies(request);
        request.setAttribute("pets", pets);
        request.setAttribute("species", species);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("shop-product.jsp");
        requestDispatcher.forward(request, response);
    }
}
