package com.example.pet_hospital.son;

import com.example.pet_hospital.model.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class ServiceManagerSon {
    private ServiceDao serviceDao;

    public ServiceManagerSon() {
        serviceDao = new ServiceDao();
    }

    public List<Service> findAllService(HttpServletRequest request) {
        return serviceDao.findAllService();
    }
}
