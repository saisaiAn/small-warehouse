package cn.background.dao;

import cn.background.bean.CommodityType;
import cn.background.bean.CommodityTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CommodityTypeMapper {
    long countByExample(CommodityTypeExample example);

    int deleteByExample(CommodityTypeExample example);

    int deleteByPrimaryKey(Integer commoditytypeno);

    int insert(CommodityType record);

    int insertSelective(CommodityType record);

    List<CommodityType> selectByExample(CommodityTypeExample example);

    CommodityType selectByPrimaryKey(Integer commoditytypeno);

    int updateByExampleSelective(@Param("record") CommodityType record, @Param("example") CommodityTypeExample example);

    int updateByExample(@Param("record") CommodityType record, @Param("example") CommodityTypeExample example);

    int updateByPrimaryKeySelective(CommodityType record);

    int updateByPrimaryKey(CommodityType record);
}