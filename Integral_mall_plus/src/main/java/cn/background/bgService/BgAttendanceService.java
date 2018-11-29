package cn.background.bgService;

import cn.bean.Attendance;
import cn.dao.AttendanceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class BgAttendanceService {

    @Autowired
    AttendanceMapper attendanceMapper;

    public List<Attendance> findAllAttendance(){
        return attendanceMapper.findAllAttendance();
    }

    public int add_Attendance(Map<Object,Object> map){
        return attendanceMapper.add_Attendance(map);
    }

    public int upd_Attendance(Map<Object,Object> map){
        return attendanceMapper.upd_Attendance(map);
    }

    public int delete_Attendance(Integer aid){
        return attendanceMapper.delete_Attendance(aid);
    }
}
