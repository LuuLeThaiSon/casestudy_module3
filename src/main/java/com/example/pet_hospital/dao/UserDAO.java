package com.example.pet_hospital.dao;

import com.example.pet_hospital.model.Users;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO extends MyConnection {
    private final String SELECT_ALL_USER = "select * from users ;";//sai đường dẫn
    private final String SELECT_ONE_USER = "select * from users where (id = ?);";//sai đường dẫn
    private final String INSERT_USER = "INSERT INTO users (userName, password, phone_number, email, address, role) VALUES (?, ?, ?, ?, ?, ?);";

    public boolean updateUser(Users user) {
        //        "INSERT INTO users (userName, password, phoneNumber, email, address, role) VALUES (?, ?, ?, ?, ?, ?);";
        try (PreparedStatement preparedStatement = getConnection().prepareStatement(INSERT_USER)) {
            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getPassWord());
            preparedStatement.setString(3, user.getPhoneNumber());
            preparedStatement.setString(4, user.getEmail());
            preparedStatement.setString(5, user.getAddress());
            preparedStatement.setInt(6, user.getRole());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public List<Users> findAllUser() {
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
    public Users findUserById(long index) {
        Users users = null;
        try (PreparedStatement preparedStatement = getConnection().prepareStatement(SELECT_ONE_USER)) {
            preparedStatement.setLong(1, index);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
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
}
