package com.example.pet_hospital.manger;

import com.example.pet_hospital.dao.PetDAO;
import com.example.pet_hospital.dao.ServiceDAO;
import com.example.pet_hospital.model.Pets;
import com.example.pet_hospital.model.Service;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class CartManger {

    public void addPetCart(HttpServletRequest request, HttpServletResponse response, List<Pets> pets){
        PetDAO petDAO = new PetDAO();
        String petId = request.getParameter("petId");
        if (petId == null) return;
        try {
            long id = Long.parseLong(petId);
            Pets pets1 = petDAO.findPetsById(id);
            if(pets1.getQuantity()<0){
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("shop-product.jsp");
                request.setAttribute("alert", "Hết Hàng");
                requestDispatcher.forward(request,response);
            }
            pets.add(pets1);
            response.sendRedirect("shop-product.jsp");
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    public void addServiceCart(HttpServletRequest request, HttpServletResponse response, List<Service> services){
        ServiceDAO serviceDAO = new ServiceDAO();
        String petId = request.getParameter("petId");
        if (petId == null) return;
        try {
            long id = Long.parseLong(petId);
            Service service = serviceDAO.findServiceById(id);
            services.add(service);
            response.sendRedirect("shop-service.jsp");
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
