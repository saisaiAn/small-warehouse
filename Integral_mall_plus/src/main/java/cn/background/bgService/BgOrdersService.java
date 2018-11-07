package cn.background.bgService;

import cn.bean.IntegralSchedule;
import cn.bean.Orders;
import cn.dao.IntegralMapper;
import cn.dao.IntegralScheduleMapper;
import cn.dao.OrdersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Service
public class BgOrdersService {

    @Autowired
    OrdersMapper ordersMapper;

    @Autowired
    IntegralScheduleMapper integralScheduleMapper;

    @Autowired
    IntegralMapper integralMapper;

    public List<Orders> selectOrders(){
        return ordersMapper.selectOrders();
    }

    public List<Orders> selectOrdersById(Integer id){
        return ordersMapper.selectOrdersById(id);
    }

    public int updOrderStatus(Map<Object,Object> Oid){
        return ordersMapper.updOrderStatus(Oid);
    }

    public Orders selectOrdersByRedeemCode(String RedeemCode){
        return ordersMapper.selectOrdersByRedeemCode(RedeemCode);
    }

    public int addIntegralSchedule(IntegralSchedule integralSchedule){
        return integralScheduleMapper.addIntegralSchedule(integralSchedule);
    }

    public int reduceProcessingIntegral(Map<Object,Object> map){ //结算 减少积分 购买商品
        return integralMapper.reduceProcessingIntegral(map);
    }

}
