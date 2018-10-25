package cn.dao;


import cn.bean.Emp;
import cn.bean.Orders;

import java.util.List;

public interface OrdersMapper {
    public int insertOrders(Orders orders);
    List<Orders> selectOrdersByEmpId(Emp emp);
}