package com.example.pet_hospital.model;

public class PetCartDetail {
    private Users users;
    private Pets pets;
    private int billQuantity;

    public PetCartDetail(Users users, Pets pets, int billQuantity) {
        this.users = users;
        this.pets = pets;
        this.billQuantity = billQuantity;
    }

    public PetCartDetail() {
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public Pets getPets() {
        return pets;
    }

    public void setPets(Pets pets) {
        this.pets = pets;
    }

    public int getBillQuantity() {
        return billQuantity;
    }

    public void setBillQuantity(int billQuantity) {
        this.billQuantity = billQuantity;
    }
}


