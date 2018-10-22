package cn.background.bgService;

import cn.bean.Emp;
import cn.dao.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BgLoginService {
    @Autowired
    EmpMapper empMapper;

    public Emp LoginByUsernameAndPassword(Emp emp){
        return empMapper.loginToIndexBefore(emp);
    }


}
