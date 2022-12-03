package com.example.pet_hospital.method;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class MyConnection implements IDAO {
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

    @Override
    public List<Object> selectionPets() {
        return null;
    }

    @Override
    public boolean deletePets(int index) {
        return false;
    }

    @Override
    public boolean updatePets(Object object) {
        return false;
    }

    @Override
    public List<Object> selectionPetService() {
        return null;
    }

    @Override
    public boolean deletePetService(int index) {
        return false;
    }

    @Override
    public boolean updatePetService(Object object) {
        return false;
    }

    @Override
    public List<Object> selectionPetCartDetail() {
        return null;
    }

    @Override
    public boolean deletePetCartDetail(int index) {
        return false;
    }

    @Override
    public boolean updatePetCartDetail(Object object) {
        return false;
    }

    @Override
    public List<Object> selectionService() {
        return null;
    }

    @Override
    public boolean deleteService(int index) {
        return false;
    }

    @Override
    public boolean updateService(Object object) {
        return false;
    }

    @Override
    public List<Object> selectionUserPet() {
        return null;
    }

    @Override
    public boolean deleteUserPet(int index) {
        return false;
    }

    @Override
    public boolean updateUserPet(Object object) {
        return false;
    }

    @Override
    public List<Object> selectionUser() {
        return null;
    }

    @Override
    public boolean deleteUser(int index) {
        return false;
    }

    @Override
    public boolean updateUser(Object object) {
        return false;
    }

    @Override
    public List<Object> selectionSpeciesCategory() {
        return null;
    }

    @Override
    public boolean deleteSpeciesCategory(int index) {
        return false;
    }

    @Override
    public boolean updateSpeciesCategory(Object object) {
        return false;
    }
}
