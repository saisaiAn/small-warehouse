package cn.background.bgService;

import cn.bean.Commodity;
import cn.bean.CommodityType;
import cn.bean.Imager;
import cn.dao.CommodityMapper;
import cn.dao.CommodityTypeMapper;
import cn.dao.ImagerMapper;
import cn.Before.service.JedisClientImp;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class BgProductService {
    @Autowired
    CommodityMapper commodityMapper;
    @Autowired
    CommodityTypeMapper commodityTypeMapper;

    @Autowired
    ImagerMapper imagerMapper;

    @Autowired
    private JedisClientImp jedisClient;

    public List<Commodity> findAllCommodity(){
        try{
            String result=jedisClient.get("BgCommodity");
            if (!StringUtils.isEmpty(result)){
                System.out.println(result+"============");
                List<Commodity> commodities= JSONObject.parseArray(result,Commodity.class);
                return commodities;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        List<Commodity> commodities = commodityMapper.selectAllCommodity();
        try{
            String commodityString = JSON.toJSONString(commodities);
            jedisClient.set("BgCommodity",commodityString);
        }catch (Exception e){
            e.printStackTrace();
        }
        return commodities;
    }

    public int findCountCommodity(){
        return commodityMapper.findCountCommodity();
    }

    public List<CommodityType> findAllCommodityType(){//查询所有商品分类类型
        return commodityTypeMapper.selectAllCommodityType();
    }

    public List<CommodityType> findProByType(Integer idType){//根据类型查询商品
        return commodityMapper.findProByType(idType);
    }

    public int addPro(Commodity commodity){
        try{
            jedisClient.del("BeforeCommoditys");
            jedisClient.del("BgCommodity");
        }catch (Exception e){
            e.printStackTrace();
        }
        return commodityMapper.bgAddProduct(commodity);
    }

    public int addImg(Imager imager){
        try{
            jedisClient.del("BeforeImagers");
            jedisClient.del("BgCommodity");
        }catch (Exception e){
            e.printStackTrace();
        }
        return imagerMapper.addImg(imager);
    }

    public Commodity findCommodityById(Commodity commodity){
        return commodityMapper.selectCommodityById(commodity);
    }

    public void updatePro(Commodity commodity){//修改商品信息
        try{
            jedisClient.del("BeforeCommoditys");
            jedisClient.del("BgCommodity");
        }catch (Exception e){
            e.printStackTrace();
        }
        commodityMapper.updatePro(commodity);
    }

    public int bg_undercarriage_product(Integer proid){//下架商品
        try{
            jedisClient.del("BeforeCommoditys");
            jedisClient.del("BgCommodity");
        }catch (Exception e){
            e.printStackTrace();
        }
        return commodityMapper.bg_undercarriage_product(proid);
    }

    public int bg_grounding_product(Integer proid){//上架商品
        try{
            jedisClient.del("BeforeCommoditys");
            jedisClient.del("BgCommodity");
        }catch (Exception e){
            e.printStackTrace();
        }
        return commodityMapper.bg_grounding_product(proid);
    }

    public  List<Commodity> likeProductByProName(String proName){
        return commodityMapper.likeProductByProName(proName);
    }

    public int updImg(Imager imager){
        try{
            jedisClient.del("BeforeImagers");
            jedisClient.del("BgCommodity");
        }catch (Exception e){
            e.printStackTrace();
        }
        return imagerMapper.updImg(imager);
    }

}
