package cn.background.controller;

import cn.background.bgService.BgOrdersService;
import cn.bean.Emp;
import cn.bean.IntegralSchedule;
import cn.bean.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
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
import java.util.Map;

@Controller
public class BgOrdersController {
    @Autowired
    BgOrdersService bgOrdersService;


    @RequestMapping("Orderform_html")
    public String Orderform_html(Model model){//查询所有订单信息
        model.addAttribute("order", bgOrdersService.selectOrders());
        return "background/Orderform";
    }

    @RequestMapping(value = "findOrderById",method = RequestMethod.POST)
    public String findOrderById(@RequestParam("OrderId")Integer orderId,Model model){//根据订单编号查询订单信息
        model.addAttribute("order", bgOrdersService.selectOrdersById(orderId));
        return "background/Orderform";
    }

    @ResponseBody
    @RequestMapping(value = "modify_state",method = RequestMethod.POST)
    public String modify_state(@RequestParam("oid") Integer oid){//修改订单状态为待领取
        Map<Object,Object> map = new HashMap<Object, Object>();
        map.put("Oid",oid);
        map.put("OrderStatus",2);
        int a = bgOrdersService.updOrderStatus(map);
        if(a>0){
            return "y";
        }else{
            return "n";
        }
    }

    @ResponseBody
    @Transactional(rollbackFor = Exception.class)
    @RequestMapping(value = "Exchange_of_goods",method = RequestMethod.POST)
    public String Exchange_of_goods(@RequestParam("RedeemCode") String RedeemCode, HttpSession session){
        Orders o = bgOrdersService.selectOrdersByRedeemCode(RedeemCode);
        if(o!=null||("").equals(o)){
            Map<Object,Object> map = new HashMap<Object, Object>();
            map.put("Oid",o.getOrderno());
            map.put("OrderStatus",3);
            bgOrdersService.updOrderStatus(map);//修改订单状态为已领取状态
            IntegralSchedule i = new IntegralSchedule();
            i.setEmpno(o.getEmpno()); //用户id
            i.setIntergralchange("购买商品");  //变更原因
            int count = 0;
            count = count - (Integer.parseInt(o.getOrderintegral())) ;
            System.out.println(count);
            i.setChangeint(count);  //变动积分数量
            i.setChangedate(new Date());
            i.setIntegralno(o.getEmp().getIntergralno());//积分id
            Emp e = (Emp) session.getAttribute("loginUser");
            i.setReviewer(e.getEmpno()); //审核人
            i.setIntegraltypeno(3); //积分变动类型 购买商品
            bgOrdersService.addIntegralSchedule(i);  //添加积分明细
           /* Map<Object,Object> map1 = new HashMap<Object, Object>();
            map1.put("jfNum",count);
            map1.put("IntergralNo",o.getEmp().getIntergralno());
            bgOrdersService.reduceProcessingIntegral(map1); //结算积分*/
            return "y";
        }else{
            return "n";
        }
    }

}
