package com.example.pet_hospital.model;

public class PetService {
    private Service service;
    private UserPet userPet;
    private int sell;

    public PetService() {
    }

    public PetService(Service service, UserPet userPet, int sell) {
        this.service = service;
        this.userPet = userPet;
        this.sell = sell;
    }

    public int getSell() {
        return sell;
    }

    public void setSell(int sell) {
        this.sell = sell;
    }

    public Service getService() {
        return service;
    }

    public void setService(Service service) {
        this.service = service;
    }

    public UserPet getUserPet() {
        return userPet;
    }

    public void setUserPet(UserPet userPet) {
        this.userPet = userPet;
    }
}
