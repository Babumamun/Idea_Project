package com.nsu.controller;

import com.nsu.bean.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    @RequestMapping("/tologin")
    public String toLogin(){
        return "login/login";
    }
    @RequestMapping("/mylogin")
    public String login(User user, HttpSession session){
        if(user.getName().equals("Mamun")&&user.getPassword().equals("1234")){
            session.setAttribute("user",user);
            return "redirect:main";
        }
        return "redirect:tologin";
    }
    @RequestMapping("/main")
    public String toMain(){
        return "login/main";
    }
}