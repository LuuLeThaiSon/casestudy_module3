package com.example.pet_hospital.manger;

import com.example.pet_hospital.dao.MyConnection;
import com.example.pet_hospital.manger.ServiceCategoryDAO;
import com.example.pet_hospital.model.Service;
import com.example.pet_hospital.model.ServiceCategory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServiceFullDAO {
    private Connection connection;
    private ServiceCategoryDAO serviceCategoryDao;
    private final String SELECT_ALL_SERVICES = "select * from service;";

    public ServiceFullDAO() {
        connection = MyConnection.getConnection();
        serviceCategoryDao = new ServiceCategoryDAO();
    }

    public List<Service> findAllServices() {
        List<Service> services = new ArrayList();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SERVICES)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                double price = resultSet.getDouble("price");
                int time_box = resultSet.getInt("time_box");
                Long category_id = resultSet.getLong("category_id");
                ServiceCategory serviceCategory = serviceCategoryDao.findServiceById(category_id);
                services.add(new Service(id,name,price,time_box,serviceCategory));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } return services;
    }
}
