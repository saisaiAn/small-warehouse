package cn.background.controller;

import cn.background.bgService.BgProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/*
* 商品后台controller
* */
@RequestMapping("/product")
@Controller
public class BgProductController {

    @Autowired
    BgProductService bgProductService;

    @RequestMapping("Products_List_html")
    public String findAllPro(Model model){
        System.out.println("查询所有商品 以及关系表");
        model.addAttribute("pro",bgProductService.findAllCommodity());
        model.addAttribute("proCount",bgProductService.findCountCommodity());
        model.addAttribute("proType",bgProductService.findAllCommodityType());
        return "/background/Products_List";
    }

    @RequestMapping(value = "/findProByType",method = RequestMethod.POST)
    public String findProByType(@RequestParam("proType") Integer proType,Model model){//根据类型查询商品
        System.out.println("根据类型查询商品:"+proType);
        model.addAttribute("pro",bgProductService.findProByType(proType));
        model.addAttribute("proCount",bgProductService.findCountCommodity());
        model.addAttribute("proType",bgProductService.findAllCommodityType());
        return "/background/Products_List";
    }
}
