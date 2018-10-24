package cn.dao;


import cn.bean.Emp;

import java.util.List;

public interface EmpMapper {
    Emp loginToIndexBefore(Emp emp);

    List<Emp> findEmpAll();

    void bgaddEmp(Emp emp);

    void bgupdEmp(Emp emp);//修改用户

    int bgdelEmp(Integer id);//删除用户同时删除绑定的积分

}