package cn.hcfy.service;

import cn.bean.Emp;
import cn.bean.shoppingCar;
import cn.dao.shoppingCarMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class shoppingCarService {

    @Autowired
    shoppingCarMapper shoppingCarMapper;

    public int insertShoppingCar(shoppingCar shoppingCar){
        return shoppingCarMapper.insertShoppingCar(shoppingCar);
    };
    public List<shoppingCar> selectShoppingCarById(Emp emp){
        return shoppingCarMapper.selectShoppingCarById(emp);
    };
    public int deleteByPrimaryKey(Integer carno){
        return  shoppingCarMapper.deleteByPrimaryKey(carno);
    };
}
