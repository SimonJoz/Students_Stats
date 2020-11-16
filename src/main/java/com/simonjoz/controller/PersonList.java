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

    @GetMapping("students")
    public String personList(Model model) {
        model.addAttribute("persons", personRepo.findAll());
        return "personList";
    }

    @GetMapping("add-student")
    public String getAddNewPersonView(@ModelAttribute("newPerson") Person person) {
        return "addNewPerson";
    }

    @PostMapping("add-student")
    public String addNewPerson(@Valid @ModelAttribute("newPerson") Person newPerson, BindingResult result) {
        if (result.hasErrors()) {
            return "addNewPerson";
        }
        personRepo.save(newPerson);
        return "redirect:/students";
    }

    @GetMapping("update-student/{id}")
    public String getPersonForEdit(Model model, @PathVariable("id") Long id) {
        model.addAttribute("person", personRepo.getOne(id));
        return "editPerson";
    }

    @PostMapping("update-student/{id}")
    public String updatePerson(@Valid @ModelAttribute("person") Person updatedPerson, BindingResult result) {
        if (result.hasErrors()) {
            return "editPerson";
        }
        personRepo.save(updatedPerson);
        return "redirect:/students";
    }

    @PostMapping("delete-student/{id}")
    public String deletePerson(@PathVariable("id") Long id) {
        personRepo.deleteById(id);
        return "redirect:/students";
    }
}
