package cn.background.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class testController {


    @RequestMapping("view")
    public String test(){//进入后台模式
        System.out.println("ceshi");
        return "/background/login";
    }

    @ResponseBody
    @RequestMapping(value = "login",method = RequestMethod.POST)
    public String login(@RequestParam("username") String username,@RequestParam("pwd") String pwd){//登陆判断
        System.out.println("login");
        System.out.println(username);
        System.out.println(pwd);
        if(true){
            return "0";
        }else {
            return "1";
        }
    }
    @RequestMapping("jumpindex")
    public String jumpIndex(){//跳转index页面
        return "/background/index";
    }
    @RequestMapping("home.html")
    public String home(){//跳转首页
        System.out.println("首页");
        return "/background/home";
    }

}
