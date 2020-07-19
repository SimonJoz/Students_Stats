package com.simonjoz.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.springframework.format.annotation.NumberFormat;

import javax.persistence.*;
import javax.validation.constraints.*;
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

    @Min(0) @Max(100)
    private Integer java;
    @Min(0) @Max(100)
    private Integer checkbox;
    @Min(0) @Max(100)
    private Integer designPatterns;
    @Min(0) @Max(100)
    private Integer tdd;
    @Min(0) @Max(100)
    private Integer dataBase;
    @Min(0) @Max(100)
    private Integer hibernateJPA;
    @Min(0) @Max(100)
    private Integer htmlCss;
    @Min(0) @Max(100)
    private Integer jsp;
    @Min(0) @Max(100)
    private Integer thymeleaf;
    @Min(0) @Max(100)
    private Integer git;

    @ToString.Exclude
    @OneToMany (mappedBy = "owner", fetch = FetchType.LAZY)
    private List<Task> tasks;
}
