package cn.background.bgService;

import cn.Utils.MD5Util;
import cn.bean.Department;
import cn.bean.Emp;
import cn.bean.Integral;
import cn.dao.DepartmentMapper;
import cn.dao.EmpMapper;
import cn.dao.IntegralMapper;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

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

/*    @Autowired
    JedisClientImp jedisClientImp;*/

    public List<Emp> findEmpAll(){//查询所有员工  员工经常变动，不加入redis
        /*try {
            String result = jedisClientImp.get("BgEmpAll");
            if(!StringUtils.isEmpty(result)){
                List<Emp> emps = JSONObject.parseArray(result,Emp.class);
                return emps;
            }
        }catch (Exception e){
            e.printStackTrace();
        }*/
        List<Emp> emps = empMapper.findEmpAll();
        /*try {
            String emp = JSON.toJSONString(emps);
            jedisClientImp.set("BgEmpAll",emp);
        }catch (Exception e){
            e.printStackTrace();
        }*/
        return emps;
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
        String pwd=MD5Util.encryptPassword(map.get("pwd")+"");
        map.put("pwd",pwd);
        return empMapper.bgupdEmpPwd(map);
    }

    public int bgBatchdeleting_emp(List arrs){
        return empMapper.bgBatchdeleting_emp(arrs);
    }

    public int emp_Become_a_regular_worker(Integer empId){
        return empMapper.emp_Become_a_regular_worker(empId);
    }

    public List<Emp> findEmpByDept(Emp emp){
        return empMapper.findEmpByDept(emp);
    }
}
