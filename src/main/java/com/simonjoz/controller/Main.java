package com.simonjoz.controller;

import com.simonjoz.repository.PersonRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Main {

    private final PersonRepo personRepo;

    @Autowired
    public Main(PersonRepo personRepo) {
        this.personRepo = personRepo;
    }

    @GetMapping(value = {"/", "index"})
    public String countStudents(Model model) {
        model.addAttribute("studentsCount", personRepo.count());
        return "index";

    }

}
