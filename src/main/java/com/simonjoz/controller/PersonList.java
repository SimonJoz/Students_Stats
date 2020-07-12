package com.simonjoz.controller;


import com.simonjoz.model.Person;
import com.simonjoz.repository.PersonRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class PersonList {
    private final PersonRepo personRepo;

    @Autowired
    public PersonList(PersonRepo personRepo) {
        this.personRepo = personRepo;
    }

    @GetMapping("/personList")
    public String personList(Model model) {
        List<Person> list = personRepo.findAll();
        model.addAttribute("persons",list);
        return "/personList";
    }

    @GetMapping("/addNewPerson")
    public String getAddNewPersonView(@ModelAttribute("newPerson") Person person) {
        return "addNewPerson";
    }

    @PostMapping("/addNewPerson")
    public RedirectView addNewPerson(@ModelAttribute Person newPerson) {
        personRepo.save(newPerson);
        return new RedirectView("/personList");
    }

    @GetMapping("/updatePerson/{id}")
    public String getPersonForEdit(Model model, @PathVariable("id") Long id) {
        Person person = personRepo.getOne(id);
        model.addAttribute("person", person);
        return "/editPerson";
    }

    @PostMapping("/updatePerson/{id}")
    public RedirectView updatePerson(@ModelAttribute Person updatedPerson) {
        personRepo.save(updatedPerson);
        return new RedirectView("/personList");
    }

    @PostMapping("/deletePerson/{id}")
    public RedirectView deletePerson(@PathVariable("id") Long id) {
        personRepo.deleteById(id);
        return new RedirectView("/personList");
    }
}
