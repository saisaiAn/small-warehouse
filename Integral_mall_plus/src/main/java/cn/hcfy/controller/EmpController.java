package cn.hcfy.controller;

import cn.bean.*;
import cn.dao.ImagerMapper;
import cn.hcfy.service.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpSession;
import java.util.*;

@RequestMapping("/Before")
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

    @Autowired
    OrdersService ordersService;

    @Autowired
    IntegralService integralService;

    @Autowired
    IntegralAuditService integralAuditService;

    @Autowired
    IntegralScheduleService integralScheduleService;

    @ResponseBody
    @RequestMapping(value = "/addBeforePay")
    @Transactional(rollbackFor = {Exception.class})
    public String BeforePay(@Param("count")String count){
        String[] carno=count.split(",");
        for (String carId:carno) {
            //通过ID查找购物车的相关属性
            shoppingCar shoppingCar=new shoppingCar();
            shoppingCar.setCarno(Integer.parseInt(carId));
            shoppingCar shoppingCarTwo=shoppingCarService.selectShoppingCarByCarId(shoppingCar);
            //用户积分扣除
            Integral integral=new Integral();
            integral.setIntergralno(shoppingCarTwo.getEmpId().getIntergralno());
            integral.setHaveintegral(shoppingCarTwo.getCommoditysum()*shoppingCarTwo.getCommodityId().getNeedintegral());
            integral.setRemainingpoints(shoppingCarTwo.getCommoditysum()*shoppingCarTwo.getCommodityId().getNeedintegral());
            integralService.updateByExampleIntegral(integral);
            //增加积分审核
            IntegralAudit integralAudit=new IntegralAudit();
            integralAudit.setEmpno(shoppingCarTwo.getShoppingempno());
            integralAudit.setIntergralchange("购买："+shoppingCarTwo.getCommodityId().getCommoditytitle()+";");
            integralAudit.setChangeint(-shoppingCarTwo.getCommoditysum()*shoppingCarTwo.getCommodityId().getNeedintegral());
            integralAudit.setIntegraltypeno(1);
            integralAudit.setAudittype(1);
            integralAudit.setAuditopinion("");
            integralAuditService.addIntegralAuditMapper(integralAudit);
            //增加订单
            Orders orders=new Orders();
            orders.setOrdercommodityno(shoppingCarTwo.getShoppingcommodityno());
            orders.setOrderintegral(shoppingCarTwo.getCommoditysum()*shoppingCarTwo.getCommodityId().getNeedintegral()+"");
            orders.setOrdertime(new Date());
            orders.setOrderstatus(1);
            orders.setEmpno(shoppingCarTwo.getShoppingempno());
            orders.setOrdercommoditysum(shoppingCarTwo.getCommoditysum());
            String rand= generateString(20);
            orders.setOrderexchange(rand);
            ordersService.insertOrders(orders);
            //删除购物车表
            shoppingCarService.deleteByPrimaryKey(Integer.parseInt(carId));
        }
        return "y";
    }
    public static final String ALLCHAR = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    public static String generateString(int length) {
        StringBuffer sb = new StringBuffer();
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            sb.append(ALLCHAR.charAt(random.nextInt(ALLCHAR.length())));
        }
        return sb.toString();
    }

    @RequestMapping("/addBeforeShopping")
    public String addShopCar(shoppingCar shoppingCar){
        int judge= shoppingCarService.insertShoppingCar(shoppingCar);
        return "forward:/Before/toBeforeShopcar";
    }
    @ResponseBody
    @RequestMapping("/deleteBeforeShopCar")
    @Transactional(rollbackFor = {Exception.class})
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
    @Transactional(rollbackFor = {Exception.class})
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
    @RequestMapping("/BeforeUpdateEmp")
    public String UpdateEmp(@ModelAttribute Emp emp,HttpSession httpSession){
        empService.updateBeforeEmp(emp);
        Emp empReturn = empService.loginToIndexBefore(emp);
        httpSession.setAttribute("empBefore",empReturn);
        return "forward:/Before/toBeforeCenter";
    }
    @ResponseBody
    @RequestMapping("/BeforeOldPassword")
    public String OldPassword(@ModelAttribute Emp emp){
        Emp emp1= empService.selectOldPassword(emp);
        System.out.println(emp1);
        if(emp1!=null){
            return "y";
        }else{
            return "n";
        }
    }
    @RequestMapping("/BeforeUpdateEmpPassword")
    public String UpdateEmpPassword(@ModelAttribute Emp emp){
        empService.updateBeforeEmp(emp);
        return "forward:/hello";
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
    public String cation(Model model){
        List<CommodityType> commodityTypeList=commodityTypeService.selectAllCommodityType();
        model.addAttribute("typeList",commodityTypeList);
        return "/before/cation";
    }
    @RequestMapping("/toBeforeCenter")
    public String center(Model model,HttpSession httpSession){
        Emp emp= (Emp) httpSession.getAttribute("empBefore");
        List<IntegralSchedule>  integralSchedulesList =integralScheduleService.findAllIntegralSheduleByEmp(emp);
        model.addAttribute("integralScheduleList",integralSchedulesList);
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
    public String list(@Param("commoditytypeno") Integer commoditytypeno,Model model){
        List<Commodity> commodityList=commodityService.commodityByType(commoditytypeno);
        model.addAttribute("commodityList",commodityList);
        return "/before/list";
    }
    @RequestMapping("/toBeforeShopcar")
    public String shopcar(HttpSession session,Model model){
        Emp emp=(Emp)session.getAttribute("empBefore");
        List<shoppingCar> shoppingCarList= shoppingCarService.selectShoppingCarByEmpId(emp);
        model.addAttribute("shoppingCarList",shoppingCarList);
        return "/before/shopcar";
    }
    @RequestMapping("/toBeforeZhiFu")
    public String zhifu(){
        return "/before/zhifu";
    }
    @RequestMapping("/toBeforeOrders")
    public String orders(@Param("id")Integer id,@Param("status")Integer status,Model model){
        Emp emp=new Emp();
        emp.setEmpno(id);
        Map ByEmpIdMap=new HashMap();
        ByEmpIdMap.put("emp",emp);
        ByEmpIdMap.put("status",status);
        List<Orders> Orders= ordersService.selectOrdersByEmpId(ByEmpIdMap);
        model.addAttribute("orderList",Orders);
        model.addAttribute("status",status);
        return "/before/orders";
    }
    @RequestMapping("/toBeforeUserInfo")
    public String userInfo(){
        return "/before/userInfo";
    }
    @RequestMapping("/toBeforePassword")
    public String password(){
        return "/before/password";
    }
    @RequestMapping("/BeforeXiaoHui")
    public String BeforeXiaoHui(HttpSession httpSession){
        Emp emp=(Emp)httpSession.getAttribute("empBefore");
        Emp empType=new Emp();
        empType.setEmpno(emp.getEmpno());
        empType.setEmptype(0);
        empService.updateBeforeEmpType(empType);
        return "y";
    }
    @RequestMapping("/BeforeCeHui")
    public String BeforeCeHui(HttpSession httpSession){
        System.out.println("aaa");
        Emp emp=(Emp)httpSession.getAttribute("empBefore");
        Emp empType=new Emp();
        empType.setEmpno(emp.getEmpno());
        empType.setEmptype(1);
        empService.updateBeforeEmpType(empType);
        return "y";
    }
}
