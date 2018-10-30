package cn.app.service;

import cn.bean.Emp;
import cn.dao.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MasterService {
    @Autowired
    EmpMapper empMapper;

    //校长登录
    public Emp loginMaster(Emp emp){
        return empMapper.loginToIndexBefore(emp);
    }
}
