package cn.hcfy.controller;

import cn.bean.*;
import cn.dao.ImagerMapper;
import cn.hcfy.service.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    @Autowired
    shoppingCarService shoppingCarService;

    @RequestMapping("/BeforeLogin")
    @ResponseBody
    public String login(@RequestParam(value="empname",required=false)String empname,
                     @RequestParam(value="password",required=false) String password,
                     HttpSession  httpSession){
        Emp emp=new Emp();
        emp.setEmpname(empname);
        emp.setPassword(password);
        Emp empReturn = empService.loginToIndexBefore(emp);
        if(empReturn==null){ return  "n";}
        List<Imager> imagerList = imagerService.selectAllImager();
        httpSession.setAttribute("empBefore",empReturn);
        httpSession.setAttribute("imgList",imagerList);
        return "y";
    }
    @ResponseBody
    @RequestMapping("/BeforePay")
    public String BeforePay(@Param("count")String count){
        String[] carno=count.split(",");
        for (String carId:carno) {

        }
//        if(judge>0){
//            return "y";
//        }else{
//            return "n";
//        }
        return "y";
    }
    @RequestMapping("/addBeforeShopping")
    public String addShopCar(shoppingCar shoppingCar){
        int judge= shoppingCarService.insertShoppingCar(shoppingCar);
        return "forward:/toBeforeShopcar";

    }
    @ResponseBody
    @RequestMapping("deletBeforeShopCar")
    public String deletBeforeShopCar(@Param("carno")int carno){
        int judge= shoppingCarService.deleteByPrimaryKey(carno);
        System.out.println(judge);
        if(judge>0){
            return "y";
        }else{
            return "n";
        }
    }
    @ResponseBody
    @RequestMapping(value = "/updateBeforeShopCar")
    public String updateBeforeShopCar(@Param("carno")int carno,@Param("commoditySum") int commoditySum){
        System.out.println(commoditySum+"==cars");
        shoppingCar shoppingCar=new shoppingCar();
        shoppingCar.setCarno(carno);
        shoppingCar.setCommoditysum(commoditySum);
        int judge= shoppingCarService.updateByExampleSelective(shoppingCar);
        if(judge>0){
            return "y";
        }else{
            return "n";
        }
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
        model.addAttribute("commodityList",commodityList);
        model.addAttribute("typeList",commodityTypeList);

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
    public String detail(@RequestParam(value = "id" ,defaultValue = "1")Integer id, Model model){
        Commodity commodity=new Commodity();
        commodity.setCommodityno(id);
        model.addAttribute("commodity",commodityService.selectCommodityById(commodity));
        return "/before/detail";
    }
    @RequestMapping("/toBeforeList")
    public String list(){
        return "/before/list";
    }
    @RequestMapping("/toBeforeShopcar")
    public String shopcar(HttpSession session,Model model){
        Emp emp=(Emp)session.getAttribute("empBefore");
        List<shoppingCar> shoppingCarList= shoppingCarService.selectShoppingCarById(emp);
        model.addAttribute("shoppingCarList",shoppingCarList);
        return "/before/shopcar";
    }
    @RequestMapping("/toBeforeZhiFu")
    public String zhifu(){
        return "/before/zhifu";
    }
}
