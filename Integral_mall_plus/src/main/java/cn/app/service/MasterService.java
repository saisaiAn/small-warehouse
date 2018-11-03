package cn.app.service;

import cn.bean.Emp;
import cn.dao.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MasterService {
    @Autowired
    EmpMapper empMapper;

    //校长登录
    public Emp loginMaster(Emp emp){
        return empMapper.loginToIndexBefore(emp);
    }

    //查询校长信息
    public List<Emp> findMaster(){return empMapper.findEmpAll(); }
    //积分奖惩情况

        //修改校长信息
    public void updateMaster(Emp emp){ empMapper.masterUpd(emp); }
}
