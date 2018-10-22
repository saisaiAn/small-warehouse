package cn.hcfy.controller;

import cn.bean.Commodity;
import cn.bean.CommodityType;
import cn.bean.Emp;
import cn.bean.Imager;
import cn.dao.ImagerMapper;
import cn.hcfy.service.CommodityService;
import cn.hcfy.service.CommodityTypeService;
import cn.hcfy.service.EmpService;
import cn.hcfy.service.ImagerService;
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
public class EmpController {

    @Autowired
    EmpService empService;

    @Autowired
    CommodityService commodityService;

    @Autowired
    CommodityTypeService commodityTypeService;

    @Autowired
    ImagerService imagerService;

    @RequestMapping("/BeforeLogin")
    @ResponseBody
    public String login(@RequestParam(value="empname",required=false)String empname,
                     @RequestParam(value="password",required=false) String password,
                     HttpSession  httpSession){
        Emp emp=new Emp();
        System.out.println(empname+"=="+password);
        emp.setEmpname(empname);
        emp.setPassword(password);
        Emp empReturn = empService.loginToIndexBefore(emp);
        System.out.println(empReturn.getDepartmentId().getDepaname());
        if(empReturn==null){ return  "n";}
        httpSession.setAttribute("empBefore",empReturn);
        return "y";
    }














    @RequestMapping("/toBeforeLogin")
    public String login(){
        return "/before/login";
    }
    @RequestMapping("/toBeforeIndex")
    public String index(Model model){
        List<Commodity> commodityList=commodityService.selectAllCommodity();
        List<CommodityType> commodityTypeList=commodityTypeService.selectAllCommodityType();
        List<Imager> imagerList = imagerService.selectAllImager();
        for (Commodity commodity: commodityList ) {
            System.out.println(commodity.getCommoditytitle()+"=="+commodity.getCommodityTypeId().getCommoditytypename());
        }
        model.addAttribute("commodityList",commodityList);
        model.addAttribute("typeList",commodityTypeList);
        model.addAttribute("imgList",imagerList);
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
