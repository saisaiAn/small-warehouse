package cn.background.dao;

import cn.background.bean.Integralschedule;
import cn.background.bean.IntegralscheduleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IntegralscheduleMapper {
    long countByExample(IntegralscheduleExample example);

    int deleteByExample(IntegralscheduleExample example);

    int deleteByPrimaryKey(Integer intergralscheduleno);

    int insert(Integralschedule record);

    int insertSelective(Integralschedule record);

    List<Integralschedule> selectByExample(IntegralscheduleExample example);

    Integralschedule selectByPrimaryKey(Integer intergralscheduleno);

    int updateByExampleSelective(@Param("record") Integralschedule record, @Param("example") IntegralscheduleExample example);

    int updateByExample(@Param("record") Integralschedule record, @Param("example") IntegralscheduleExample example);

    int updateByPrimaryKeySelective(Integralschedule record);

    int updateByPrimaryKey(Integralschedule record);
}