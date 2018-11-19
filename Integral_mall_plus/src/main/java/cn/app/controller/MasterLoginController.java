package cn.app.controller;

import cn.app.service.MasterService;
import cn.background.bgService.BgIntegralService;
import cn.bean.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class MasterLoginController {
    @Autowired
    MasterService masterService;

    @ResponseBody
    @RequestMapping(value="/masterlogin",method = RequestMethod.POST)
    public String masterLogin(@RequestParam("username") String username, @RequestParam("pwd") String pwd, HttpSession session, Model model){
        System.out.println("loginMaster");
        //1.获得用户名和密码
        //2.查询用户名和密码Emp emp1
        //3.判断用户名和密码是否为空
        //4.判断是否是校长登录
        //5.保存员工信息
        Emp emp = new Emp();
        emp.setEmpname(username);
        emp.setPassword(pwd);
        Emp emp1=masterService.loginMaster(emp);
        //System.out.println(emp1);

        if (emp1!=null){
            //判断是否是校长登录
            if(emp1.getPosition()==4){
                //保存员工信息
                session.setAttribute("appEmp",emp1);
                return "success";
            }else {
                return "notmaster";
            }
        }else{
            //用户名和密码为空登录失败
            return "error";
        }
    }

}
