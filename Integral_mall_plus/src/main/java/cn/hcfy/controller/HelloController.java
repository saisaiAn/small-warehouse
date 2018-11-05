package cn.hcfy.controller;

import cn.bean.Emp;
import cn.bean.Imager;
import cn.hcfy.service.EmpService;
import cn.hcfy.service.ImagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class HelloController {

    @Autowired
    EmpService empService;

    @Autowired
    ImagerService imagerService;

    @RequestMapping("hello")
    public String hello(){
        return "/before/login";
    }
    @RequestMapping("findUser")
    public String findUser(Model model){
        return "list";
    }

    @RequestMapping("/BeforeLogin")
    @ResponseBody
    public String login(@RequestParam(value="empname",required=false)String empname,
                        @RequestParam(value="password",required=false) String password,
                        HttpSession httpSession){
        Emp emp=new Emp();
        emp.setEmpname(empname);
        emp.setPassword(password);
        Emp empReturn = empService.loginToIndexBefore(emp);
        if(empReturn==null){ return  "n";}
        List<Imager> imagerList = imagerService.selectAllImager();
        httpSession.setAttribute("empBefore",empReturn);
        httpSession.setAttribute("imgList",imagerList);
        return "y";
    }
}
