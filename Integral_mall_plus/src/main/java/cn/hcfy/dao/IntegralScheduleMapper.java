package cn.hcfy.dao;

import cn.hcfy.bean.IntegralSchedule;
import cn.hcfy.bean.IntegralScheduleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IntegralScheduleMapper {
    long countByExample(IntegralScheduleExample example);

    int deleteByExample(IntegralScheduleExample example);

    int deleteByPrimaryKey(Integer intergralscheduleno);

    int insert(IntegralSchedule record);

    int insertSelective(IntegralSchedule record);

    List<IntegralSchedule> selectByExample(IntegralScheduleExample example);

    IntegralSchedule selectByPrimaryKey(Integer intergralscheduleno);

    int updateByExampleSelective(@Param("record") IntegralSchedule record, @Param("example") IntegralScheduleExample example);

    int updateByExample(@Param("record") IntegralSchedule record, @Param("example") IntegralScheduleExample example);

    int updateByPrimaryKeySelective(IntegralSchedule record);

    int updateByPrimaryKey(IntegralSchedule record);
}