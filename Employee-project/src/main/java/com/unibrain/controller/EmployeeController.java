package com.unibrain.controller;

import com.unibrain.entity.EmployeesDetails;
import com.unibrain.service.EmployeesDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class EmployeeController {

    private final EmployeesDetailsService service;

    public EmployeeController(EmployeesDetailsService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String viewHome(Model model) {
        model.addAttribute("employees", service.getAllEmployees());
        return "home";
    }

    @GetMapping("/add")
    public String addPage(Model model) {
        model.addAttribute("employee", new EmployeesDetails());

        // Clear any existing message
        model.addAttribute("msg", "");
        return "savepage";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("employee") EmployeesDetails emp, Model model) {
        // Check if employee ID already exists
        EmployeesDetails existing = service.getEmployeeByEmployeeId(emp.getEmployeeId());
        if (existing != null) {
            model.addAttribute("msg", "❌ Employee ID already exists!");
            model.addAttribute("employee", emp);
            return "savepage"; // return to form
        }

        // Construct employeeName from firstName + lastName
        if (emp.getFirstName() != null && emp.getLastName() != null) {
            emp.setEmployeeName(emp.getFirstName().trim() + " " + emp.getLastName().trim());
        } else if (emp.getFirstName() != null) {
            emp.setEmployeeName(emp.getFirstName().trim());
        } else if (emp.getLastName() != null) {
            emp.setEmployeeName(emp.getLastName().trim());
        }

        service.saveEmployee(emp);
        return "redirect:/";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        model.addAttribute("employee", service.getEmployeeById(id));

        // Clear any existing message
        model.addAttribute("msg", "");
        return "updatejsp";
    }

    @PostMapping("/updatejsp")
    public String update(@ModelAttribute("employee") EmployeesDetails emp, Model model) {
        // ✅ Check for duplicate Employee ID (excluding current record)
        EmployeesDetails existing = service.getEmployeeByEmployeeId(emp.getEmployeeId());

        if (existing != null && !existing.getId().equals(emp.getId())) {
            model.addAttribute("msg", "❌ Employee ID already exists!");
            model.addAttribute("employee", emp);
            return "updatejsp"; // Go back to form with error message
        }

        // ✅ Construct employeeName from firstName + lastName
        if (emp.getFirstName() != null && emp.getLastName() != null) {
            emp.setEmployeeName(emp.getFirstName().trim() + " " + emp.getLastName().trim());
        } else if (emp.getFirstName() != null) {
            emp.setEmployeeName(emp.getFirstName().trim());
        } else if (emp.getLastName() != null) {
            emp.setEmployeeName(emp.getLastName().trim());
        }

        // ✅ Save updated employee
        service.saveEmployee(emp);
        return "redirect:/";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable int id) {
        service.deleteEmployee(id);
        return "redirect:/";
    }
}
