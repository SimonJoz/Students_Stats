package com.simonjoz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Register {

    @RequestMapping(value = "register", method = RequestMethod.GET)
    public String getRegister() {
        return "loginPages/register";
    }

    @RequestMapping("login")
    public String login() {
        return "/loginPages/login";
    }
}
