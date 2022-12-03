package com.example.pet_hospital.method;

import com.example.pet_hospital.model.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    private static String url = "jdbc:mysql://localhost:3306/pet_hospital_db?useSSL=false";
    private static String username = "root";
    private static String password = "12345678";
    private static Connection connection;
    private static  final String SELECT_ALL_USER = "select * from user ;";

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }


    static public List<Pets> selectionPets() {
        return null;
    }


    static public boolean deletePets(int index) {
        return false;
    }


    static public boolean updatePets(Pets pets) {
        return false;
    }


    static public List<PetService> selectionPetService() {
        return null;
    }


    static public boolean deletePetService(int index) {
        return false;
    }


    static public boolean updatePetService(PetService petService) {
        return false;
    }

    static public List<PetCartDetail> selectionPetCartDetail() {
        return null;
    }

    static public boolean deletePetCartDetail(int index) {
        return false;
    }

    static public boolean updatePetCartDetail(PetCartDetail petCartDetail) {
        return false;
    }

    static public List<Service> selectionService() {
        return null;
    }

    static public boolean deleteService(int index) {
        return false;
    }

    static public boolean updateService(Service service) {
        return false;
    }

    static public List<UserPet> selectionUserPet() {
        return null;
    }

    static public boolean deleteUserPet(int index) {
        return false;
    }

    static public boolean updateUserPet(UserPet userPet) {
        return false;
    }

    static public List<Users> selectionUser() {
        List<Users> users = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USER)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("username");
                String password = rs.getString("password");
                String phone = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int role = rs.getInt("role");
                users.add(new Users(id, name, password, phone, email, address, role));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
    static public boolean deleteUser(int index) {
        return false;
    }

    static public boolean updateUser(Users users) {
        return false;
    }

    static public List<Species> selectionSpecies() {
        return null;
    }

    static public boolean deleteSpecies(int index) {
        return false;
    }

    static public boolean updateSpecies(Species species) {
        return false;
    }

    static public List<ServiceCategory> selectionServiceCategory() {
        return null;
    }

    static public boolean deleteServiceCategory(int index) {
        return false;
    }

    static public boolean updateServiceCategory(ServiceCategory serviceCategory) {
        return false;
    }

}
