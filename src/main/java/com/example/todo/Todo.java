package com.example.todo;

import jakarta.persistence.*;

@Entity
@Table(name = "TODO") // Ensure table name matches SQL query
public class Todo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String task;

    // Constructors
    public Todo() {}

    public Todo(String task) { this.task = task; }

    // Getters and Setters
    public Long getId() { return id; }
    public String getTask() { return task; }
    public void setTask(String task) { this.task = task; }
}
