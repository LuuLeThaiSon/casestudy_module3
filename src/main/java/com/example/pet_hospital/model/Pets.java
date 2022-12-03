package com.example.pet_hospital.model;

public class Pets {
    private long id;
    private String name;
    private int age;
    private  double price;
    private  String description;
    private int quantity;
    private String img;
    private long speciesId;

    public Pets(long id, String name, int age, double price, String description, int quantity, String img, long speciesId) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.price = price;
        this.description = description;
        this.quantity = quantity;
        this.img = img;
        this.speciesId = speciesId;
    }

    public Pets() {
    }

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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public long getSpeciesId() {
        return speciesId;
    }

    public void setSpeciesId(long speciesId) {
        this.speciesId = speciesId;
    }
}
