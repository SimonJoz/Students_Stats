package com.simonjoz.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AddPerson {
    @RequestMapping(value = "/addNewPerson", method = RequestMethod.GET)
    public String addPerson(Model model) {
        return "addNewPerson";
    }
}
