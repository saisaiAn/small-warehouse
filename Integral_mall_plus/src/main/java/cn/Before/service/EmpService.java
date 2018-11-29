package cn.Before.service;

import cn.Utils.MD5Util;
import cn.bean.Emp;
import cn.dao.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmpService {
    @Autowired
    EmpMapper empMapper;
    @Autowired
    private JedisClientImp jedisClient;
    public Emp loginToIndexBefore(Emp emp){
        try{
            jedisClient.del("BeforeShoppingCars");
            jedisClient.del("BeforeCommodityTypes");
            jedisClient.del("BeforeCommoditys");
            jedisClient.del("BeforeImagers");
            jedisClient.del("BeforeOrders");
        }catch (Exception e){
            e.printStackTrace();
        }
        String pwd=MD5Util.encryptPassword(emp.getPassword());
        emp.setPassword(pwd);
        return empMapper.loginToIndexBefore(emp);
    }

    public int updateBeforeEmp(Emp emp){
        String pwd=MD5Util.encryptPassword(emp.getPassword());
        emp.setPassword(pwd);
        return  empMapper.updateBeforeEmp(emp);
    }
    public Emp selectOldPassword(Emp emp){
        String pwd=MD5Util.encryptPassword(emp.getPassword());
        emp.setPassword(pwd);
        return empMapper.selectOldPassword(emp);
    };
    public int updateBeforeEmpType(Emp emp){
        String pwd=MD5Util.encryptPassword(emp.getPassword());
        emp.setPassword(pwd);
        return empMapper.updateBeforeEmpType(emp);
    }
}
