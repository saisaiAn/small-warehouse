package cn.background.controller;

import cn.background.bgService.BgIntegralService;
import cn.bean.Attendance;
import cn.bean.Emp;
import cn.bean.IntegralAudit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
        model.addAttribute("atn",bgIntegralService.findAllAttendance());
        return "background/addIntegral";
    }

    @ResponseBody
    @RequestMapping(value = "zdyJfApply",method = RequestMethod.POST) /*自定义*/
    public String zdyJfApply(@RequestParam("userId") Integer userId ,@RequestParam("zdyNR") String zdyNR,@RequestParam("zdyJfNum") Integer zdyJfNum){
        IntegralAudit integralAudit = new IntegralAudit();
        integralAudit.setEmpno(userId);
        integralAudit.setIntergralchange(zdyNR);
        integralAudit.setChangeint(zdyJfNum);
        integralAudit.setIntegraltypeno(2);
        integralAudit.setAudittype(1);
        int a = bgIntegralService.bgAddzdyJfApply(integralAudit);
        if(a>0){
            return "y";
        }else {
            return "n";
        }
    }

    @ResponseBody
    @RequestMapping(value = "checkJfApply",method = RequestMethod.POST) //考勤表
    public String checkJfApply(@RequestParam("userId") Integer userId ,@RequestParam("checkJfNr") String checkJfNr,@RequestParam("checkJfNum") Integer checkJfNum){
        IntegralAudit integralAudit = new IntegralAudit();
        integralAudit.setEmpno(userId);
        integralAudit.setIntergralchange(checkJfNr);
        integralAudit.setChangeint(checkJfNum);
        integralAudit.setIntegraltypeno(1);
        integralAudit.setAudittype(1);
        int a = bgIntegralService.bgAddzdyJfApply(integralAudit);
        if(a>0){
            return "y";
        }else {
            return "n";
        }
    }

    @ResponseBody
    @RequestMapping(value = "allJfApply",method = RequestMethod.POST) //自定义 考勤表 一起提交
    public String allJfApply(@RequestParam("userId") Integer userId ,@RequestParam("checkJfNr") String checkJfNr,@RequestParam("checkJfNum") Integer checkJfNum,
                             @RequestParam("zdyNR") String zdyNR,@RequestParam("zdyJfNum") Integer zdyJfNum){
        String nr = checkJfNr+","+zdyNR;
        Integer num = checkJfNum+zdyJfNum;
        IntegralAudit integralAudit = new IntegralAudit();
        integralAudit.setEmpno(userId);
        integralAudit.setIntergralchange(nr);
        integralAudit.setChangeint(num);
        integralAudit.setIntegraltypeno(2);
        integralAudit.setAudittype(1);
        int a = bgIntegralService.bgAddzdyJfApply(integralAudit);
        if(a>0){
            return "y";
        }else {
            return "n";
        }
    }

    @RequestMapping("handling_opinions")
    public String handling_opinions(Model model){ //查询所有的意见内容
        model.addAttribute("Opinion",bgIntegralService.findAll());
        return "background/Handling_opinions";
    }


}
