package com.nsu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
        mv.setViewName("first.jsp");
        return mv;
    }
    @RequestMapping("/second")
    public String second(Model model){
        model.addAttribute("msg2","This is second page!Mamun got it");
        return "second.jsp";
    }

    @RequestMapping("/third")
    public String third(Model model){
        model.addAttribute("msg3","This is third page!");
        model.addAttribute("ms4","Super sorry laoshi to send you so much message!");
        return "third";
    }
    @RequestMapping("/fourth")
    public String fourth(Model model){
        model.addAttribute("msg4","This is fourth page!");
        return "/WEB-INF/jsp/fourth";
    }
    @RequestMapping("/fifth")
    public String fifth(Model model){
        model.addAttribute("msg5","This is fifth page!");
        return "fifth";
    }

}
