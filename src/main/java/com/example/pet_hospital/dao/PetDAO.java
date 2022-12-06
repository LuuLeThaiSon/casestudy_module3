package com.example.pet_hospital.dao;

import com.example.pet_hospital.model.Pets;
import com.example.pet_hospital.model.Species;

import javax.servlet.http.HttpServletRequest;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PetDAO extends MyConnection {
    private final String FIND_ALL_PETS = "select * from pets;";
    private final String FIND_PETS_BY_ID = "select * from pets where id = ?;";
    private final String FIND_SPECIES_BY_ID = "select * from species where id = ?;";
    private final String FIND_ALL_SPECIES = "select * from species;";

    public List<Pets> findAllPet(HttpServletRequest request) {
        List<Pets> pets = new ArrayList<>();
        try (PreparedStatement preparedStatement = getConnection().prepareStatement(FIND_ALL_PETS)) {
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
                pets.add(new Pets(id, name, age, price, description, quantity, img, findSpeciesById(speciesId)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pets;
    }

    public Species findSpeciesById(Long id) {
        try (PreparedStatement preparedStatement = getConnection().prepareStatement(FIND_SPECIES_BY_ID)) {
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

    public List<Species> findAllSpecies() {
        List<Species> species = new ArrayList<>();
        try (PreparedStatement preparedStatement = getConnection().prepareStatement(FIND_ALL_SPECIES);) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                Species s = new Species(id, name);
                species.add(s);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return species;
    }

    public Pets findPetsById(long index) {
        Pets pets = null;
        try (PreparedStatement preparedStatement = getConnection().prepareStatement(FIND_PETS_BY_ID)) {
            preparedStatement.setLong(1, index);
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
                pets = new Pets(id, name, age, price, description, quantity, img, findSpeciesById(speciesId));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pets;
    }
}
