package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@Controller
public class MyController {
    @RequestMapping("/my")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv=new ModelAndView();
        mv.addObject("msg","This is my first Spring MVC Application");
        mv.setViewName("first");
        return mv;
    }
}
