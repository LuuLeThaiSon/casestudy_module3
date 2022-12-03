package com.example.pet_hospital.method;

import javax.servlet.http.HttpServletRequest;

public class PetManager {
    public static void showPetList(HttpServletRequest request){
        //lấy dữ liệu Pet từ DAO gán cho attribute chuyển tiếp cho trang cần hiển thị
    }
    public static void petDetail(HttpServletRequest request){
        //(parameter: id)
        // Lấy dữ liệu pet từ DAO , tìm đối tương pets có id trung khớp
        // gán đối tượng đó cho attribute chuyên tiếp cho trang hiển thị
    }
}
