package com.example.pet_hospital.manger;

import com.example.pet_hospital.manger.ServiceCategoryDAO;
import com.example.pet_hospital.manger.ServiceFullDAO;
import com.example.pet_hospital.model.Service;
import com.example.pet_hospital.model.ServiceCategory;

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
 public  List<ServiceCategory> showServiceCategoryList(HttpServletRequest request){
        return serviceCategoryDAO.serviceCategories();
 }
 public List<Service>showServiceListByCategory(HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        return serviceFullDAO.findServicesbyCategoryID(id);
 }
  public List<Service> searchServiceByName(HttpServletRequest request) {
        String name = request.getParameter("search");
        return serviceFullDAO.searchServicesName(name);
  }
}
