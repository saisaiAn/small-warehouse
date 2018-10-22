package cn.background.bgService;

import cn.bean.Department;
import cn.bean.Emp;
import cn.dao.DepartmentMapper;
import cn.dao.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BgEmpService {
    @Autowired
    EmpMapper empMapper;
    @Autowired
    DepartmentMapper departmentMapper;
    public List<Emp> findEmpAll(){//查询所有员工
        return empMapper.findEmpAll();
    }
    public List<Department> findAllDepartment(){//查询部门信息
        return departmentMapper.findAllDepartment();
    };
}
