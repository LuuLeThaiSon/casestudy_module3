package com.example.pet_hospital.model;

public class PetCartDetail {
    private long userId;
    private long petId;
    private int billQuantity;

    public PetCartDetail() {
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public long getPetId() {
        return petId;
    }

    public void setPetId(long petId) {
        this.petId = petId;
    }

    public int getBillQuantity() {
        return billQuantity;
    }

    public void setBillQuantity(int billQuantity) {
        this.billQuantity = billQuantity;
                }

public PetCartDetail(long userId, long petId, int billQuantity) {
        this.userId = userId;
        this.petId = petId;
        this.billQuantity = billQuantity;

        }
        }
