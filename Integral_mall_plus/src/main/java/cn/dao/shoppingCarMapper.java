package cn.dao;


import cn.bean.Emp;
import cn.bean.shoppingCar;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface shoppingCarMapper {
    public int insertShoppingCar(shoppingCar shoppingCar);
    public List<shoppingCar> selectShoppingCarByEmpId(Emp emp);
    public shoppingCar selectShoppingCarByCarId(shoppingCar shoppingCar);
    public int deleteByPrimaryKey(Integer carno);
    public int updateByExampleSelective(@Param("shoppingcar") shoppingCar shoppingcar);
}