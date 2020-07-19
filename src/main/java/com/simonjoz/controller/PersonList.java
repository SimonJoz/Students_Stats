package com.simonjoz.controller;


import com.simonjoz.model.Person;
import com.simonjoz.repository.PersonRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class PersonList {
    private final PersonRepo personRepo;

    @Autowired
    public PersonList(PersonRepo personRepo) {
        this.personRepo = personRepo;
    }

    @GetMapping("/personList")
    public String personList(Model model) {
        model.addAttribute("persons",personRepo.findAll());
        return "/personList";
    }

    @GetMapping("/addNewPerson")
    public String getAddNewPersonView(@ModelAttribute("newPerson") Person person) {
        return "addNewPerson";
    }

    @PostMapping("/addNewPerson")
    public String addNewPerson(@Valid @ModelAttribute("newPerson") Person newPerson, BindingResult result) {
        if (result.hasErrors()) {
            return "/addNewPerson";
        }
        personRepo.save(newPerson);
        return "redirect:/personList";
    }

    @GetMapping("/updatePerson/{id}")
    public String getPersonForEdit(Model model, @PathVariable("id") Long id) {
        model.addAttribute("person",  personRepo.getOne(id));
        return "/editPerson";
    }

    @PostMapping("/updatePerson/{id}")
    public String updatePerson(@ModelAttribute Person updatedPerson) {
        personRepo.save(updatedPerson);
        return "redirect:/personList";
    }

    @PostMapping("/deletePerson/{id}")
    public String deletePerson(@PathVariable("id") Long id) {
        personRepo.deleteById(id);
        return "redirect:/personList";
    }
}
