package cn.Before.service;

import cn.bean.Emp;
import cn.bean.IntegralSchedule;
import cn.dao.IntegralScheduleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IntegralScheduleService {
    @Autowired
    IntegralScheduleMapper integralScheduleMapper;

   public  List<IntegralSchedule> findAllIntegralSheduleByEmp(Emp emp){
       return integralScheduleMapper.findAllIntegralSheduleByEmp(emp);
   };
}
