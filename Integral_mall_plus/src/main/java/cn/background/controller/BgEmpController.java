package cn.background.controller;

import cn.background.bgService.BgEmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BgEmpController {
    @Autowired
    BgEmpService bgEmpService;

    @RequestMapping("Membermanagement")
    public String findEmpAll(Model model){//查询所有员工信息 跳转至员工页面
        System.out.println("查询所有员工信息 跳转至员工页面");
        model.addAttribute("empList", bgEmpService.findEmpAll());
        return "/background/user_list";
    }

}
