package com.nsu.service;

import com.nsu.bean.Student;
import com.nsu.dao.StudentDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
@Service
public class StudentService {
    @Autowired
    private StudentDAO studentDAO;
    public List<Student> selectAll(){
        return studentDAO.selectAll();
    }
}
