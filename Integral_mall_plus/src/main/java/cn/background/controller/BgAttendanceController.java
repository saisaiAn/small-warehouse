package cn.background.controller;

import cn.background.bgService.BgAttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("background")
public class BgAttendanceController {

    @Autowired
    BgAttendanceService  bgAttendanceService;

    @RequestMapping("/Go_Attendance")
    public String Go_Attendance(Model model){//查询所有考勤制度信息
        model.addAttribute("attendance",bgAttendanceService.findAllAttendance());
        return "/background/Attendance";
    }

    @ResponseBody
    @RequestMapping(value = "Add_attendance",method = RequestMethod.POST)
    public String Add_attendance(@RequestParam("Attendance_record") String Attendance_record,
                                 @RequestParam("Integral_quantity") Integer Integral_quantity){
        Map<Object,Object> map = new HashMap<>();
            map.put("Attendance_record",Attendance_record);
            map.put("Integral_quantity",Integral_quantity);
        if(bgAttendanceService.add_Attendance(map)>0){
            return "yes";
        }else
            return "no";
    }

    @ResponseBody
    @RequestMapping(value = "Upd_attendance",method = RequestMethod.POST)
    public String Upd_attendance(@RequestParam("updAttendance_record") String updAttendance_record,
                                 @RequestParam("updIntegral_quantity") Integer updIntegral_quantity,
                                 @RequestParam("AttendanceNo")Integer AttendanceNo){
        Map<Object,Object> map = new HashMap<>();
        map.put("updAttendance_record",updAttendance_record);
        map.put("updIntegral_quantity",updIntegral_quantity);
        map.put("AttendanceNo",AttendanceNo);
        if(bgAttendanceService.upd_Attendance(map)>0)
            return "yes";
        else
            return "no";
    }

    @ResponseBody
    @RequestMapping(value = "Delete_attendance",method = RequestMethod.POST)
    public String Delete_attendance(@RequestParam("AttendanceNo") Integer AttendanceNo){
        if(bgAttendanceService.delete_Attendance(AttendanceNo)>0) {
            return "yes";
        }else{
            return "no";
        }
    }


}
