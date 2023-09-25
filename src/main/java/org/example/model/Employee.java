package org.example.model;

import javax.persistence.*;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

@Data
@ToString
@Entity
public class Employee implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String firstName;
    private String lastName;
    private String dob;
    private String department;
    private Double salary;
    private String manager;

}
