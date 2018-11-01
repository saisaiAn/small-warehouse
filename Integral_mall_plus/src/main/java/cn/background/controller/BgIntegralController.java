package cn.background.controller;

import cn.background.bgService.BgIntegralService;
import cn.bean.Attendance;
import cn.bean.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class BgIntegralController {
    @Autowired
    BgIntegralService bgIntegralService;

    @RequestMapping("Integral_management_html")
    public String Integral_management_html(HttpSession session, Model model){//跳转当前管理员部门用户
        Emp emp = (Emp)session.getAttribute("loginUser");
        model.addAttribute("emp",bgIntegralService.findEmpByDept(emp));
        return "background/Integral_management";
    }

    @RequestMapping("ApplicationIntegra/{id}")
    public String ApplicationIntegra(@PathVariable("id") Integer id,Model model){
        System.out.println("查询id用户给他申请积分信息"+id);
        Emp emp = new Emp();
        emp.setEmpno(id);
        model.addAttribute("emp",bgIntegralService.findEmpById(emp));
        List<Attendance> a = bgIntegralService.findAllAttendance();
        for (Attendance as: a
             ) {
            System.out.println(as.getContent()+"***");
        }
        model.addAttribute("atn",bgIntegralService.findAllAttendance());
        return "background/addIntegral";
    }


}
