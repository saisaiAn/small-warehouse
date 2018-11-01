package cn.background.bgService;

import cn.bean.Attendance;
import cn.bean.Emp;
import cn.dao.AttendanceMapper;
import cn.dao.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class BgIntegralService {

    @Autowired
    EmpMapper empMapper;
    @Autowired
    AttendanceMapper attendanceMapper;

    public List<Emp> findEmpByDept(Emp emp){
        return empMapper.findEmpByDept(emp);
    }
    public Emp findEmpById(Emp emp){
        return empMapper.findEmpById(emp);
    }
    public List<Attendance> findAllAttendance(){
        return attendanceMapper.findAllAttendance();
    }


}
