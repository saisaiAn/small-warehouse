package cn.dao;

import cn.bean.Attendance;

import java.util.List;

public interface AttendanceMapper {

    List<Attendance> findAllAttendance();

}
