package cn.hcfy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

    @RequestMapping("hello")
    public String hello(){
        return "/before/index";
    }
    @RequestMapping("findUser")
    public String findUser(Model model){
        return "list";
    }
}
