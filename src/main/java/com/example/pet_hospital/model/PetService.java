package com.example.pet_hospital.model;

public class PetService {
    private long ServiceId;
    private long PetId;

    public PetService() {
    }

    public PetService(long serviceId, long petId) {
        ServiceId = serviceId;
        PetId = petId;

    }

    public long getServiceId() {
        return ServiceId;
    }

    public void setServiceId(long serviceId) {
        ServiceId = serviceId;
    }

    public long getPetId() {
        return PetId;
    }

    public void setPetId(long petId) {
        PetId = petId;
    }
}
