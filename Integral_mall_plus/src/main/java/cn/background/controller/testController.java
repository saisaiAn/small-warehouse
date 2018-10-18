package cn.background.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class testController {

    @RequestMapping("view")
    public String test(){
        System.out.println("ceshi");
        return "/background/login";
    }

    @RequestMapping(value = "login",method = RequestMethod.POST)
    public String login(){//登陆
        System.out.println("login");
        return "/background/index";
    }

    @RequestMapping("home.html")
    public String home(){//跳转首页
        System.out.println("首页");
        return "/background/home";
    }

}
