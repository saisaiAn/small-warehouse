package cn.hcfy.service;

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
}
