package cn.background.bgService;

import cn.bean.*;
import cn.dao.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service
public class BgIntegralService {

    @Autowired
    EmpMapper empMapper;
    @Autowired
    AttendanceMapper attendanceMapper;

    @Autowired
    IntegralAuditMapper integralAuditMapper;

    @Autowired
    IntegralScheduleMapper integralScheduleMapper;

    @Autowired
    IntegralMapper integralMapper;

    @Autowired
    DepartmentMapper departmentMapper;

    public List<Emp> findEmpByDept(Emp emp){
        return empMapper.findEmpByDept(emp);
    }
    public Emp findEmpById(Emp emp){
        return empMapper.findEmpById(emp);
    }
    public List<Attendance> findAllAttendance(){
        return attendanceMapper.findAllAttendance();
    }
    public int bgAddzdyJfApply(IntegralAudit integralAudit){
        return integralAuditMapper.bgAddzdyJfApply(integralAudit);
    }
    public List<IntegralAudit> findAll(){
        return integralAuditMapper.findAllIntegralAudit();
    }

    public int updIntegralauditAuditType(Map<Object,Object> map){
        return integralAuditMapper.updIntegralauditAuditType(map);
    }

    public int addIntegralSchedule(IntegralSchedule integralSchedule){
        return integralScheduleMapper.addIntegralSchedule(integralSchedule);
    }

    public int addProcessingIntegral(Map<Object,Object> map){
        return integralMapper.addProcessingIntegral(map);
    }

    public int reduceProcessingIntegral(Map<Object,Object> map){
        return integralMapper.reduceProcessingIntegral(map);
    }

    public List<Department> findAllDept(){
        return departmentMapper.findAllDepartment();
    }

    public List<IntegralAudit> findAllIntegralAuditByDeptNo(Integer deptno){
        return  integralAuditMapper.findAllIntegralAuditByDeptNo(deptno);
    }
    public List<IntegralAudit> findAllIntegralAuditByIntegralauditno(Integer integralauditno){
        return  integralAuditMapper.findAllIntegralAuditByIntegralauditno(integralauditno);
    }
}
