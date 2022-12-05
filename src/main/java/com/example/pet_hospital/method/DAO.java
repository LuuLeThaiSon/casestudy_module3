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
    private static final String SELECT_ALL_USER = "select * from users ;";//sai đường dẫn
    private static final String SELECT_ONE_USER = "select * from users where (id = ?);";//sai đường dẫn

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
        // ở đây gọi phương thức connec đưuọc gán đường dẫn không phải giọi thuộc tinh connect vì nó null;
        try (PreparedStatement preparedStatement = getConnection().prepareStatement(SELECT_ALL_USER)) {
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

    public static Users selectOneUser(long index) {
        Users users = null;
        try (PreparedStatement preparedStatement = getConnection().prepareStatement(SELECT_ONE_USER)) {
            preparedStatement.setLong(1, index);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                long id = resultSet.getLong("id");
                String name = resultSet.getString("username");
                String password = resultSet.getString("password");
                String phone = resultSet.getString("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                int role = resultSet.getInt("role");
                users = new Users(id, name, password, phone, email, address, role);
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
