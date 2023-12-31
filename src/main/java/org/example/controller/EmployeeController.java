package org.example.controller;

import org.example.model.Employee;
import org.example.service.EmployeeServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping
public class EmployeeController {


    @Autowired
    EmployeeServices employeeServices;

    @GetMapping("addEmployee")
    public String addEmp(Model m) {
        m.addAttribute("managers", employeeServices.getAllEmp());
        m.addAttribute("mode", "add");
        return "addEmployee";

    }

    @GetMapping("/editEmployee/{id}")
    public String updateEmp(@PathVariable Long id, Model m) {
        m.addAttribute("employee", employeeServices.getById(id));
        m.addAttribute("managers", employeeServices.getAllEmp());
        m.addAttribute("mode", "edit");
        return "addEmployee";
    }

    @PostMapping(value = "/insertEmployee")
    public String insertEmployee(@ModelAttribute("insertEmployee") Employee emp) {
        //validations here
        employeeServices.addEmp(emp);
        return "redirect:/employeeListGrid";
    }

    @PostMapping("/editEmployee/saveEditEmployee")
    public String saveEditEmployee(@ModelAttribute("saveEditEmployee") Employee emp) {
        //validations here
        employeeServices.updateEmp(emp);
        return "redirect:/employeeListGrid";

    }

    @GetMapping("employeeList")
    public String lodeEmployee(Model m) {
        m.addAttribute("employee", employeeServices.getAllEmp());
        m.addAttribute("title", "Employee List");
        return "employeeList";
    }

    @GetMapping("/employeeView/{id}")
    public String employeeView(@PathVariable(value = "id") Long id, Model m) {

        Employee emp = employeeServices.getById(id);
        if (emp.getManager() != null) {
            Employee manager = employeeServices.getById(emp.getManager().getId());
            String managerName = manager.getFirstName() + " " + manager.getLastName();
            m.addAttribute("managerName", managerName);
        }
        m.addAttribute("employee", emp);
        m.addAttribute("title", "Employee View");
        return "employeeView";

    }

    @GetMapping("employeeListGrid")
    public String employeeListGrid(Model m) {
        m.addAttribute("employee", employeeServices.getAllEmp());
        m.addAttribute("title", "Employee List");
        return "employeeListGrid";
    }

    @GetMapping("/deleteEmployee/{id}")
    public String deleteEmployee(@PathVariable Long id) {

        employeeServices.deleteEmployee(id);

        return "redirect:/employeeList";
    }


    @RequestMapping(value = "/health", method = RequestMethod.GET)
    public String health() {
        return "OK";
    }

}
