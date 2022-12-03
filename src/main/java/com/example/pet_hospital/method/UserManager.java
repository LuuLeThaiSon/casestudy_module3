package com.example.pet_hospital.method;

import javax.servlet.http.HttpServletRequest;

public class UserManager {
    // Chứa Các phương thuc đăng ky dăng nhập, PHương thức đều là static
    public static void register(HttpServletRequest request){
        //parameter:  Username(*),Password(*),PhoneNumber(*),Email(*),Address(*)
        //check hết tất cả các dữ liệu
        //updateUser từ DAO
        //gán lại user cho attribute có tên là user
        //điều hướng về trang chủ
        // nếu quá trình đăng ký lỗi trong khi check điều hướng về login
    }
    public static void login(HttpServletRequest request){
        //parameter:  Username(*),Password(*)
        //check hết tất cả các dữ liệu
        //gán lại user cho attribute có tên là user
        //điều hướng về trang chủ
    }
}
