package cn.app.controller;

import cn.app.service.MasterService;
import cn.background.bgService.BgIntegralService;
import cn.bean.Emp;
import cn.bean.IntegralAudit;
import cn.bean.IntegralSchedule;
import com.sun.org.apache.xpath.internal.SourceTree;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping("/app")
@Controller
public class MasterController {
    @Autowired
    MasterService masterService;
    @Autowired
    BgIntegralService bgIntegralService;


    @RequestMapping(value="/toAppSetting",method = RequestMethod.GET)
    public String toAppSetting(){
        return "app/setting";
    }
    //首页
    @RequestMapping(value="/toAppnIndex")
    public String index(Model model){
        model.addAttribute("IntegralAudit",masterService.findAll());
        return "app/index";
    }
    //通过integralauditno查询
    @ResponseBody
    @RequestMapping(value="/toAppFind")
    public IntegralAudit toAppFind(@Param("integralauditno") Integer integralauditno, Model model){
        System.out.println(integralauditno);
        IntegralAudit integralAudit=new IntegralAudit();
        integralAudit.setIntegralauditno(integralauditno);
        return masterService.findIntegral(integralAudit);
    }
    //登录
    @RequestMapping(value="app")
    public String app( HttpSession session){
        session.setAttribute("appEmp","");
        return "app/login";
    }

    //日历
    @RequestMapping(value="toAppCalendar")
    public String calendar(){
        return "app/calendar";
    }

    //个人设置
    @RequestMapping(value="appMaster",method = RequestMethod.POST)
    public String setting( Emp emp){
        // System.out.println("--------"+emp.getEmpname());
        masterService.updateMaster(emp);
        return "forward:/app/app";
    }

    //注销
    @RequestMapping(value = "toAppLogout")
    public String logout(){
        return "app/logout";
    }

    //拒绝批准
    @ResponseBody
    @RequestMapping(value="appDisagree",method = RequestMethod.POST)
    public String appDisagree(@RequestParam ("id") Integer id,HttpSession session){
        System.out.println("校长拒绝批准"+id);
        Map<Object,Object> map = new HashMap<Object, Object>();
        map.put("integralAuditId",id);
        map.put("sprYj","");
        map.put("AuditType",4);
        Emp emp = (Emp) session.getAttribute("appEmp");
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

    //同意批准
    @ResponseBody
    @Transactional(rollbackFor = {Exception.class})
    @RequestMapping(value = "AppXZApproval_opinion",method = RequestMethod.POST)
    public String AppXZApproval_opinion(@RequestParam ("id") Integer id,HttpSession session){   //校长同意 生成积分明细表，结算积分表，修改积分审核表该条积分记录状态
        List<IntegralAudit> integralAudit = bgIntegralService.findAllIntegralAuditByIntegralauditno(id);
        System.out.println(integralAudit.size()+"大小");
        IntegralSchedule integralSchedule = new IntegralSchedule(); //给积分明细表赋值
        for (IntegralAudit i:integralAudit
             ) {
            integralSchedule.setEmpno(i.getEmpno());
            integralSchedule.setIntergralchange(i.getIntergralchange());
            integralSchedule.setChangeint(i.getChangeint());
            integralSchedule.setIntegraltypeno(i.getIntegraltypeno());
            integralSchedule.setIntegralno(i.getEmpId().getIntergralno());
        }
        Emp emp = (Emp) session.getAttribute("appEmp"); //获得当前登录用户信息
        integralSchedule.setReviewer(emp.getEmpno());
        integralSchedule.setChangedate(new Date());
        Map<Object,Object> map = new HashMap<Object, Object>(); //把积分审核表的内容放入
        map.put("empid",emp.getEmpno());
        map.put("AuditType",3);
        map.put("sprYj","");
        map.put("integralAuditId",id);
        bgIntegralService.updIntegralauditAuditType(map); //修改审核表积分审核状态
        int result = bgIntegralService.addIntegralSchedule(integralSchedule); //添加积分明细
        Map<Object,Object> map1 = new HashMap<Object, Object>();
        int a = 0;
        for (IntegralAudit i:integralAudit
                ) {
            map1.put("jfNum",i.getChangeint());
            map1.put("IntergralNo",i.getEmpId().getIntergralno());
            a = i.getChangeint();
        }
        if(a>0){
            bgIntegralService.addProcessingIntegral(map1); //结算积分表 加积分
        }
        if(a<0){
            bgIntegralService.reduceProcessingIntegral(map1); //结算积分表 减积分
        }
        if(result>0){
            return "y";
        }else{
            return "n";
        }
    }


}
