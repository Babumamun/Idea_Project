package com.nsu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
@Controller
public class RegisterController {
        @RequestMapping("/registerpage")
        public String registerpage() {
            return "register";
        }

        @RequestMapping("/register")
        public String login(HttpServletRequest request, Model model) {
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            model.addAttribute("name", name);
            model.addAttribute("password", password);
            return "registerresult";
        }
    }