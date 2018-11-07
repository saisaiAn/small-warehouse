package cn.background.controller;

import cn.background.bgService.BgLoginService;
import cn.bean.Commodity;
import cn.bean.Emp;
import cn.bean.Orders;
import cn.dao.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

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
               // session.setAttribute("img",bgLoginService.findAllImg());
                session.setMaxInactiveInterval(1800);
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
    public String home(Model model){//跳转首页
        System.out.println("首页");
        model.addAttribute("allEmp",bgLoginService.findAllEmp());
        List<Orders> orders = bgLoginService.selectOrders();
        model.addAttribute("allOrders",orders);
        int countOrderOrderintegral = 0;
        int countOrderstatus = 0 ;
        int countOrderstatus2 =0;
        int countOrderstatus3 =0;
        for (Orders o: orders
             ) {
            countOrderOrderintegral+=(Integer.parseInt(o.getOrderintegral()));
            if(o.getOrderstatus()==1){
                ++ countOrderstatus ;
            }
            if(o.getOrderstatus()==2){
                ++ countOrderstatus2 ;
            }
            if(o.getOrderstatus()==3){
                ++ countOrderstatus3 ;
            }
        }
        model.addAttribute("countOrderOrderintegral",countOrderOrderintegral);
        model.addAttribute("countOrderstatus",countOrderstatus);
        model.addAttribute("countOrderstatus2",countOrderstatus2);
        model.addAttribute("countOrderstatus3",countOrderstatus3);
        List<Commodity> com = bgLoginService.selectAllCommodity();
        int shangjia = 0;
        int xiajia=0;
        for (Commodity c:com
             ) {
            if(c.getCommoditytype()==1){
                ++shangjia;
            }
            if(c.getCommoditytype()==0){
                ++xiajia;
            }
        }
        model.addAttribute("allComm",com);
        model.addAttribute("shangjia",shangjia);
        model.addAttribute("xiajia",xiajia);
        return "/background/home";
    }

}
