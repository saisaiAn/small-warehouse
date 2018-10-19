package cn.hcfy.dao;

import cn.hcfy.bean.IntegralType;
import cn.hcfy.bean.IntegralTypeExample;
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