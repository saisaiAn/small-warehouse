package cn.hcfy.service;

import cn.bean.Emp;
import cn.bean.Orders;
import cn.dao.OrdersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class OrdersService {

    @Autowired
    OrdersMapper ordersMapper;

    public int insertOrders(Orders orders){return ordersMapper.insertOrders(orders); }
    public List<Orders>selectOrdersByEmpId(Map ByEmpIdMap){return ordersMapper.selectOrdersByEmpId(ByEmpIdMap);}
}
