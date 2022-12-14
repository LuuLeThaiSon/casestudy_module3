package com.example.pet_hospital.manger;

import com.example.pet_hospital.dao.UserDAO;
import com.example.pet_hospital.model.Users;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.regex.Pattern;

public class UserManager extends Direct {
    public void register(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String rePassword = request.getParameter("rePassword");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String address = request.getParameter("address");

        if (!password.equals(rePassword)){
            response.sendRedirect("register.jsp");
            return;
        }
        UserDAO userDAO = new UserDAO();
        Users users = new Users(0, userName,password,email,phoneNumber,address,0);
        userDAO.updateUser(users);
        response.sendRedirect("login.jsp");
    }
    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        UserDAO userDAO = new UserDAO();
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        List<Users> users = userDAO.findAllUser();
        Users user = null;
        for (Users u : users){
            if(u.getUserName().equals(userName) && u.getPassWord().equals(password)){
             user = u;
             break;
            }
        }
        if (user == null){
            request.setAttribute("tit", "Wrong UserName Or Password");
            try {
                request.getRequestDispatcher("login.jsp").forward(request,response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            }
        }else {
            response.addCookie(new Cookie("userId", String.valueOf(user.getId())));
            response.addCookie(new Cookie("userName", user.getUserName()));
            response.addCookie(new Cookie("userPassword", user.getPassWord()));
            if (user.getRole() == 1) {
                response.sendRedirect("/admin");
            } else {
                response.sendRedirect("controller");
            }
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
        UserDAO userDAO = new UserDAO();
        user = userDAO.findUserById(id);
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
}
