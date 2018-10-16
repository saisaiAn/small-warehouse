package com.bdqn.springboot.controller;

import com.bdqn.springboot.dao.DepartmentDao;
import com.bdqn.springboot.dao.EmployeeDao;
import com.bdqn.springboot.entities.Employee;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

@Controller
public class EmployeeController {

    @Autowired
    EmployeeDao employeeDao;

    @Autowired
    DepartmentDao departmentDao;
    @GetMapping("/emps")
    public String list(Model model){//查询所有员工
        Collection<Employee> emplist = employeeDao.getAll();
        //放在请求域中共享
        model.addAttribute("emps",emplist);
        //thymeleaf默认会拼串
        // classpath:templates/xxx
        return "emp/list";
    }

    @GetMapping("/emp")
    public String toAddPage(Model model){
        //来到员工添加页面,查出部门
        model.addAttribute("depts",departmentDao.getDepartments()) ;
        return "emp/add";
    }

    @PostMapping("/emp")
    public String addEmp(Employee employee, BindingResult bindingResult){//添加员工
        System.out.println("添加员工");
        System.out.println(employee);
        employeeDao.save(employee);
        return "redirect:/emps";
    }

    @RequestMapping(value = "/deleteEmp",method = RequestMethod.POST)
    public String deleteEmp(@RequestParam("deleteId") Integer id){
        employeeDao.delete(id);
        return "redirect:/emps";
    }

}
