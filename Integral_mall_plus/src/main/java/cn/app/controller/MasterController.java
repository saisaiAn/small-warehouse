package cn.app.controller;

import cn.app.service.MasterService;
import cn.bean.Emp;
import com.sun.org.apache.xpath.internal.SourceTree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    public String masterLogin(@RequestParam("username") String username, @RequestParam("pwd") String pwd, HttpSession session,Model model){
        //System.out.println("loginMaster");
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

    @RequestMapping(value="/toAppSetting",method = RequestMethod.GET)
    public String toAppSetting(){
        return "app/setting";
    }
    //首页
    @RequestMapping(value="/toAppnIndex")
    public String index(){
        return "app/index";
    }

    //登录
    @RequestMapping(value="app")
    public String app(){
        System.out.println("/app");
        return "app/login";
    }

    //日历
    @RequestMapping(value="toAppCalendar")
    public String calendar(){
        return "app/calendar";
    }

    //个人设置
    @RequestMapping(value="appMaster",method = RequestMethod.POST)
    public String setting( Emp emp){
       // System.out.println("--------"+emp.getEmpname());
          masterService.updateMaster(emp);
        return "forward:/app";
    }

    //注销
    @RequestMapping(value = "toAppLogout")
    public String logout(){

        return "app/logout";
    }
}
