package cn.background.controller;

import cn.background.bgService.BgLoginService;
import cn.background.bgService.BgProductService;
import cn.background.bgService.PictureServiceImpl;
import cn.bean.Commodity;
import cn.bean.Imager;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Map;
import java.util.UUID;

/*
* 商品后台controller
* */
@RequestMapping("/product")
@Controller
public class BgProductController {

    @Autowired
    BgProductService bgProductService;

    @Autowired
    BgLoginService bgLoginService;

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
                              HttpServletRequest request){//添加商品页面
        int proId = bgProductService.addPro(commodity);//添加商品
        System.out.println("商品id"+commodity.getCommodityno());
        PictureServiceImpl pictureService = new PictureServiceImpl();
        Map<String,Object> map = pictureService.uploadPicture(img);
        //吧图片路径保存刀数据库
        Imager imager = new Imager();
        imager.setImagerurl(map.get("url").toString());
        imager.setImageclassification("3");
        imager.setImagerdescription(commodity.getCommoditytitle());
        imager.setImagerid(commodity.getCommodityno());
        bgProductService.addImg(imager);//添加图片
        return "redirect:/product/Products_List_html";
    }

    @RequestMapping("upd_Product/{id}")
    public String upd_Product(@PathVariable("id") Integer id,Model model){
        System.out.println("商品详情："+id);
        Commodity commodity = new Commodity();
        commodity.setCommodityno(id);
        model.addAttribute("pro",bgProductService.findCommodityById(commodity));
        model.addAttribute("proType",bgProductService.findAllCommodityType());
        model.addAttribute("img",bgLoginService.findAllImg());
        return "background/updProduct";
    }
    @ResponseBody
    @RequestMapping(value = "udpateProduct",method = RequestMethod.POST)
    public String udpateProduct(Commodity commodity){//修改商品信息
        bgProductService.updatePro(commodity);
        return "y";
    }

    @ResponseBody
    @RequestMapping(value = "bg_undercarriage_product",method = RequestMethod.POST)
    public String bg_undercarriage_product(@RequestParam("proid") Integer proid){
        System.out.println("下架商品："+proid);
        if(bgProductService.bg_undercarriage_product(proid)>0){
            return "y";
        }else
            return "n";
    }

    @ResponseBody
    @RequestMapping(value = "bg_grounding_product",method = RequestMethod.POST)
    public String bg_grounding_product(@RequestParam("proid") Integer proid){
        System.out.println("上架商品："+proid);
        if(bgProductService.bg_grounding_product(proid)>0){
            return "y";
        }else
            return "n";
    }

    @RequestMapping(value = "likeProductByProName",method = RequestMethod.POST)
    public String likeProductByProName(@RequestParam("proName")String proName,Model model){
        model.addAttribute("pro",bgProductService.likeProductByProName(proName));
        model.addAttribute("proCount",bgProductService.findCountCommodity());
        model.addAttribute("proType",bgProductService.findAllCommodityType());
        return "/background/Products_List";
    }

    @Transactional(rollbackFor = {Exception.class})
    @RequestMapping(value = "updProImage",method = RequestMethod.POST)
    public  String updProImage(@RequestParam("img") MultipartFile img,@RequestParam("id")Integer id ,HttpServletRequest request,Model model) throws Exception{
        System.out.println("修改商品图片");
        System.out.println(img);
        System.out.println(id);
        //使用uuid给图片重命名，并且去掉四个-
       /* String name = UUID.randomUUID().toString().replace("-","");
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
        System.out.println(imgUrl+"******");*/
        //吧图片路径保存刀数据库
        PictureServiceImpl pictureService = new PictureServiceImpl();
        Map<String,Object> map = pictureService.uploadPicture(img);
        Imager imager = new Imager();
        imager.setImagerurl(map.get("url").toString());
        imager.setImagerid(id);
        bgProductService.updImg(imager);//修改图片路径
        model.addAttribute("img",bgLoginService.findAllImg());
        return "redirect:upd_Product/"+id;
    }

}
