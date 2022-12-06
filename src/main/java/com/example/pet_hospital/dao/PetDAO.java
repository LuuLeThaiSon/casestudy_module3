package com.example.pet_hospital.dao;

import com.example.pet_hospital.model.Pets;
import com.example.pet_hospital.model.Service;
import com.example.pet_hospital.model.Species;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PetDAO extends MyConnection{
    private final Connection connection;

    private final String FIND_ALL_PETS = "select * from pets;";
    private final String FIND_SPECIES_BY_ID = "select * from species where id = ?;";
    private final String FIND_ALL_SPECIES = "select * from species;";
    private final String FIND_PETS_BY_SPECIES_ID = "select * from pets where species_id = ?;";
    private final String FIND_PEST_BY_NAME = "select * from pets where name like concat('%',?,'%');";
    private final String SELECT_BY_PRICE = "select * from pets where price >= ? and price <= ?;";
    private final String SORT_BY = "select * from pets order by ";

    public PetDAO() {
        connection = MyConnection.getConnection();
    }


    public Species findSpeciesById(Long id) {
        Species species = null;
        try(PreparedStatement preparedStatement = connection.prepareStatement(FIND_SPECIES_BY_ID)) {
            preparedStatement.setLong(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                species = new Species(id, name);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return species;
    }

    public List<Pets> findAllPet() {
        List<Pets> pets = new ArrayList<>();
        try(PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL_PETS)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                int age = resultSet.getInt("age");
                double price = resultSet.getDouble("price");
                String description = resultSet.getString("description");
                int quantity = resultSet.getInt("quantity");
                String img = resultSet.getString("img");
                Long speciesId = resultSet.getLong("species_id");
                pets.add(new Pets(id, name, age, price, description, quantity, img, findSpeciesById(speciesId)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pets;
    }

    public List<Species> findAllSpecies() {
        List<Species> species = new ArrayList<>();
        try(PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL_SPECIES)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                species.add(new Species(id, name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return species;
    }

    public List<Pets> findPetsBySpeciesId(String speciesId) {
        List<Pets> pets = new ArrayList<>();
        try(PreparedStatement preparedStatement = connection.prepareStatement(FIND_PETS_BY_SPECIES_ID)) {
            preparedStatement.setLong(1, Long.parseLong(speciesId));
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                int age = resultSet.getInt("age");
                double price = resultSet.getDouble("price");
                String description = resultSet.getString("description");
                int quantity = resultSet.getInt("quantity");
                String img = resultSet.getString("img");
                pets.add(new Pets(id, name, age, price, description, quantity, img, findSpeciesById(Long.parseLong(speciesId))));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pets;
    }

    public List<Pets> findPetsByName(String searchKeyWord) {
        List<Pets> pets = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(FIND_PEST_BY_NAME)) {
            preparedStatement.setString(1, searchKeyWord);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                int age = resultSet.getInt("age");
                double price = resultSet.getDouble("price");
                String description = resultSet.getString("description");
                int quantity = resultSet.getInt("quantity");
                String img = resultSet.getString("img");
                Long speciesId = resultSet.getLong("species_id");
                pets.add(new Pets(id, name, age, price, description, quantity, img, findSpeciesById(speciesId)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pets;
    }

    public List<Pets> selectByPrice(String select) {
        List<Pets> pets = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_PRICE)) {
            String[] selectArr = select.split("-");
            preparedStatement.setInt(1, Integer.parseInt(selectArr[0]));
            preparedStatement.setInt(2, Integer.parseInt(selectArr[1]));
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                int age = resultSet.getInt("age");
                double price = resultSet.getDouble("price");
                String description = resultSet.getString("description");
                int quantity = resultSet.getInt("quantity");
                String img = resultSet.getString("img");
                Long speciesId = resultSet.getLong("species_id");
                pets.add(new Pets(id, name, age, price, description, quantity, img, findSpeciesById(speciesId)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pets;
    }

    public List<Pets> sortPets(String sort) {
        List<Pets> pets = new ArrayList<>();
        try(PreparedStatement preparedStatement = connection.prepareStatement(SORT_BY + sort );) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                int age = resultSet.getInt("age");
                double price = resultSet.getDouble("price");
                String description = resultSet.getString("description");
                int quantity = resultSet.getInt("quantity");
                String img = resultSet.getString("img");
                Long speciesId = resultSet.getLong("species_id");
                pets.add(new Pets(id, name, age, price, description, quantity, img, findSpeciesById(speciesId)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pets;
    }

}
