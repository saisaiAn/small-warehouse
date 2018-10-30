package cn.app.controller;

import cn.app.service.MasterService;
import cn.bean.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class MasterController {
    @Autowired
    MasterService masterService;

    @ResponseBody
    @RequestMapping(value="masterlogin",method = RequestMethod.POST)
    public String masterLogin(@RequestParam("username") String username, @RequestParam("pwd") String pwd, HttpSession session){
        System.out.println("loginMaster");
        System.out.println(username);
        System.out.println(pwd);
        Emp emp = new Emp();
        emp.setEmpname(username);
        emp.setPassword(pwd);
        Emp emp1=masterService.loginMaster(emp);
        //System.out.print(emp1.getPosition()+"*****");
        System.out.println(emp1);
        if (emp1!=null){
            //判断是否是校长登录
            if(emp1.getPosition()==4){
                return "success";
            }else {
                return "notmaster";
            }
        }else{
            //用户名和密码为空登录失败
            return "error";
        }
    }

    @RequestMapping(value="index")
    public String index(){
        return "app/index";
    }
}
