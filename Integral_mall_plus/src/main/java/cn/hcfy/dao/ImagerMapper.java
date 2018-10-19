package cn.hcfy.dao;

import cn.hcfy.bean.Imager;
import cn.hcfy.bean.ImagerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ImagerMapper {
    long countByExample(ImagerExample example);

    int deleteByExample(ImagerExample example);

    int deleteByPrimaryKey(Integer imagerno);

    int insert(Imager record);

    int insertSelective(Imager record);

    List<Imager> selectByExample(ImagerExample example);

    Imager selectByPrimaryKey(Integer imagerno);

    int updateByExampleSelective(@Param("record") Imager record, @Param("example") ImagerExample example);

    int updateByExample(@Param("record") Imager record, @Param("example") ImagerExample example);

    int updateByPrimaryKeySelective(Imager record);

    int updateByPrimaryKey(Imager record);
}