package cn.Before.controller;

import cn.Before.service.JedisClientImp;
import cn.bean.Emp;
import cn.bean.Imager;
import cn.Before.service.EmpService;
import cn.Before.service.ImagerService;
import org.apache.ibatis.annotations.Param;
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

    @Autowired
    private JedisClientImp jedisClient;

    @RequestMapping("hello")
    public String hello(@Param("empno") Integer empNo){
        Emp empe=new Emp();
        empe.setEmptype(1);
        empe.setEmpno(empNo);
        empService.updateBeforeEmpType(empe);
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
           /*if (empReturn.getEmptype()>0){
                return "s";
        }*/
          String a="";
          try{
              a=jedisClient.get(empReturn.getEmpno().toString());
            }catch (Exception e){
                e.printStackTrace();
            }
            if(a!=""&&a!=null){
                return "s";
            }
        try{
            jedisClient.set(empReturn.getEmpno().toString(),empReturn.getEmpno().toString());
            jedisClient.expire(empReturn.getEmpno().toString(),30);
        }catch (Exception e){
            e.printStackTrace();
        }
        List<Imager> imagerList = imagerService.selectAllImager();
        httpSession.setAttribute("empBefore",empReturn);
        httpSession.setAttribute("imgList",imagerList);
        return "y";
    }
}
