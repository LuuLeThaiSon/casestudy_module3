package com.example.pet_hospital.model;

public class UserPet {
    private long id ;
    private String name;
    private int age;
    private String hobbit;
    private long speciesId;
    private  long userId;

    public UserPet(long id, String name, int age, String hobbit, long speciesId, long userId) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.hobbit = hobbit;
        this.speciesId = speciesId;
        this.userId = userId;
    }

    public UserPet() {
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

    public String getHobbit() {
        return hobbit;
    }

    public void setHobbit(String hobbit) {
        this.hobbit = hobbit;
    }

    public long getSpeciesId() {
        return speciesId;
    }

    public void setSpeciesId(long speciesId) {
        this.speciesId = speciesId;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }
}
