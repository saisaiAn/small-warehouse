package cn.dao;

import cn.bean.shoppingCar;
import cn.bean.shoppingCarExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface shoppingCarMapper {
    long countByExample(shoppingCarExample example);

    int deleteByExample(shoppingCarExample example);

    int deleteByPrimaryKey(Integer carno);

    int insert(shoppingCar record);

    int insertSelective(shoppingCar record);

    List<shoppingCar> selectByExample(shoppingCarExample example);

    shoppingCar selectByPrimaryKey(Integer carno);

    int updateByExampleSelective(@Param("record") shoppingCar record, @Param("example") shoppingCarExample example);

    int updateByExample(@Param("record") shoppingCar record, @Param("example") shoppingCarExample example);

    int updateByPrimaryKeySelective(shoppingCar record);

    int updateByPrimaryKey(shoppingCar record);
}