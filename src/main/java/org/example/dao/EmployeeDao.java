package org.example.dao;

import org.example.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.io.Serializable;
import java.util.List;

@Component
public class EmployeeDao {

    @Autowired
    HibernateTemplate hibernateTemplate;

    //add employee
    @Transactional
    public Serializable addEmployee(Employee emp) {
        return hibernateTemplate.save(emp);
    }

    //get all employee
    public List<Employee> getAllEmp() {
        return hibernateTemplate.loadAll(Employee.class);
    }

    //get employee by id
    @Transactional
    public Employee getEmpById(Long id) {

        return hibernateTemplate.get(Employee.class, id);
    }

    @Transactional
    public void updateEmp(Employee emp) {
        hibernateTemplate.update(emp);
    }

    @Transactional
    public void deleteEmp(Long id) {
        hibernateTemplate.delete(hibernateTemplate.load(Employee.class, id));
    }

}
