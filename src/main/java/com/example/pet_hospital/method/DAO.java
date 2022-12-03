package com.example.pet_hospital.method;

import com.example.pet_hospital.model.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class DAO {
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
        return null;
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
