package cn.hcfy.service;

import cn.bean.Orders;
import cn.dao.OrdersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrdersService {

    @Autowired
    OrdersMapper ordersMapper;

    public int insertOrders(Orders orders){

        return ordersMapper.insertOrders(orders);
    }
}
