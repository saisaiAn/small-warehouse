package cn.background.controller;

import cn.background.bgService.BgEmpService;
import cn.bean.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
    public String addEMp(Emp emp){//添加员工
        System.out.println("添加员工");
        System.out.println("用户名:"+emp.getEmpname());
        System.out.println("部门id:"+emp.getDepartmentId().getDepano());
        System.out.println("性别:"+emp.getEmpsex());
        System.out.println("身份证:"+emp.getIdcard());
        System.out.println("职位:"+emp.getPosition());
        return null;
    }

}
