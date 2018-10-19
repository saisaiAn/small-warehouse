package cn.hcfy.controller;

import cn.bean.Emp;
import cn.hcfy.service.EmpService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EmpController {

    @Autowired
    EmpService empService;


    @RequestMapping("/BeforeLogin")
    @ResponseBody
    public String login(@RequestParam(value="empname",required=false)String empname, @RequestParam(value="password",required=false) String password,Model model){
        Emp emp=new Emp();
        System.out.println(empname+"=="+password);
        emp.setEmpname(empname);
        emp.setPassword(password);
        Emp empReturn = empService.loginToIndexBefore(emp);
        System.out.println(empReturn+"aaa");
        if(empReturn==null){ return  "n";}
        model.addAttribute("empBefore",empReturn);
        return "y";
    }














    @RequestMapping("/toBeforeLogin")
    public String login(){
        return "/before/index";
    }
    @RequestMapping("/toBeforeIndex")
    public String index(){
        return "/before/index";
    }
    @RequestMapping("/toBeforeAddress")
    public String address(){
        return "/before/address";
    }
    @RequestMapping("/toBeforeCation")
    public String cation(){
        return "/before/cation";
    }
    @RequestMapping("/toBeforeCenter")
    public String center(){
        return "/before/center";
    }
    @RequestMapping("/toBeforeConfirm")
    public String confirm(){
        return "/before/confirm";
    }
    @RequestMapping("/toBeforeDetail")
    public String detail(){
        return "/before/detail";
    }
    @RequestMapping("/toBeforeList")
    public String list(){
        return "/before/list";
    }
    @RequestMapping("/toBeforeShopcar")
    public String shopcar(){
        return "/before/shopcar";
    }
    @RequestMapping("/toBeforeZhiFu")
    public String zhifu(){
        return "/before/zhifu";
    }
}
