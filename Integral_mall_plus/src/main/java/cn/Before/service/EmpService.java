package cn.Before.service;

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

    public int updateBeforeEmp(Emp emp){
        return  empMapper.updateBeforeEmp(emp);
    }
    public Emp selectOldPassword(Emp emp){
        return empMapper.selectOldPassword(emp);
    };
    public int updateBeforeEmpType(Emp emp){
        return empMapper.updateBeforeEmpType(emp);
    }
}
