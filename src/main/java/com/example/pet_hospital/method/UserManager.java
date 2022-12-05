package com.example.pet_hospital.method;

import com.example.pet_hospital.model.Users;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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
    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
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
            response.sendRedirect("login.jsp" );
        }else {
            response.addCookie(new Cookie("userId", String.valueOf(user.getId())));
            response.addCookie(new Cookie("userName", user.getUserName()));
            response.addCookie(new Cookie("userPassword", user.getPassWord()));
            response.sendRedirect("controller");
        }

    }

    public Users getUserCookie(HttpServletRequest request){
        Users user;
        long id = 0;
        String userName = null;
        String password = null;
        if(request.getCookies() != null){
            for(Cookie cookie : request.getCookies()){
                if(cookie.getName().equals("userId")) id = Long.parseLong(cookie.getValue());
                if(cookie.getName().equals("userName")) userName = cookie.getValue();
                if(cookie.getName().equals("userPassword")) password = cookie.getValue();
            }
        }
        user = DAO.selectOneUser(id);
        if (user == null || !user.getUserName().equals(userName) || !user.getPassWord().equals(password)){
            user = null;
        }
        return user;
    }

    public void userDetail(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Users users = (Users) request.getAttribute("user");
        if (users == null){
            response.sendRedirect("login.jsp");
        }else{
            response.sendRedirect("my-account.jsp");
        }
    }

    public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        if (request.getCookies() != null){
            for(Cookie cookie : request.getCookies()){
                if(cookie.getName().equals("userId")){
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
                if(cookie.getName().equals("userName")){
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
                if(cookie.getName().equals("userPassword")){
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
            }
        }
        response.sendRedirect("controller");
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
