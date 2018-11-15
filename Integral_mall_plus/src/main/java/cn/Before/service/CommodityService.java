package cn.Before.service;

import cn.bean.Commodity;
import cn.dao.CommodityMapper;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class CommodityService {
    @Autowired
    CommodityMapper commodityMapper;
    @Autowired
    private JedisClientImp jedisClient;

    public List<Commodity> selectAllCommodity(){
        try{
            String result=jedisClient.get("BeforeCommoditys");
            if (!StringUtils.isEmpty(result)){
                List<Commodity> Commoditys= JSONObject.parseArray(result,Commodity.class);
                return Commoditys;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        List<Commodity> Commoditys=commodityMapper.selectAllCommodity();
        try{
            String cacheString =JSON.toJSONString(Commoditys);
            jedisClient.set("BeforeCommoditys",cacheString);
        }catch (Exception e){
            e.printStackTrace();
        }
        return Commoditys;
    }
    public Commodity selectCommodityById(Commodity commodity){
        return commodityMapper.selectCommodityById(commodity);
    }
    public List<Commodity> commodityByType(Integer commodityTypeNo){
        return commodityMapper.commodityByType(commodityTypeNo);
    }
    public int updateCommoditySum(Commodity commodity){
        return  commodityMapper.updateCommoditySum(commodity);
    }
}
