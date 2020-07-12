package com.simonjoz.model;


import lombok.*;

import javax.persistence.*;
import java.time.LocalDate;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "tasks")
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private LocalDate addDate;
    private LocalDate deadline;
    private String description;

    @Enumerated(value = EnumType.STRING)
    private TaskLevel level;

    @ManyToOne
    @JoinColumn(name = "person_id")
    private Person owner;
}
