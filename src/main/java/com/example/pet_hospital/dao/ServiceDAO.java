package com.example.pet_hospital.dao;

import com.example.pet_hospital.model.Pets;
import com.example.pet_hospital.model.Service;
import com.example.pet_hospital.model.ServiceCategory;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ServiceDAO extends MyConnection {
    private final String FIND_SERVICE_BY_ID = "select * from service where id = ?;";

    public Service findServiceById(long index){
        Service service = null;
        try (PreparedStatement preparedStatement = getConnection().prepareStatement(FIND_SERVICE_BY_ID)) {
            preparedStatement.setLong(1, index);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                double price = resultSet.getDouble("price");
                int time_box = resultSet.getInt("time_box");
                long category_id = resultSet.getInt("category_id");
                ServiceCategoryDAO serviceCategoryDAO = new ServiceCategoryDAO();
                ServiceCategory a = serviceCategoryDAO.findServiceCategoryById(category_id);
                service = new Service(id,name, price, time_box, a);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return service;
    }
}
