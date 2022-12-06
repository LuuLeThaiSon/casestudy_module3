package com.example.pet_hospital.dao;

import com.example.pet_hospital.model.UserPet;
import com.example.pet_hospital.model.Users;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserPetDAO extends MyConnection {

    private final String INSERT_USER_PET = "INSERT INTO user_pet (name, age, hobbit, species_id, user_id) VALUES (?, ?, ?, ?, ?);";


    public boolean updateUserPet(UserPet userPet) {
//       "INSERT INTO user_pet (name, age, hobbit, species_id, user_id) VALUES (?, ?, ?, ?, ?);";
        try (PreparedStatement preparedStatement = getConnection().prepareStatement(INSERT_USER_PET)) {
            preparedStatement.setString(1, userPet.getName());
            preparedStatement.setInt(2, userPet.getAge());
            preparedStatement.setString(3, userPet.getHobbit());
            preparedStatement.setLong(4, userPet.getSpecies().getId());
            preparedStatement.setLong(5, userPet.getUsers().getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

}
