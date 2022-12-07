package com.example.pet_hospital.manger;

import com.example.pet_hospital.dao.MyConnection;
import com.example.pet_hospital.manger.ServiceCategoryDAO;
import com.example.pet_hospital.model.Service;
import com.example.pet_hospital.model.ServiceCategory;

import javax.servlet.http.HttpServletRequest;
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
    private final String SELECT_ALL_SERVICES_BY_CATEGORY_ID  = "select * from service where category_id = ?;";
    private final String SELECT_ALL_SERVICES_BY_NAME  = "select * from service where name like ?;";


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
    public List<Service> findServicesbyCategoryID(Long id ) {
        List<Service> servicesbyCategoryID = new ArrayList();

        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SERVICES_BY_CATEGORY_ID)) {
            preparedStatement.setLong(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Long id1 = resultSet.getLong("id");
                String name = resultSet.getString("name");
                double price = resultSet.getDouble("price");
                int time_box = resultSet.getInt("time_box");
                Long category_id = resultSet.getLong("category_id");
                ServiceCategory serviceCategory = serviceCategoryDao.findServiceById(category_id);
                servicesbyCategoryID.add(new Service(id1,name,price,time_box,serviceCategory));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } return servicesbyCategoryID;
    }
    public  List<Service> searchServicesName (String search) {
        List<Service> searchservices = new ArrayList();
        try(PreparedStatement preparedStatement =
                    connection.prepareStatement(SELECT_ALL_SERVICES_BY_NAME)) {
            preparedStatement.setString(1, "%" + search + "%");
            getlistSearchServices(searchservices, preparedStatement);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return searchservices;


    }
    private void  getlistSearchServices(List<Service> searchservices, PreparedStatement preparedStatement) throws SQLException {
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            Long id = Long.parseLong(resultSet.getString("id"));
            String name = resultSet.getString("name");
            Double price = Double.parseDouble(resultSet.getString("price"));
            Integer quantity = Integer.parseInt(resultSet.getString("quantity"));
            searchservices.add(new Service(id, name, price, quantity));
        }
    }
}
