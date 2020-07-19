package com.simonjoz.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.List;

@Getter
@Setter
@ToString
@NoArgsConstructor
@Entity
@Table
public class Person {
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @NotEmpty private String firstName;
    @NotEmpty private String lastName;
    private String github;
    private String start;
    private Integer java;
    private Integer checkbox;
    private Integer designPatterns;
    private Integer tdd;
    private Integer dataBase;
    private Integer hibernateJPA;
    private Integer htmlCss;
    private Integer jsp;
    private Integer thymeleaf;
    private Integer git;
    @ToString.Exclude
    @OneToMany (mappedBy = "owner", fetch = FetchType.LAZY)
    private List<Task> tasks;
}
