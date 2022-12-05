package com.example.pet_hospital.son;

import com.example.pet_hospital.method.MyConnection;
import com.example.pet_hospital.model.Pets;
import com.example.pet_hospital.model.Species;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControllerSon {
    private final Connection connection;

    private final String FIND_ALL_PETS = "select * from pets;";
    private final String FIND_SPECIES_BY_ID = "select * from species where id = ?;";

    public ControllerSon() {
        connection = MyConnection.getConnection();
    }

    public Species findSpeciesById(Long id) {
        try(PreparedStatement preparedStatement = connection.prepareStatement(FIND_SPECIES_BY_ID)) {
            preparedStatement.setLong(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                return new Species(id, name);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Pets> findAllPet() {
        List<Pets> pets = new ArrayList<>();
        try(PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL_PETS)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                Integer age = resultSet.getInt("age");
                Double price = resultSet.getDouble("price");
                String description = resultSet.getString("description");
                Integer quantity = resultSet.getInt("quantity");
                String img = resultSet.getString("img");
                Long speciesId = resultSet.getLong("species_id");
                pets.add(id, name, age, price, description, quantity, img, findSpeciesById(speciesId));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pets;
    }
}
