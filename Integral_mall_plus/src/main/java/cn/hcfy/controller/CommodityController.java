package cn.hcfy.controller;


import cn.hcfy.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class CommodityController {
    @Autowired
    CommodityService commodityService;
    public String commodityFindAll(Model model){
        model.addAttribute("commoditys",commodityService.selectAllCommodity());
        return "/toBeforeIndex";
    }
}
