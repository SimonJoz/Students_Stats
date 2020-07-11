package com.simonjoz.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Task {

    @GetMapping("tasks")
    public String getTasks(Model model) {
        return "tasks";
    }
}
