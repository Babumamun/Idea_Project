package com.nsu.controller;

import com.nsu.bean.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JSONController {

    @RequestMapping("/tojson")
    public String getJson(@RequestBody User user,Model model){
        model.addAttribute("user",user);
        System.out.println(user.getName());
        System.out.println(user.getPassword());
        return "jsonresult";
    }
    @RequestMapping("/jsonpage")
    public String jsonpage(){
        return "json";
    }
    @RequestMapping("/tojson2")
    @ResponseBody
    public User getJson(@RequestBody User user){
        System.out.println(user.getName());
        System.out.println(user.getPassword());
        return user;
    }


    }
