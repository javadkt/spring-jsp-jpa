package org.example.config;

import org.example.model.Employee;
import org.example.service.EmployeeServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.beans.PropertyEditorSupport;

@Component
public class EmployeeEditor extends PropertyEditorSupport {

    @Autowired
    private EmployeeServices employeeService;

    @Override
    public void setAsText(String text) throws IllegalArgumentException {
        if (text == null || text.isEmpty()) {
            setValue(null);
        } else {
            try {
                Long managerId = Long.parseLong(text);
                Employee manager = employeeService.getById(managerId);
                setValue(manager);
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException("Invalid manager ID format");
            }
        }
    }
}
