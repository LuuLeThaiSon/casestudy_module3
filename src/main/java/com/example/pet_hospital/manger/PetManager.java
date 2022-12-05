package com.example.pet_hospital.manger;

import com.example.pet_hospital.dao.PetDAO;
import com.example.pet_hospital.model.Pets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class PetManager {
    public void showPetList(HttpServletRequest request, HttpServletResponse response){
        //lấy dữ liệu Pet từ DAO gán cho attribute chuyển tiếp cho trang cần hiển thị
    }
    public void petDetail(HttpServletRequest request,HttpServletResponse response){
        //(parameter: id)
        // Lấy dữ liệu pet từ DAO , tìm đối tương pets có id trung khớp
        // gán đối tượng đó cho attribute chuyên tiếp cho trang hiển thị
    }

    public void findAllPets(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PetDAO petDAO = new PetDAO();
        List<Pets> pets = petDAO.findAllPet(request);
        request.setAttribute("pets", pets);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("shop-product.jsp");
        requestDispatcher.forward(request, response);
    }
}
