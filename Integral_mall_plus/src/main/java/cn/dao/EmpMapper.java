package cn.dao;


import cn.bean.Emp;

import java.util.List;
import java.util.Map;

public interface EmpMapper {
    Emp loginToIndexBefore(Emp emp);

    List<Emp> findEmpAll();

    void bgaddEmp(Emp emp);

    void bgupdEmp(Emp emp);//修改用户

    int bgdelEmp(Integer id);//删除用户同时删除绑定的积分

    List<Emp> bgLikeSelectByName(String name);//模糊查询

    int bgupdEmpPwd(Map<String,Object> map);

    int bgBatchdeleting_emp(List list4); //批量删除用户同时删除他的积分

    int updateBeforeEmp(Emp emp);

    Emp selectOldPassword(Emp emp);

    List<Emp> findEmpByDept(Emp emp);

    Emp findEmpById(Emp emp);

    int updateBeforeEmpType(Emp emp);
}