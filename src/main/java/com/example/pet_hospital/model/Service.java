package com.example.pet_hospital.model;

public class Service {
   private Long id;
   private String name;
   private double price;
   private int time_box;
   private Long category_id;

    public Service() {
    }

    public Service(Long id, String name, double price, int time_box, Long category_id) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.time_box = time_box;
        this.category_id = category_id;
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

    public Long getCategory_id() {
        return category_id;
    }

    public void setCategory_id(Long category_id) {
        this.category_id = category_id;
    }
}
