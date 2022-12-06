package com.example.pet_hospital.manger;

import com.example.pet_hospital.connection.MyConnection;
import com.example.pet_hospital.model.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServiceDAO {
    private Connection connection;
    private final String SELECT_ALL_SERVICES = "SELECT *FROM SERVICE ;";

    public ServiceDAO() {
        connection = MyConnection.getConnection();
    }

    public List<Service> fillAll() {
        List<Service> services = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SERVICES)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                double price = resultSet.getDouble("price");
                int time_box = resultSet.getInt("time_box");
                services.add(new Service(id, name, price, time_box));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return services;
    }

}


