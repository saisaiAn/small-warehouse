package cn.dao;


import cn.bean.Emp;

import java.util.List;

public interface EmpMapper {
    Emp loginToIndexBefore(Emp emp);

    List<Emp> findEmpAll();


}