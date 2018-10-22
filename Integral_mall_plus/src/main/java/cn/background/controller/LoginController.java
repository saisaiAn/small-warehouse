package cn.background.controller;

import cn.background.bgService.BgLoginService;
import cn.bean.Emp;
import cn.dao.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    BgLoginService bgLoginService;

    @RequestMapping("view")
    public String test(){//进入后台模式
        System.out.println("进入后台模式");
        return "/background/login";
    }

    @ResponseBody
    @RequestMapping(value = "login",method = RequestMethod.POST)
    public String login(@RequestParam("username") String username, @RequestParam("pwd") String pwd, HttpSession session){//登陆判断 根据用户名密码查询是否有此用户
        System.out.println("login");
        Emp emp = new Emp();
        emp.setEmpname(username);
        emp.setPassword(pwd);
        Emp emp1 = bgLoginService.LoginByUsernameAndPassword(emp);
        if(emp1!=null){
            if(emp1.getPosition()==1){
                return "2";
            }else if(emp1.getPosition()!=1){
                //登陆成功 保存session
                System.out.println(emp1.getEmpname()+"登陆");
                session.setAttribute("loginUser",emp1);
                return "0";
            }
        }else {
            //登陆失败
            return "1";
        }
        return "3";
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
