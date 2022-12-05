package com.example.pet_hospital.dao;

import java.sql.Connection;
import java.util.List;

public interface IDAO {
    List<Object> selectionPets();
    boolean deletePets(int index);
    boolean updatePets(Object object);

    List<Object> selectionPetService();
    boolean deletePetService(int index);
    boolean updatePetService(Object object);

    List<Object> selectionPetCartDetail();
    boolean deletePetCartDetail(int index);
    boolean updatePetCartDetail(Object object);

    List<Object> selectionService();
    boolean deleteService(int index);
    boolean updateService(Object object);

    List<Object> selectionUserPet();
    boolean deleteUserPet(int index);
    boolean updateUserPet(Object object);

    List<Object> selectionUser();
    boolean deleteUser(int index);
    boolean updateUser(Object object);

    List<Object> selectionSpeciesCategory();
    boolean deleteSpeciesCategory(int index);
    boolean updateSpeciesCategory(Object object);

}
