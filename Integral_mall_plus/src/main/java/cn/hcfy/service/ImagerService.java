package cn.hcfy.service;

import cn.bean.Emp;
import cn.bean.Imager;
import cn.dao.ImagerMapper;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class ImagerService {

    @Autowired
    ImagerMapper imagerMapper;
    @Autowired
    private JedisClientImp jedisClient;

    public List<Imager> selectAllImager(){
        try{
            String result=jedisClient.get("BeforeImagers");
            if (!StringUtils.isEmpty(result)){
                System.out.println(result+"============");
                List<Imager> imagers= JSONObject.parseArray(result,Imager.class);
                return imagers;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        List<Imager> imager=imagerMapper.selectAllImager();
        try{
            String cacheString =JSON.toJSONString(imager);
            jedisClient.set("BeforeImagers",cacheString);
        }catch (Exception e){
            e.printStackTrace();
        }
        return imager;
    }
}
