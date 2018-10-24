package cn.background.bgService;

import cn.bean.Department;
import cn.bean.Emp;
import cn.bean.Integral;
import cn.dao.DepartmentMapper;
import cn.dao.EmpMapper;
import cn.dao.IntegralMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class BgEmpService {
    @Autowired
    EmpMapper empMapper;
    @Autowired
    DepartmentMapper departmentMapper;
    @Autowired
    IntegralMapper integralMapper;

    public List<Emp> findEmpAll(){//查询所有员工
        return empMapper.findEmpAll();
    }
    public List<Department> findAllDepartment(){//查询部门信息
        return departmentMapper.findAllDepartment();
    };

    public int addJiFen(Integral integral){
        return integralMapper.addJifen(integral);
    }

    public void addEmp(Emp emp){
        empMapper.bgaddEmp(emp);
    }

    public void updEmp(Emp emp){
        empMapper.bgupdEmp(emp);
    }

    public int delEmp(Integer id){
        return empMapper.bgdelEmp(id);
    }

    public List<Emp> likeEmp(String name){
        return empMapper.bgLikeSelectByName(name);
    }

    public int bgupdEmpPwd(Map<String,Object> map){
        return empMapper.bgupdEmpPwd(map);
    }

}
