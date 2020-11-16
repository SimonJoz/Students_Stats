package com.simonjoz.controller;

import com.simonjoz.model.Task;
import com.simonjoz.model.TaskLevel;
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

    @GetMapping("add-task")
    public String listPeoples(Model model, @ModelAttribute("newTask") Task task) {
        model.addAttribute("peoples", personRepo.findAll());
        return "addTask";
    }

    @PostMapping("add-task")
    public String addTask(@Valid @ModelAttribute("newTask") Task newTask, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("peoples", personRepo.findAll());
            return "addTask";
        }
        newTask.setAddDate(LocalDate.now());
        taskRepo.save(newTask);
        return "redirect:/tasks";
    }

    @GetMapping("tasks")
    public String getTasksList(Model model) {
        model.addAttribute("tasks", taskRepo.findAll());
        model.addAttribute("peoples", personRepo.findAll());
        return "tasksList";
    }

    @GetMapping("update-task/{id}")
    public String getTaskForUpdate(Model model, @PathVariable("id") Long id) {
        model.addAttribute("task", taskRepo.getOne(id));
        return "tasksList";
    }

    @PostMapping("update-task/{id}")
    public String updateTask(@ModelAttribute("task") Task updatedTask) {
        Task oldTask = taskRepo.getOne(updatedTask.getId());
        updatedTask.setAddDate(oldTask.getAddDate());
        taskRepo.save(updatedTask);
        return "redirect:/tasks";
    }

    @PostMapping("delete-task/{id}")
    public String deleteTask(@PathVariable("id") Long id) {
        taskRepo.deleteById(id);
        return "redirect:/tasks";
    }

    @GetMapping("junior-tasks")
    public String getJuniorTasksList(Model model) {
        model.addAttribute("tasks", taskRepo.findAllByLevel(TaskLevel.JUNIOR));
        model.addAttribute("peoples", personRepo.findAll());
        return "tasksList";
    }

    @GetMapping("junior-plus-tasks")
    public String getJuniorPlusTasksList(Model model) {
        model.addAttribute("tasks", taskRepo.findAllByLevel(TaskLevel.JUNIOR_PLUS));
        model.addAttribute("peoples", personRepo.findAll());
        return "tasksList";
    }

    @GetMapping("mid-tasks")
    public String getMidTasksList(Model model) {
        model.addAttribute("tasks", taskRepo.findAllByLevel(TaskLevel.MID));
        model.addAttribute("peoples", personRepo.findAll());
        return "tasksList";
    }


    @GetMapping("mid-plus-tasks")
    public String getMidPlusTasksList(Model model) {
        model.addAttribute("tasks", taskRepo.findAllByLevel(TaskLevel.MID_PLUS));
        model.addAttribute("peoples", personRepo.findAll());
        return "tasksList";
    }

    @GetMapping("senior-tasks")
    public String getSeniorTasksList(Model model) {
        model.addAttribute("tasks", taskRepo.findAllByLevel(TaskLevel.SENIOR));
        model.addAttribute("peoples", personRepo.findAll());
        return "tasksList";
    }

}
