package org.example.controller;

import org.example.model.Employee;
import org.example.config.EmployeeEditor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.InitBinder;

import java.beans.PropertyEditorSupport;
import java.text.SimpleDateFormat;
import java.util.Date;

@ControllerAdvice
public class EmployeeControllerAdvice {

    @Autowired
    private EmployeeEditor employeeEditor;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);

        binder.registerCustomEditor(Date.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) throws IllegalArgumentException {
                if (text == null || text.isEmpty()) {
                    setValue(null);
                } else {
                    try {
                        setValue(dateFormat.parse(text));
                    } catch (java.text.ParseException e) {
                        throw new IllegalArgumentException("Invalid date format");
                    }
                }
            }

            @Override
            public String getAsText() {
                Object value = getValue();
                if (value instanceof Date) {
                    return dateFormat.format((Date) value);
                }
                return "";
            }
        });

        binder.registerCustomEditor(Employee.class, employeeEditor);
    }
}
