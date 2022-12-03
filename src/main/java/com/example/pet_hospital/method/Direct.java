package com.example.pet_hospital.method;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Direct {
    public void direct(HttpServletRequest request, HttpServletResponse response, String path) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(path);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
