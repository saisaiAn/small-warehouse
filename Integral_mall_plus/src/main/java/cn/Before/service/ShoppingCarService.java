package cn.Before.service;

import cn.bean.Emp;
import cn.bean.ShoppingCar;
import cn.dao.ShoppingCarMapper;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class ShoppingCarService {

    @Autowired
    ShoppingCarMapper shoppingCarMapper;
    @Autowired
    private JedisClientImp jedisClient;
    public int insertShoppingCar(ShoppingCar shoppingCar){
        try{
            jedisClient.del("BeforeShoppingCars");
        }catch (Exception e){
            e.printStackTrace();
        }
        return shoppingCarMapper.insertShoppingCar(shoppingCar);
    };
    public List<ShoppingCar> selectShoppingCarByEmpId(Emp emp){
        try{
            String result=jedisClient.get("BeforeShoppingCars");
            if (!StringUtils.isEmpty(result)){
                List<ShoppingCar> shoppingCars= JSONObject.parseArray(result,ShoppingCar.class);
                return shoppingCars;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        List<ShoppingCar> shoppingCars=shoppingCarMapper.selectShoppingCarByEmpId(emp);
        try{
            String cacheString =JSON.toJSONString(shoppingCars);
            jedisClient.set("BeforeShoppingCars",cacheString);
        }catch (Exception e){
            e.printStackTrace();
        }
        return shoppingCars;
    };
    public ShoppingCar selectShoppingCarByCarId(ShoppingCar shoppingCar){ return  shoppingCarMapper.selectShoppingCarByCarId(shoppingCar);};
    public int deleteByPrimaryKey(Integer carno){
        try{
            jedisClient.del("BeforeShoppingCars");
        }catch (Exception e){
            e.printStackTrace();
        }
        return  shoppingCarMapper.deleteByPrimaryKey(carno);
    };
    public int updateByExampleSelective(ShoppingCar shoppingcar){
        try{
            jedisClient.del("BeforeShoppingCars");
        }catch (Exception e){
            e.printStackTrace();
        }
        return shoppingCarMapper.updateByExampleSelective(shoppingcar);
    };
}
