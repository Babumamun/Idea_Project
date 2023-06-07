package com.nsu.controller;

import com.nsu.bean.Student;
import com.nsu.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class StudentController {
    private List<Student>students;
    @Autowired
    private StudentService studentService;
    @RequestMapping("/allstudents")
    public String getAllStudents(Model model){
        students=studentService.selectAll();
        model.addAttribute("students",students);
        return "allstudents";
    }
}
