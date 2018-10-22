package cn.dao;


import cn.bean.Department;

import java.util.List;

public interface DepartmentMapper {
    List<Department> findAllDepartment();//查询所有部门
}