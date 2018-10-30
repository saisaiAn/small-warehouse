package cn.hcfy.service;

import cn.bean.Commodity;
import cn.bean.CommodityType;
import cn.dao.CommodityTypeMapper;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class CommodityTypeService {
    @Autowired
    CommodityTypeMapper commodityTypeMapper;
    @Autowired
    private JedisClientImp jedisClient;

    public List<CommodityType> selectAllCommodityType(){
        try{
            String result=jedisClient.get("BeforeCommodityTypes");
            if (!StringUtils.isEmpty(result)){
                List<CommodityType> CommodityTypes= JSONObject.parseArray(result,CommodityType.class);
                return CommodityTypes;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        List<CommodityType> CommodityTypes=commodityTypeMapper.selectAllCommodityType();
        try{
            String cacheString =JSON.toJSONString(CommodityTypes);
            jedisClient.set("BeforeCommodityTypes",cacheString);
        }catch (Exception e){
            e.printStackTrace();
        }
        return CommodityTypes;
    };
}
