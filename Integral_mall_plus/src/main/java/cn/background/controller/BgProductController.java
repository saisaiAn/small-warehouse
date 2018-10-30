package cn.background.controller;

import cn.background.bgService.BgProductService;
import cn.bean.Commodity;
import cn.bean.Imager;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.UUID;

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

    @RequestMapping("picture_add_product")
    public String picture_add_product(Model model){//添加商品页面
        model.addAttribute("proType",bgProductService.findAllCommodityType());
        return "/background/picture-add";
    }

    @Transactional(rollbackFor = {Exception.class})
    @RequestMapping(value = "add_Product",method = RequestMethod.POST)
    public String add_product(Commodity commodity,@RequestParam("img") MultipartFile img,
                              HttpServletRequest request) throws Exception{//添加商品页面
        int proId = bgProductService.addPro(commodity);//添加商品
        System.out.println("商品id"+commodity.getCommodityno());
        //使用uuid给图片重命名，并且去掉四个-
        String name = UUID.randomUUID().toString().replace("-","");
        //获取文件的扩展名
        String ext = FilenameUtils.getExtension(img.getOriginalFilename());
        //设置图片上传路径
        String url = request.getSession().getServletContext().getRealPath("/static/before/images");
        System.out.println(url+"-----*****");
        //以绝对路径保存重命名后的图片
        File file = new File(url+"/"+name + "." + ext);
        img.transferTo(file);
        System.out.println(file+"路径");
        String img1 = file.toString();
        String imgUrl = img1.substring(img1.length()-58);
        System.out.println(imgUrl+"******");
        //吧图片路径保存刀数据库
        Imager imager = new Imager();
        imager.setImagerurl(imgUrl);
        imager.setImageclassification("3");
        imager.setImagerdescription(commodity.getCommoditytitle());
        imager.setImagerid(commodity.getCommodityno());
        bgProductService.addImg(imager);//添加图片
        return "redirect:/product/Products_List_html";
    }

}
