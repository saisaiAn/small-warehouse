package cn.dao;


import cn.bean.Emp;
import cn.bean.ShoppingCar;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShoppingCarMapper {
    public int insertShoppingCar(ShoppingCar shoppingCar);
    public List<ShoppingCar> selectShoppingCarByEmpId(Emp emp);
    public ShoppingCar selectShoppingCarByCarId(ShoppingCar shoppingCar);
    public int deleteByPrimaryKey(Integer carno);
    public int updateByExampleSelective(@Param("shoppingcar") ShoppingCar shoppingcar);
}