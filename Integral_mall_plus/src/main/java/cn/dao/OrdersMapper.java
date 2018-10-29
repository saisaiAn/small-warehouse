package cn.dao;


import cn.bean.Emp;
import cn.bean.Orders;

import java.util.List;
import java.util.Map;

public interface OrdersMapper {
    public int insertOrders(Orders orders);
    List<Orders> selectOrdersByEmpId(Map ByEmpIdMap);
}