<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%
    request.setAttribute("path", request.getContextPath());
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="${path}/static/background/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="${path}/static/background/css/style.css"/>
        <link href="${path}/static/background/assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="${path}/static/background/assets/css/ace.min.css" />
        <%--<link rel="stylesheet" href="${path}/static/background/font/css/font-awesome.min.css" />--%>
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="${path}/static/background/assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="${path}/static/background/js/jquery-1.9.1.min.js"></script>
        <script src="${path}/static/background/assets/js/bootstrap.min.js"></script>
         
		<script src="${path}/static/background/assets/js/typeahead-bs2.min.js"></script>
		<script src="${path}/static/background/assets/js/jquery.dataTables.min.js"></script>
		<script src="${path}/static/background/assets/js/jquery.dataTables.bootstrap.js"></script>
        <script src="${path}/static/background/assets/layer/layer.js" type="text/javascript" ></script>
        <script src="${path}/static/background/assets/laydate/laydate.js" type="text/javascript"></script>
		<script src="${path}/static/background/assets/dist/echarts.js"></script>
<title>考勤管理</title>
</head>

<body>
<div class="margin clearfix">
 <div class="amounts_style">
   <%--<div class="transaction_Money clearfix">
      <div class="Money"><span >成交总额：1.2234.3456.00元</span><p>最新统计时间:2016-8-2</p></div>
       <div class="Money"><span ><em>￥</em>3456.00元</span><p>当天成交额</p></div>
       <div class="l_f Statistics_btn">
       <a href="javascript:ovid()" title="当月统计" onclick="Statistics_btn()" class="btn  btn-info btn-sm no-radius"><i class="bigger fa fa-bar-chart "></i><h5 class="margin-top">当月统计</h5></a>
     </div>
    </div>--%>
    <div class="border clearfix">
      <span class="l_f">
      <a href="javascript:ovid()" class="btn btn-info add_work_attendance">添加考勤</a>
     <%-- <a href="javascript:ovid()" class="btn btn-danger">当天订单</a>
        <a href="javascript:ovid()" class="btn btn-danger">当月订单</a>--%>
       </span>
       <span class="r_f">共：<b id="count"></b>笔</span>
     </div>
   <div class="Record_list">
    <table class="table table-striped table-bordered table-hover" id="sample-table">
       <thead>
		 <tr>
            <th width="100px">编号</th>
             <th width="180px">考勤内容</th>
            <th width="200px">奖惩积分数量</th>
            <th width="180px">操作</th>
			</tr>
		</thead>
        <tbody>
        <c:forEach items="${attendance}" var="a">
            <tr>
                <td>${a.attendanceNo}</td>
                <td>${a.content}</td>
                <td>${a.numberIntegrals}</td>
                <td>
                    <button type="button" class="btn btn-info upd_Attendance" content="${a.content}"
                            numberIntegrals="${a.numberIntegrals}" AttendanceNo="${a.attendanceNo}">修改</button>
                    <button type="button" class="btn btn-warning delete_Attendance" AttendanceNo="${a.attendanceNo}">删除</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
        </table> 
    
   </div>
 </div>
</div>
<div id="Statistics" style="display:none">
 <div id="main" style="height:400px; overflow:hidden; width:1000px; overflow:auto" ></div>
</div>

<!--添加考勤模态框-->
<div class="add_attendance" id="add_attendance" style="display:none">
    <ul class=" page-content">
        <form action="bgAddEmp" method="post" name="empTable" >
            <br>
            <li style="display: inline-block;"><label class="label_name">考&nbsp;勤&nbsp;内&nbsp;容：</label><span class="add_name"><input value=""  id="Attendance_record" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <li style="display: inline-block;"><label class="label_name">奖惩积分数量：</label><span class="add_name"><input value="" id="Integral_quantity" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
            </span><div class="prompt r_f"></div></li>
            <button type="button" class="btn btn-success submitAdd_attendance" style="margin-left: 100px;">提交</button>
            <br/>
            <br/>
            <br/>
        </form>
    </ul>
</div>
<!--修改考勤模态框-->
<div id="upd_attendance" style="display:none">
    <ul class=" page-content">
        <form action="bgAddEmp" method="post" name="empTable" >
            <br>
            <li style="display: inline-block;"><label class="label_name">考&nbsp;勤&nbsp;内&nbsp;容：</label><span class="add_name">
                <input value=""  id="updAttendance_record" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <li style="display: inline-block;"><label class="label_name">奖惩积分数量：</label><span class="add_name">
                <input value="" id="updIntegral_quantity" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
            </span><div class="prompt r_f"></div></li>
            <input type="hidden"  id="AttendanceNo">
            <button type="button" class="btn btn-success" id="Update_attendance" style="margin-left: 100px;">提交</button>
            <br/>
            <br/>
            <br/>
        </form>
    </ul>
