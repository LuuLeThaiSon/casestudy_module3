package com.example.pet_hospital.model;

public class UserPet {
    private long id ;
    private String name;
    private int age;
    private String hobbit;
    private Species species;
    private  Users users;

    public UserPet(long id, String name, int age, String hobbit, Species species, Users users) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.hobbit = hobbit;
        this.species = species;
        this.users  = users;
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

    public Species getSpecies() {
        return species;
    }

    public void setSpeciesId(Species species) {
        this.species = species;
    }

    public Users getUsers() {
        return users;
    }

    public void setUserId(Users users) {
        this.users = users;
    }
}
