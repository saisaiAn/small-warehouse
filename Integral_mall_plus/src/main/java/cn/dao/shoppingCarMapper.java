package cn.dao;


import cn.bean.Emp;
import cn.bean.shoppingCar;

import java.util.List;

public interface shoppingCarMapper {
    public int insertShoppingCar(shoppingCar shoppingCar);
    public List<shoppingCar> selectShoppingCarById(Emp emp);
    public int deleteByPrimaryKey(Integer carno);
}