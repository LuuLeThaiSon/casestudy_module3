package com.example.pet_hospital.model;

public class Service {
    private Long id;
    private String name;
    private double price;
    private int time_box;
    private ServiceCategory serviceCategory;

    public Service() {
    }

    public Service(Long id, String name, double price, int time_box) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.time_box = time_box;
    }

    public Service(Long id, String name, double price, int time_box, ServiceCategory serviceCategory) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.time_box = time_box;
        this.serviceCategory = serviceCategory;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getTime_box() {
        return time_box;
    }

    public void setTime_box(int time_box) {
        this.time_box = time_box;
    }

    public ServiceCategory getServiceCategory() {
        return serviceCategory;
    }

    public void setServiceCategory(ServiceCategory serviceCategory) {
        this.serviceCategory = serviceCategory;
    }
}


