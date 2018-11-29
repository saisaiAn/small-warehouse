package cn.dao;


import cn.bean.Emp;
import cn.bean.Orders;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface OrdersMapper {
    public int insertOrders(Orders orders);
    List<Orders> selectOrdersByEmpId(Map ByEmpIdMap);
    List<Orders> selectOrders();
    List<Orders> selectOrdersById(@Param("id") Integer id);
    int updOrderStatus(Map<Object,Object> Oid);

    Orders selectOrdersByRedeemCode(String RedeemCode);
}