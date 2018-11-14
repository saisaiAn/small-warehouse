package cn.Before.service;

import cn.bean.Emp;
import cn.bean.shoppingCar;
import cn.dao.shoppingCarMapper;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class shoppingCarService {

    @Autowired
    shoppingCarMapper shoppingCarMapper;
    @Autowired
    private JedisClientImp jedisClient;
    public int insertShoppingCar(shoppingCar shoppingCar){
        try{
            jedisClient.del("BeforeShoppingCars");
        }catch (Exception e){
            e.printStackTrace();
        }
        return shoppingCarMapper.insertShoppingCar(shoppingCar);
    };
    public List<shoppingCar> selectShoppingCarByEmpId(Emp emp){
        try{
            String result=jedisClient.get("BeforeShoppingCars");
            if (!StringUtils.isEmpty(result)){
                List<shoppingCar> shoppingCars= JSONObject.parseArray(result,shoppingCar.class);
                return shoppingCars;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        List<shoppingCar> shoppingCars=shoppingCarMapper.selectShoppingCarByEmpId(emp);
        try{
            String cacheString =JSON.toJSONString(shoppingCars);
            jedisClient.set("BeforeShoppingCars",cacheString);
        }catch (Exception e){
            e.printStackTrace();
        }
        return shoppingCars;
    };
    public shoppingCar selectShoppingCarByCarId(shoppingCar shoppingCar){ return  shoppingCarMapper.selectShoppingCarByCarId(shoppingCar);};
    public int deleteByPrimaryKey(Integer carno){
        try{
            jedisClient.del("BeforeShoppingCars");
        }catch (Exception e){
            e.printStackTrace();
        }
        return  shoppingCarMapper.deleteByPrimaryKey(carno);
    };
    public int updateByExampleSelective(shoppingCar shoppingcar){
        try{
            jedisClient.del("BeforeShoppingCars");
        }catch (Exception e){
            e.printStackTrace();
        }
        return shoppingCarMapper.updateByExampleSelective(shoppingcar);
    };
}
