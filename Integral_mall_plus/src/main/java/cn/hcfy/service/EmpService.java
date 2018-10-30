package cn.hcfy.service;

import cn.bean.Emp;
import cn.dao.EmpMapper;
import cn.dao.JedisClient;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import jdk.nashorn.internal.runtime.JSONListAdapter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class EmpService {
    @Autowired
    EmpMapper empMapper;

    public Emp loginToIndexBefore(Emp emp){

        Emp emp1=empMapper.loginToIndexBefore(emp);

        return emp1;
    }

    public int updateBeforeEmp(Emp emp){
        System.out.println(emp);
        return  empMapper.updateBeforeEmp(emp);
    }
    public Emp selectOldPassword(Emp emp){
        return empMapper.selectOldPassword(emp);
    };
}
