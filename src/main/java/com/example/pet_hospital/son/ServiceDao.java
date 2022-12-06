package com.example.pet_hospital.son;

import com.example.pet_hospital.dao.MyConnection;
import com.example.pet_hospital.model.Service;
import com.example.pet_hospital.model.ServiceCategory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServiceDao {
    private Connection connection;

    public ServiceDao() {
        connection = MyConnection.getConnection();
    }

    private final String FIND_ALL_CATEGORIES = "select * from service_category;";

    private final String FIND_CATEGORY_BY_ID = "select * from service_category where id = ?;";
    private final String FIND_ALL_SERVICES = "select * from service;";

    public List<ServiceCategory> findAllCategories() {
        List<ServiceCategory> serviceCategories = new ArrayList<>();
        try(PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL_CATEGORIES)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                serviceCategories.add(new ServiceCategory(id, name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return serviceCategories;
    }

    public ServiceCategory findCategoryById(Long id) {
        try(PreparedStatement preparedStatement = connection.prepareStatement(FIND_CATEGORY_BY_ID)) {
            preparedStatement.setLong(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                return new ServiceCategory(id, name);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Service> findAllService() {
        List<Service> services = new ArrayList<>();
        try(PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL_SERVICES)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                Double price = resultSet.getDouble("Price");
                Integer timeBox = resultSet.getInt("time_box");
                Long categoryId = resultSet.getLong("category_id");
                services.add(new Service(id, name, price, timeBox, findCategoryById(categoryId)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return services;
    }


}
