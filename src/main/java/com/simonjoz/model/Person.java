package com.simonjoz.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
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
    private String firstName;
    private String lastName;
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
