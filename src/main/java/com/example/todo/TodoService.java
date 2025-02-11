package com.example.todo;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class TodoService {
    @Autowired
    private TodoRepository repository;

    public List<Todo> getAllTasks() {
        return repository.findAll();
    }

    public Todo saveTask(Todo task) {
        return repository.save(task);
    }
}

