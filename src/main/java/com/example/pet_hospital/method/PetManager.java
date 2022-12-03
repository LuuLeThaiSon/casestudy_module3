package com.example.pet_hospital.method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PetManager {
    public void showPetList(HttpServletRequest request, HttpServletResponse response){
        //lấy dữ liệu Pet từ DAO gán cho attribute chuyển tiếp cho trang cần hiển thị
    }
    public void petDetail(HttpServletRequest request,HttpServletResponse response){
        //(parameter: id)
        // Lấy dữ liệu pet từ DAO , tìm đối tương pets có id trung khớp
        // gán đối tượng đó cho attribute chuyên tiếp cho trang hiển thị
    }
}
