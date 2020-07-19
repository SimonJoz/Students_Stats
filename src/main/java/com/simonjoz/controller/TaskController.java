package com.simonjoz.controller;

import com.simonjoz.model.Person;
import com.simonjoz.model.Task;
import com.simonjoz.repository.PersonRepo;
import com.simonjoz.repository.TaskRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.time.LocalDate;

@Controller
public class TaskController {
    private final PersonRepo personRepo;
    private final TaskRepo taskRepo;

    @Autowired
    public TaskController(PersonRepo personRepo, TaskRepo taskRepo) {
        this.personRepo = personRepo;
        this.taskRepo = taskRepo;
    }

    @GetMapping("addTask")
    public String listPeoples(Model model, @ModelAttribute("newTask") Task task) {
        model.addAttribute("peoples", personRepo.findAll());
        return "/addTask";
    }

    @PostMapping("addTask")
    public String addTask(@Valid @ModelAttribute("newTask") Task newTask, BindingResult result) {
        if (result.hasErrors()) {
            return "/addTask";
        }
        newTask.setAddDate(LocalDate.now());
        taskRepo.save(newTask);
        return  "redirect:tasksList";
    }

    @GetMapping("tasksList")
    public String getTasksList(Model model) {
        model.addAttribute("tasks", taskRepo.findAll());
        model.addAttribute("peoples", personRepo.findAll());
        return "/tasksList";
    }

    @GetMapping("updateTask/{id}")
    public String getTaskForUpdate(Model model, @PathVariable("id") Long id) {
        model.addAttribute("task", taskRepo.getOne(id));
        return "/tasksList";
    }

    @PostMapping("updateTask/{id}")
    public String updateTask(@ModelAttribute Task updatedTask) {
        updatedTask.setAddDate(LocalDate.now());
        taskRepo.save(updatedTask);
        return "redirect:/tasksList";
    }

    @PostMapping("delete/{id}")
    public String deleteTask(@PathVariable("id") Long id) {
        taskRepo.deleteById(id);
        return "redirect:/tasksList";
    }


}
