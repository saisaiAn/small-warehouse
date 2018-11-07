package cn.dao;


import cn.bean.Emp;
import cn.bean.Integral;

import java.util.Map;

public interface IntegralMapper {
    int addJifen(Integral integral);
    int updateByExampleIntegral(Integral integral);

    int addProcessingIntegral(Map<Object,Object> map);
    public int reduceProcessingIntegral(Map<Object,Object> map);
    Integral findIntegralByEmp(Emp emp);
}