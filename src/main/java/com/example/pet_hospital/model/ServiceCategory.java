package com.example.pet_hospital.model;

public class ServiceCategory {
   private long id;
    private  String name ;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ServiceCategory(long id, String name) {
        this.id = id;
        this.name = name;
    }

    public ServiceCategory() {
    }
}