</div>
<script type="text/javascript">
    $(function () {
        var count = $("#sample-table tr").length-1;
        $("#count").html(count);

        //增加考勤模态框
        $(".add_work_attendance").click(function () {
            layer.open({
                type: 1,
                title: '添加考勤',
                maxmin: true,
                offset:'280px',
                shadeClose: true, //点击遮罩关闭层
                area : ['800px' , ''],
                content:$('#add_attendance'),
            });
        })
        //修改考勤模态框
        $(".upd_Attendance").click(function () {
            var Attendance_record = $(this).attr("content");
            var Integral_quantity = $(this).attr("numberIntegrals");
            var AttendanceNo = $(this).attr("AttendanceNo");
            $("#updAttendance_record").val(Attendance_record);
            $("#updIntegral_quantity").val(Integral_quantity);
            $("#AttendanceNo").val(AttendanceNo);
            layer.open({
                type: 1,
                title: '修改考勤',
                maxmin: true,
                offset:'280px',
                shadeClose: true, //点击遮罩关闭层
                area : ['800px' , ''],
                content:$('#upd_attendance'),
            });
        })

        $(".submitAdd_attendance").click(function () {
            var Attendance_record = $("#Attendance_record").val();
            var Integral_quantity = $("#Integral_quantity").val();
            if(Attendance_record==""||Attendance_record==null||Integral_quantity==""||Integral_quantity==null){
                layer.msg("请填写完整内容");
            }else{
                if(isNaN(Integral_quantity)){
                    layer.msg("请输入正确的奖惩积分数量");
                }else{
                    $.ajax({
                        url:"${path}/background/Add_attendance",
                        data:{Attendance_record:Attendance_record,Integral_quantity:Integral_quantity},
                        type:"post",
                        success:function (result) {
                            if(result=="yes"){
                                layer.msg("添加成功");
                                setTimeout(function () {
                                    location.href="${path}/background/Go_Attendance";
                                },1000);
                            }else
                                layer.msg("添加失败");
                                setTimeout(function () {
                                    location.href="${path}/background/Go_Attendance";
                                },1000);
                        }
                        
                    })
                }
            }
        })
        
        $("#Update_attendance").click(function () {
            var updAttendance_record = $("#updAttendance_record").val();
            var updIntegral_quantity = $("#updIntegral_quantity").val();
            var AttendanceNo = $("#AttendanceNo").val();
            if(updAttendance_record==""||updAttendance_record==null||updIntegral_quantity==""||updIntegral_quantity==null){
                layer.msg("请填写完整所有内容");
            }else{
                if(isNaN(updIntegral_quantity)){
                    layer.msg("请输入正确的奖惩积分数量");
                }else {
                    $.ajax({
                        url:"${path}/background/Upd_attendance",
                        data:{updAttendance_record:updAttendance_record,updIntegral_quantity:updIntegral_quantity,AttendanceNo:AttendanceNo},
                        type:"post",
                        success:function (result) {
                            if(result=="yes"){
                                layer.msg("修改成功");
                                setTimeout(function () {
                                    location.href="${path}/background/Go_Attendance";
                                },1000);
                            }else
                                layer.msg("修改失败");
                            setTimeout(function () {
                                location.href="${path}/background/Go_Attendance";
                            },1000);
                        }
                    })
                }
            }
        })

        $(".delete_Attendance").click(function () {
            var AttendanceNo = $(this).attr("AttendanceNo");
            $.ajax({
                url:"${path}/background/Delete_attendance",
                data:{AttendanceNo:AttendanceNo},
                type:"post",
                success:function (result) {
                    if(result=="yes"){
                        layer.msg("删除成功");
                        setTimeout(function () {
                            location.href="${path}/background/Go_Attendance";
                        },1000);
                    }else
                        layer.msg("删除失败");
                    setTimeout(function () {
                        location.href="${path}/background/Go_Attendance";
                    },1000);
                }
            })
        })

    })
</script>
</body>
</html>
<script>
$(function() {
		var oTable1 = $('#sample-table').dataTable( {
		"aaSorting": [],//默认第几个排序
		"bStateSave": false,//状态保存
		//"dom": 't',
		"bFilter":false,
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,1,2,3,4]}// 制定列不参与排序
		] } );
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
})
</script>
