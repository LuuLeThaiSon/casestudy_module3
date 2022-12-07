package com.example.pet_hospital.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class MyConnection {
    private static String url = "jdbc:mysql://localhost:3306/pet_hospital_db?useSSL=false";
    private static String username = "root";
    private static String password = "12345678";
    private static Connection connection;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
