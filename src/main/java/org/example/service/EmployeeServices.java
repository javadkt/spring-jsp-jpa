package org.example.service;

import org.example.dao.EmployeeDao;
import org.example.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

@Component
@Service
public class EmployeeServices {

    @Autowired
    EmployeeDao employeeDao;

    public Serializable addEmp(Employee emp) {
      return  employeeDao.addEmployee(emp);
    }

    public List<Employee> getAllEmp() {
        return employeeDao.getAllEmp();
    }

    public Employee getById(Long id) {
        return employeeDao.getEmpById(id);
    }

    public void updateEmp(Employee emp) {
        employeeDao.updateEmp(emp);
    }

    public void deleteEmployee(Long id) {
        employeeDao.deleteEmp(id);
    }

}
