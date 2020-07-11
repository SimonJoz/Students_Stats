package com.simonjoz.contoller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EditPerson {
    @RequestMapping(value = "/editPerson", method = RequestMethod.GET)
    public String editPerson(Model model) {
        return "editPerson";
    }
}
