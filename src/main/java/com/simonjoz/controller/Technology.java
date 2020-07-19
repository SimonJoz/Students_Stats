package com.simonjoz.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Technology {

    @GetMapping("technology")
    public String getTechnologies() {
        return "technologies";
    }
}
