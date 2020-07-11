package com.simonjoz.contoller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Technology {

    @GetMapping("technology")
    public String getTechnologies(Model model) {
        return "technology";
    }
}
