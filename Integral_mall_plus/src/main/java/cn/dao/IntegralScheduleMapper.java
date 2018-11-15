package cn.dao;


import cn.bean.Emp;
import cn.bean.IntegralSchedule;

import java.util.List;

public interface IntegralScheduleMapper {
    int addIntegralSchedule(IntegralSchedule integralSchedule);
    List<IntegralSchedule> findAllIntegralSheduleByEmp(Emp emp);
}