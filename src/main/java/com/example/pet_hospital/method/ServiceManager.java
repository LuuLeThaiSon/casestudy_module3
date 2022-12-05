package com.example.pet_hospital.method;

import com.example.pet_hospital.model.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class ServiceManager {

    private final ServiceFullDAO serviceFullDAO;
    private final ServiceCategoryDAO serviceCategoryDAO;

    public ServiceManager() {
        serviceFullDAO = new ServiceFullDAO();
        serviceCategoryDAO =new ServiceCategoryDAO();
    }

    public List<Service> showServiceList(HttpServletRequest request){
       return  serviceFullDAO.findAllServices();
    }

}
