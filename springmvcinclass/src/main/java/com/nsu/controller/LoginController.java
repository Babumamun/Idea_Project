package com.nsu.controller;

import com.nsu.bean.User;
import com.nsu.bean.UserList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@Controller
public class LoginController {

    @RequestMapping("/loginpage")
    public  String loginpage(){
        return "login";
    }
    @RequestMapping("/loginpage2")
    public  String loginpage2(){
        return "login2";
    }
    @RequestMapping("/loginpage3")
    public  String loginpage3(){
        return "login3";
    }
    @RequestMapping("/loginpage4")
    public  String loginpage4(){ return "login4"; }
    @RequestMapping("/loginpage6")
    public  String loginpage6(){
        return "login6"; }
    @RequestMapping("/loginpage7")
    public  String loginpage7(){ return "login7"; }
    @RequestMapping("/loginpage8")
    public  String loginpage8(){
        return "login8";
    }
    @RequestMapping("/loginpage9")
    public  String loginpage9(){
        return "login9";
    }
    @RequestMapping("/login")
    public String login(HttpServletRequest request, Model model){
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        model.addAttribute("name",name);
        model.addAttribute("password",password);
        return "loginresult";
    }
    @RequestMapping("/login2")
    public String login2(String name,String password, Model model){
        model.addAttribute("name",name);
        model.addAttribute("password",password);
        return "loginresult";
    }
    @RequestMapping("/login3")
    public String login3(@RequestParam("name") String myname,@RequestParam("password") String pwd,Model model){
        model.addAttribute("name",myname);
        model.addAttribute("password",pwd);
        return "loginresult";
    }
    @RequestMapping("/login4")
    public String login4(User user, Model model){
        model.addAttribute("name",user.getName());
        model.addAttribute("password",user.getPassword());
        return "loginresult";
    }
    @RequestMapping("/login5/{name}")
    public String login5(@PathVariable String name, Model model){
        model.addAttribute("name",name);
        return "loginresult";
    }
    @RequestMapping("/login6")
    public String login6(@RequestParam(value="name",required = false,defaultValue = "Mike") String myname,@RequestParam("password") String pwd,Model model){
        model.addAttribute("name",myname);
        model.addAttribute("password",pwd);
        return "loginresult";
    }
    @GetMapping("/login7")
    public String login7(User user, Model model){
        model.addAttribute("name",user.getName());
        model.addAttribute("password",user.getPassword());
        return "loginresult";
    }
    @PostMapping("/login8")
    public String login8(String[] hobbies,Model model){
        model.addAttribute("hobbies",hobbies);
        return "loginresult2";
    }
    @PostMapping("/login9")
    public String login9(UserList userList, Model model){
        for(User user:userList.getUsers())
            System.out.println(user.getName()+" "+user.getPassword());
        return "loginresult";
    }


    @GetMapping("/tovalidationpage")
    public String toValidationPage() {
        return "validationpage";
    }
    @PostMapping("/validate")
    public String validate(@Valid @ModelAttribute("user") User user,BindingResult result){
        if(result.hasErrors())
            return "validationpage";
        else
            return "loginresult3";
    }
}