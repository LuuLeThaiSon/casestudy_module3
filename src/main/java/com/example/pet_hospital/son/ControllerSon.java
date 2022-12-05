package com.example.pet_hospital.son;

import com.example.pet_hospital.dao.MyConnection;
import com.example.pet_hospital.model.Pets;
import com.example.pet_hospital.model.Species;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ControllerSon {
    private final Connection connection;

    private final String FIND_ALL_PETS = "select * from pets;";
    private final String FIND_SPECIES_BY_ID = "select * from species where id = ?;";
    private final String FIND_ALL_SPECIES = "select * from species;";
    private final String FIND_PETS_BY_SPECIES_ID = "select * from pets where species_id = ?;";
    private final String FIND_PEST_BY_NAME = "select * from pets where name like concat('%',?,'%');";
    private final String SELECT_BY_PRICE = "select * from pets where price >= ? and price <= ?;";

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

    public List<Pets> findAllPet(HttpServletRequest request) {
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
                pets.add(new Pets(id, name, age, price, description, quantity, img, findSpeciesById(speciesId)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pets;
    }

    public List<Species> findAllSpecies(HttpServletRequest request) {
        List<Species> species = new ArrayList<>();
        try(PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL_SPECIES)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                species.add(new Species(id, name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return species;
    }

    public List<Pets> findPetsBySpeciesId(HttpServletRequest request) {
        String speciesId = request.getParameter("speciesId");
        List<Pets> pets = new ArrayList<>();
        try(PreparedStatement preparedStatement = connection.prepareStatement(FIND_PETS_BY_SPECIES_ID)) {
            preparedStatement.setLong(1, Long.parseLong(speciesId));
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                Integer age = resultSet.getInt("age");
                Double price = resultSet.getDouble("price");
                String description = resultSet.getString("description");
                Integer quantity = resultSet.getInt("quantity");
                String img = resultSet.getString("img");
                pets.add(new Pets(id, name, age, price, description, quantity, img, findSpeciesById(Long.parseLong(speciesId))));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pets;
    }

    public List<Pets> findPetsByName(HttpServletRequest request) {
        List<Pets> pets = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(FIND_PEST_BY_NAME)) {
            String searchKeyWord = request.getParameter("search");
            preparedStatement.setString(1, searchKeyWord);
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

    public List<Pets> selectByPrice(HttpServletRequest request) {
        List<Pets> pets = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_PRICE)) {
            String select = request.getParameter("selectByPrice");
            String[] selectArr = select.split("-");
            preparedStatement.setInt(1, Integer.parseInt(selectArr[0]));
            preparedStatement.setInt(2, Integer.parseInt(selectArr[1]));
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
}
