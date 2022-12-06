package com.example.pet_hospital.controller;


import com.example.pet_hospital.manger.ServiceManager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ControllerLinhServlet", value = "/ControllerLinhServlet")
public class ControllerLinhServlet extends HttpServlet {
    private ServiceManager serviceManager;
    @Override
    public void init() {
        serviceManager = new ServiceManager();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "detail":

                break;
            case "update":
                ;
                break;
            case "delete":

                break;
            default:
                displayListService(request,response);
        }
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    private void displayListService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("shop-service.jsp");
        request.setAttribute("servicecategory", serviceManager.showServiceList(request));
        requestDispatcher.forward(request,response);
    }
}
