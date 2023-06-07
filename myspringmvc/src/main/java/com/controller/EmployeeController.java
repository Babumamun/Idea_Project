package com.controller;
import com.bean.Employee;
import com.dao.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmployeeController {
@Autowired
EmployeeMapper employeeMapper;

    private static final String EMPLOYEE = "Employee";
    private static final String EMPLOYEELIST = "ListEmployees";

    @RequestMapping("/list")
    public String showListOfEmployees(Model model){
        model.addAttribute("employeeList", employeeMapper.getAllEmployees());
        return EMPLOYEELIST;
    }


}
