package com.example.pet_hospital.dao;

import com.example.pet_hospital.model.Service;
import com.example.pet_hospital.model.ServiceCategory;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ServiceCategoryDAO extends MyConnection {
    private final String FIND_SERVICE_CATEGORY_BY_ID = "select * from service_category where id = ?;";

    public ServiceCategory findServiceCategoryById(long index){
        ServiceCategory a = null;
        try (PreparedStatement preparedStatement = getConnection().prepareStatement(FIND_SERVICE_CATEGORY_BY_ID)) {
            preparedStatement.setLong(1, index);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                a = new ServiceCategory(id,name);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return a;

    }
}
