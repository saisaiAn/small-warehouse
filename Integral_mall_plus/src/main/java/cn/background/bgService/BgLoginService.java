package cn.background.bgService;

import cn.bean.Commodity;
import cn.bean.Emp;
import cn.bean.Imager;
import cn.bean.Orders;
import cn.dao.CommodityMapper;
import cn.dao.EmpMapper;
import cn.dao.ImagerMapper;
import cn.dao.OrdersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BgLoginService {
    @Autowired
    EmpMapper empMapper;

    @Autowired
    ImagerMapper imagerMapper;

    @Autowired
    OrdersMapper ordersMapper;

    @Autowired
    CommodityMapper commodityMapper;

    public Emp LoginByUsernameAndPassword(Emp emp){
        return empMapper.loginToIndexBefore(emp);
    }

    public List<Imager> findAllImg(){
       return   imagerMapper.selectAllImager();
    }

    public List<Emp> findAllEmp(){
        return empMapper.findEmpAll();
    }

    public List<Orders> selectOrders(){
        return ordersMapper.selectOrders();
    }

    public List<Commodity> selectAllCommodity(){
        return commodityMapper.selectAllCommodity();
    }

}
