package com.example.pet_hospital.method;

import com.example.pet_hospital.model.Users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.regex.Pattern;

public class UserManager extends Direct {
    private Pattern pattern;
    // Chứa Các phương thuc đăng ky dăng nhập, PHương thức đều là static
    public void register(HttpServletRequest request, HttpServletResponse response){
        //parameter:  Username(*),Password(*),PhoneNumber(*),Email(*),Address(*)
        //check hết tất cả các dữ liệu
        //updateUser từ DAO
        //gán lại user cho attribute có tên là user
        //điều hướng về trang chủ
        // nếu quá trình đăng ký lỗi trong khi check điều hướng về login
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phonenumber = request.getParameter("phonenumber");
        pattern = Pattern.compile(USERNAME_PATTERN);
        if (!validate(userName)){

        }
        pattern = Pattern.compile(EMAIL);
        if (!validate(email)){

        }






    }
    public void login(HttpServletRequest request, HttpServletResponse response){
        //parameter:  Username(*),Password(*)
        //check hết tất cả các dữ liệu
        //gán lại user cho attribute có tên là user
        //điều hướng về trang chủ
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        List<Users> users = DAO.selectionUser();
        Users user = null;
        for (Users u : users){
            if(u.getUserName().equals(userName) && u.getPassWord().equals(password)){
             user = u;
             break;
            }
        }
        if (user == null){
            direct(request,response, "Web_Pet/login.jsp" );
        }else {
            request.setAttribute("user", user);
            direct(request,response,"controller" );
        }

    }

    public void userDetail(HttpServletRequest request, HttpServletResponse response){
        Users users = (Users) request.getAttribute("user");
        if (users == null){
            direct(request,response,"Web_Pet/login.jsp");
        }else{
            direct(request,response,"Web_Pet/my-account.jsp");
        }
    }


    private static final String USERNAME_PATTERN = "^[a-z0-9._-]{3,15}$";
    private static final String EMAIL = "\\b[A-Z0-9._%-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}\\b";

    public void UsernameValidator() {
        pattern = Pattern.compile(USERNAME_PATTERN);
    }

    public boolean validate(final String check) {
        return pattern.matcher(check).matches();
    }
}
