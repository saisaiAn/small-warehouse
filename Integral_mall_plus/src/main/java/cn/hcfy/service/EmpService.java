package cn.hcfy.service;

import cn.bean.Emp;
import cn.dao.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmpService {
    @Autowired
    EmpMapper empMapper;
    public Emp loginToIndexBefore(Emp emp){
       return empMapper.loginToIndexBefore(emp);
    }
}
