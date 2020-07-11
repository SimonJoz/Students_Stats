package com.simonjoz.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Course {

    @GetMapping("course")
    public String getCourse(Model model) {
        return "course";
    }
}
