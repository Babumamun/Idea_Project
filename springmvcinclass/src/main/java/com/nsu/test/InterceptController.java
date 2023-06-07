package com.nsu.test;

import com.nsu.bean.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class InterceptController {
    @GetMapping("/toorigin")
    public String toOrigin(@ModelAttribute("user") User user){
        System.out.println(user.getName());
        return "loginresult3";
    }
}