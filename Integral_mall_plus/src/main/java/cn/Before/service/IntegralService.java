package cn.Before.service;

import cn.bean.Emp;
import cn.bean.Integral;
import cn.dao.IntegralMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IntegralService {

    @Autowired
    IntegralMapper integralMapper;

    public int updateByExampleIntegral(Integral integral){
        return integralMapper.updateByExampleIntegral(integral);
    };
    public Integral findIntegralByEmp(Emp emp){
        return integralMapper.findIntegralByEmp(emp);
    };
}
