package cn.dao;

import cn.bean.Attendance;

import java.util.List;
import java.util.Map;

public interface AttendanceMapper {

    List<Attendance> findAllAttendance();

    int add_Attendance(Map<Object,Object> map);

    int upd_Attendance(Map<Object,Object> map);

    int delete_Attendance(Integer aid);
}