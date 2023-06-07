package com.nsu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@RequestMapping("/controller2")
@Controller
public class MyController2 {
    @RequestMapping("/mypath")
    public String mypath(Model model){
        model.addAttribute("msg","This is controller2!");
        return "result";
    }
    @RequestMapping("/forward")
    public String forwardpath(Model model){
        model.addAttribute("msg2","this is forward");
        return "forward:lastpath";
    }
    @RequestMapping("/lastpath")
    public String lastpath(){
        return "result2";
    }
    @RequestMapping("/redirect")
    public String redirectpath(Model model){
        model.addAttribute("msg2","this is rediret page!");
        return "redirect:lastpath";
    }
}

