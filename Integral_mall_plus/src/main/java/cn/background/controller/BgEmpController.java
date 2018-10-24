package cn.background.controller;

import cn.background.bgService.BgEmpService;
import cn.bean.Department;
import cn.bean.Emp;
import cn.bean.Integral;
import javafx.scene.control.Alert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BgEmpController {
    @Autowired
    BgEmpService bgEmpService;

    @RequestMapping("Membermanagement")
    public String findEmpAll(Model model){//查询所有员工信息 跳转至员工页面
        System.out.println("查询所有员工信息 跳转至员工页面");
        model.addAttribute("empList", bgEmpService.findEmpAll());
        model.addAttribute("deptList",bgEmpService.findAllDepartment());
        return "/background/user_list";
    }

    @RequestMapping(value = "bgAddEmp",method = RequestMethod.POST)
    public String addEMp(Emp emp){//添加员工 同时为该员工添加一个积分信息
        System.out.println("添加员工");
        Integral integral = new Integral();
        integral.setTotalintegral(0);
        integral.setHaveintegral(0);
        integral.setRemainingpoints(0);
        bgEmpService.addJiFen(integral);//添加积分 添加员工同时给他添加积分信息 默认积分为0
        //System.out.println(integral.getIntergralno()+"积分id");
        emp.setIntergralno(integral.getIntergralno());
        bgEmpService.addEmp(emp);//添加员工 并且吧积分id传入员工
        return "redirect:/Membermanagement";
    }

    @RequestMapping(value = "bgUpdEmp",method = RequestMethod.POST)
    public String bgUpdEmp(Emp emp){//修改用户
        bgEmpService.updEmp(emp);
        return "redirect:/Membermanagement";
    }
    @ResponseBody
    @RequestMapping(value = "deleteEmp",method = RequestMethod.POST)
    public String delEmp(@RequestParam("id") Integer id,@RequestParam("jifen") Integer jifen){//删除用户 同时还要删除积分
        System.out.println("删除员工");
        System.out.println(id);
        System.out.println(jifen);
        int a = bgEmpService.delEmp(id);
        System.out.println(a);
        if(a>0){
            return "y";
        }else{
            return "n";
        }
    }

    @RequestMapping(value = "LikeSelectByName",method = RequestMethod.POST)
    public String likeFind(@RequestParam("username")String username,Model model){//模糊查询
        System.out.println("模糊查询:"+username);
        model.addAttribute("empList",bgEmpService.likeEmp(username));
        model.addAttribute("deptList",bgEmpService.findAllDepartment());
        return "/background/user_list";
    }

    @RequestMapping("admin_info")
    public String admin_info(){//跳转个人资料页面
        return "/background/admin_info";
    }

    @ResponseBody
    @RequestMapping(value = "updateEmpPassword",method = RequestMethod.POST)
    public String updateEmpPassword(@RequestParam("newpwd") String newpwd,@RequestParam("empno") Integer empno){//修改密码
        Map<String,Object> map = new HashMap<>();
        System.out.println(newpwd);
        System.out.println(empno);
        map.put("id",empno);
        map.put("pwd",newpwd);
        if(bgEmpService.bgupdEmpPwd(map)>0){
            return "y";
        }else
            return "n";

    }

}
