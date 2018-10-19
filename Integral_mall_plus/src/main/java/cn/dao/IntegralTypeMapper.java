package cn.dao;

import cn.bean.IntegralType;
import cn.bean.IntegralTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IntegralTypeMapper {
    long countByExample(IntegralTypeExample example);

    int deleteByExample(IntegralTypeExample example);

    int deleteByPrimaryKey(Integer integraltypeno);

    int insert(IntegralType record);

    int insertSelective(IntegralType record);

    List<IntegralType> selectByExample(IntegralTypeExample example);

    IntegralType selectByPrimaryKey(Integer integraltypeno);

    int updateByExampleSelective(@Param("record") IntegralType record, @Param("example") IntegralTypeExample example);

    int updateByExample(@Param("record") IntegralType record, @Param("example") IntegralTypeExample example);

    int updateByPrimaryKeySelective(IntegralType record);

    int updateByPrimaryKey(IntegralType record);
}