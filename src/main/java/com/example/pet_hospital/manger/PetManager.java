package com.example.pet_hospital.manger;

import com.example.pet_hospital.dao.PetDAO;
import com.example.pet_hospital.model.Pets;
import com.example.pet_hospital.model.Species;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class PetManager {
    //sơn
    private PetDAO petDAO;

    public PetManager() {
        petDAO = new PetDAO();
    }

    public List<Pets> findAllPet(HttpServletRequest request) {
        return petDAO.findAllPet();
    }

    public List<Species> findAllSpecies(HttpServletRequest request) {
        return petDAO.findAllSpecies();
    }

    public List<Pets> findPetsBySpeciesId(HttpServletRequest request) {
        String speciesId = request.getParameter("speciesId");
        return petDAO.findPetsBySpeciesId(speciesId);
    }

    public List<Pets> findPetsByName(HttpServletRequest request) {
        String searchKeyWord = request.getParameter("search");
        return petDAO.findPetsByName(searchKeyWord);
    }

    public List<Pets> selectByPrice(HttpServletRequest request) {
        String select = request.getParameter("selectByPrice");
        return petDAO.selectByPrice(select);
    }

    public List<Pets> sortPets(HttpServletRequest request) {
        String sort = request.getParameter("value");
        return petDAO.sortPets(sort);
    }
}
