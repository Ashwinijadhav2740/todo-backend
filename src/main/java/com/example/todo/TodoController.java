package com.example.todo;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

    @RestController
    @RequestMapping("/tasks")
    public class TodoController {
        @Autowired
        private TodoService todoService;

        @GetMapping
        public List<Todo> getTasks() {
            return todoService.getAllTasks();
        }

        @PostMapping
        public Todo addTask(@RequestBody Todo task) {
            return todoService.saveTask(task);
        }


}
