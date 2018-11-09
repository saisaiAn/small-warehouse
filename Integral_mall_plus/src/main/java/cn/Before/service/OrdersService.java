package cn.Before.service;

import cn.bean.Orders;
import cn.dao.OrdersMapper;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.Map;

@Service
public class OrdersService {

    @Autowired
    OrdersMapper ordersMapper;
    @Autowired
    private JedisClientImp jedisClient;

    public int insertOrders(Orders orders){
        try{
            jedisClient.del("BeforeOrders");
        }catch (Exception e){
            e.printStackTrace();
        }
        return ordersMapper.insertOrders(orders);
    }
    public List<Orders>selectOrdersByEmpId(Map ByEmpIdMap){
        try{
            String result=jedisClient.get("BeforeOrders");
            if (!StringUtils.isEmpty(result)){
                List<Orders> Orders= JSONObject.parseArray(result,Orders.class);
                return Orders;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        List<Orders> Orders=ordersMapper.selectOrdersByEmpId(ByEmpIdMap);
        try{
            String cacheString =JSON.toJSONString(Orders);
            if (cacheString.length()>10){
            jedisClient.set("BeforeOrders",cacheString);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return Orders;
    }
}
