package com.example.pet_hospital.manger;

import com.example.pet_hospital.dao.MyConnection;
import com.example.pet_hospital.model.ServiceCategory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServiceCategoryDAO {
    private final Connection connection;
    public final String SELECT_ALL_SERVICES_CATEGORY = "SELECT * FROM service_category;";
    public final String SELECT_SERVICE_BY_ID = "select *from service_category where id = ?;";

    public ServiceCategoryDAO() {
        this.connection = MyConnection.getConnection();
    }

    public List<ServiceCategory> serviceCategories () {
        List<ServiceCategory> serviceCategories= new ArrayList<>();
        try(PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SERVICES_CATEGORY)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                serviceCategories.add(new ServiceCategory(id, name));
            }

        }catch (Exception e) {
            e.printStackTrace();
        }
        return serviceCategories;
    }
    public ServiceCategory findServiceById(Long id) {
        try (PreparedStatement preparedStatement =
                     connection.prepareStatement(SELECT_SERVICE_BY_ID)){
            preparedStatement.setLong(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Long id1 = resultSet.getLong("id");
                String name = resultSet.getString("name");
                return new ServiceCategory(id1, name);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
