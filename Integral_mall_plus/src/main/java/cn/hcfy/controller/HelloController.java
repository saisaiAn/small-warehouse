package cn.hcfy.controller;

import cn.hcfy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

    @Autowired
    UserService uService;

    @RequestMapping("hello")
    public String hello(){
        System.out.println("nihao=====");
        return "index";
    }
    @RequestMapping("findUser")
    public String findUser(Model model){
        model.addAttribute("ulist", uService.findAll());
        return "list";
    }
}
