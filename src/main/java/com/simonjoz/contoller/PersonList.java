package com.simonjoz.contoller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PersonList {

    @GetMapping("personList")
    public String getPeoples(Model model) {
        return "personList";
    }
}
