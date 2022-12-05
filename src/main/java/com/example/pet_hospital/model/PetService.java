package com.example.pet_hospital.model;

public class PetService {
    private Service service;
    private Pets pets;

    public PetService() {
    }

    public PetService(Service service, Pets pets) {
        this.service = service;
        this.pets = pets;
    }

    public Service getService() {
        return service;
    }

    public void setService(Service service) {
        this.service = service;
    }

    public Pets getPets() {
        return pets;
    }

    public void setPets(Pets pets) {
        this.pets = pets;
    }
}
