package com.example.pet_hospital.dao;

import com.example.pet_hospital.model.*;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PetServiceDAO extends MyConnection {


    public boolean updatePetService(PetService petService) {
        //        "INSERT INTO users (userName, password, phoneNumber, email, address, role) VALUES (?, ?, ?, ?, ?, ?);";
        try (PreparedStatement pre = getConnection().prepareStatement("insert into pet_service (service_id, user_pet_id, sell) values (?, ?, ?)")) {
            pre.setLong(1, petService.getService().getId());
            pre.setLong(2, petService.getUserPet().getId());
            pre.setInt(3, petService.getSell());
            pre.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public List<PetService> findAllServiceByUser(long userId){
        String a = "select *\n" +
                "from pet_service\n" +
                "join service s on s.id = pet_service.service_id\n" +
                "join user_pet up on pet_service.user_pet_id = up.id\n" +
                "join users u on up.user_id = u.id\n" +
                "join service_category sc on s.category_id = sc.id\n"+
                "where u.id = ? and sell = 0;";
        List<PetService> list = new ArrayList<>();
        try(PreparedStatement pre = getConnection().prepareStatement(a)) {
            pre.setLong(1, userId);
            ResultSet rs = pre.executeQuery();
            while (rs.next()){
                Service service = new Service();
                UserPet userPet = new UserPet();
                PetService petService = new PetService();

                service.setId(rs.getLong("s.id"));
                service.setName(rs.getString("s.name"));
                service.setPrice(rs.getDouble("s.price"));
                service.setTime_box(rs.getInt("s.time_box"));
                service.setServiceCategory(new ServiceCategory(rs.getLong("sc.id"), rs.getString("sc.name")));

                userPet.setId(rs.getLong("up.id"));
                userPet.setName(rs.getString("up.name"));

                petService.setUserPet(userPet);
                petService.setService(service);

                list.add(petService);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    public boolean deletePetService(long userPetId, long serviceId) throws SQLException {
        boolean rowDeleted;
        try (PreparedStatement pre = getConnection().prepareStatement("delete from pet_service where service_id = ? and user_pet_id = ?;")) {
            pre.setLong(1, serviceId);
            pre.setLong(2, userPetId);
            rowDeleted = pre.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public void upSell(long serviceId, long userPetId ){
        try(PreparedStatement pre = getConnection().prepareStatement("update pet_service set sell = 1 where service_id = ? and user_pet_id = ?;")){
            pre.setLong(1,serviceId);
            pre.setLong(2,userPetId);
            pre.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
