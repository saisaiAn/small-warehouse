package cn.background.bgService;

import cn.bean.Emp;
import cn.dao.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BgEmpService {
    @Autowired
    EmpMapper empMapper;

    public List<Emp> findEmpAll(){//查询所有员工
        return empMapper.findEmpAll();
    }

}
