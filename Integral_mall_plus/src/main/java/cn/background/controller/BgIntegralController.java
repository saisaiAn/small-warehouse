package cn.background.controller;

import cn.background.bgService.BgIntegralService;
import cn.bean.*;
import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @ResponseBody
    @RequestMapping(value = "Approval_opinion",method = RequestMethod.POST)
    public String Approval_opinion(@RequestParam("integralAuditId")Integer integralAuditId,@RequestParam("sprYj") String sprYj ,HttpSession session){
        /* 综合部经理审批意见*/
        Map<Object,Object> map = new HashMap<Object, Object>();
        map.put("integralAuditId",integralAuditId);
        map.put("sprYj",sprYj);
        map.put("AuditType",2);
        Emp emp = (Emp) session.getAttribute("loginUser");
        int empId = emp.getEmpno();
        map.put("empid",empId);
        int x = bgIntegralService.updIntegralauditAuditType(map);
        if(x>0){
            return "y";
        }
        else {
            return "n";
        }

    }

    @ResponseBody
    @Transactional(rollbackFor = {Exception.class})
    @RequestMapping(value = "xzApproval_opinion",method = RequestMethod.POST)
    public String xzApproval_opinion(@RequestParam("empId") Integer empId, //校长批准积分意见 生成积分明细表，结算积分表，修改积分审核表该条积分记录状态
                                     @RequestParam("intergralchange") String intergralchange,@RequestParam("changeint") Integer changeint,
                                     @RequestParam("integralType") Integer integralType,@RequestParam("IntegralNo") Integer IntegralNo,
                                     @RequestParam("integralauditno")Integer integralauditno,  HttpSession session){
        IntegralSchedule integralSchedule = new IntegralSchedule();
        integralSchedule.setEmpno(empId);
        integralSchedule.setIntergralchange(intergralchange);
        integralSchedule.setChangeint(changeint);
        integralSchedule.setIntegraltypeno(integralType);
        integralSchedule.setIntegralno(IntegralNo);
        Emp emp = (Emp) session.getAttribute("loginUser");
        integralSchedule.setReviewer(emp.getEmpno());
        integralSchedule.setChangedate(new Date());
        Map<Object,Object> map = new HashMap<Object, Object>();
        map.put("empid",emp.getEmpno());
        map.put("AuditType",3);
        map.put("sprYj","");
        map.put("integralAuditId",integralauditno);
        bgIntegralService.updIntegralauditAuditType(map); //修改审核表积分审核状态
        int result = bgIntegralService.addIntegralSchedule(integralSchedule); //添加积分明细
        Map<Object,Object> map1 = new HashMap<Object, Object>();
        map1.put("jfNum",changeint);
        map1.put("IntergralNo",IntegralNo);
        if(changeint>0){
            bgIntegralService.addProcessingIntegral(map1); //结算积分表 加积分
        }
        if(changeint<0){
            bgIntegralService.reduceProcessingIntegral(map1); //结算积分表 减积分
        }
        if(result>0){
            return "y";
        }else{
            return "n";
        }
    }

    @ResponseBody
    @RequestMapping(value = "General_manager_refuse",method = RequestMethod.POST)
    public String General_manager_refuse(@RequestParam("integralAuditId")Integer integralAuditId,@RequestParam("sprYj") String sprYj ,HttpSession session){
        /* 综合部经理审批意见 (拒绝申请)*/
        Map<Object,Object> map = new HashMap<Object, Object>();
        map.put("integralAuditId",integralAuditId);
        map.put("sprYj",sprYj);
        map.put("AuditType",4);
        Emp emp = (Emp) session.getAttribute("loginUser");
        int empId = emp.getEmpno();
        map.put("empid",empId);
        int x = bgIntegralService.updIntegralauditAuditType(map);
        if(x>0){
            return "y";
        }
        else {
            return "n";
        }
    }

    @ResponseBody
    @RequestMapping(value = "The_headmaster_refuses",method = RequestMethod.POST)
    public String The_headmaster_refuses(@RequestParam("integralAuditId") Integer integralAuditId,HttpSession session){
        Map<Object,Object> map = new HashMap<Object, Object>();
        map.put("integralAuditId",integralAuditId);
        map.put("sprYj","");
        map.put("AuditType",4);
        Emp emp = (Emp) session.getAttribute("loginUser");
        int empId = emp.getEmpno();
        map.put("empid",empId);
        int x = bgIntegralService.updIntegralauditAuditType(map);
        if(x>0){
            return "y";
        }
        else {
            return "n";
        }
    }

    @RequestMapping("Opinion_flow_chart")
    public String Opinion_flow_chart(Model model){
        System.out.println("查看意见流程图");
        model.addAttribute("aud",bgIntegralService.findAll());
        model.addAttribute("proType",bgIntegralService.findAllDept());
        return "background/All_Opinion_flow_chart";
    }
   //根据部门查询意见流程图
    @RequestMapping(value = "findAllIntegralAuditByDeptNo",method = RequestMethod.POST)
    public String findAllIntegralAuditByDeptNo(@RequestParam("proTypeNo")Integer proTypeNo,Model model){
        model.addAttribute("aud",bgIntegralService.findAllIntegralAuditByDeptNo(proTypeNo));
        model.addAttribute("proType",bgIntegralService.findAllDept());
        return "background/All_Opinion_flow_chart";
    }
    //根据意见id查询意见流程图
    @RequestMapping(value = "findAllIntegralAuditByIntegralauditno",method = RequestMethod.POST)
    public String findAllIntegralAuditByIntegralauditno(@RequestParam("Integralauditno")Integer integralauditno,Model model){
        model.addAttribute("aud",bgIntegralService.findAllIntegralAuditByIntegralauditno(integralauditno));
        model.addAttribute("proType",bgIntegralService.findAllDept());
        return "background/All_Opinion_flow_chart";
    }

}
