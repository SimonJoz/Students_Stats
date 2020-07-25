package com.simonjoz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Register {

    @RequestMapping(value = "register", method = RequestMethod.GET)
    public String getRegister(Model model) {
        return "loginPages/register";
    }

    @GetMapping("login")
    public String login(Model model) {
        return "/loginPages/login";
    }


}
