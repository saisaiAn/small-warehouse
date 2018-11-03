<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="/static/background/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="/static/background/css/style.css"/>
        <link href="/static/background/assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="/static/background/assets/css/ace.min.css" />
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="/static/background/assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="/static/background/js/jquery-1.9.1.min.js"></script>
        <script src="/static/background/assets/js/bootstrap.min.js"></script>
		<script src="/static/background/assets/js/typeahead-bs2.min.js"></script>
		<script src="/static/background/assets/js/jquery.dataTables.min.js"></script>
		<script src="/static/background/assets/js/jquery.dataTables.bootstrap.js"></script>
        <script src="/static/background/assets/layer/layer.js" type="text/javascript" ></script>
        <script src="/static/background/assets/laydate/laydate.js" type="text/javascript"></script>
        <script src="/static/background/js/lrtk.js" type="text/javascript" ></script>
<title>个人账户</title>
</head>

<body>
<div class="margin clearfix">
 <div class="cover_style" id="cover_style">
     <div class="search_style">
     
      <ul class="search_content clearfix">
       <li><label class="l_f">用户</label><input name="" type="text" class="text_add" placeholder="用户名称" style=" width:250px"></li>
       <li style="width:90px;"><button type="button" class="btn_search"><i class="fa fa-search"></i>查询</button></li>
      </ul>
    </div>
    <!--操作--> 
     <div class="border clearfix">
       <span class="l_f">
       <a href="javascript:ovid()" class="btn btn-danger"><i class="fa fa-bar-chart"></i>&nbsp;图表展示</a>
       </span>
       <span class="r_f">共：<b>${fn:length(emp)}</b>个账户</span>
     </div>
     <!--账户管理-->
      <div class="">
       <table class="table table-striped table-bordered table-hover" id="sample-table">
      <thead>
          <tr>
              <th width="25"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
              <th width="80">编号</th>
              <th width="100">姓名</th>
              <th width="80">性别</th>
              <th width="120">身份证</th>
              <th width="150">部门</th>
              <th width="">转正日期</th>
              <th width="180">电话</th>
              <th width="100">积分</th>
              <th width="70">职位</th>
              <th width="250">操作</th>
          </tr>
          </thead>
               <tbody>
               <c:forEach items="${emp}" var="emp">
                   <tr>
                       <td><label class="fruit"><input type="checkbox" value="${emp.empno}" class="ace"><span class="lbl"></span></label></td>
                       <td>${emp.empno}</td>
                       <td>${emp.empname}</td>
                       <td>${emp.empsex}</td>
                       <td>${emp.idcard}</td>
                       <td>${emp.departmentId.depaname}</td>
                       <td><fmt:formatDate value="${emp.positivedates}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                       <td>${emp.empphone}</td>
                       <td>${emp.integralId.remainingpoints}</td>
                       <td>
                           <c:if test="${emp.position==1}">普通员工</c:if>
                           <c:if test="${emp.position==2}">经理</c:if>
                           <c:if test="${emp.position==3}">综合部经理</c:if>
                           <c:if test="${emp.position==4}">校长</c:if>
                       </td>
                       <td class="td-manage">
                               <%--<a onClick="member_stop(this,'10001')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>--%>
                           <a title="申请积分" href="javascript:;" class="btn btn-xs btn-info ApplicationIntegra" empId="${emp.empno}"><i class="icon-edit bigger-120"></i>申请积分</a>
                       </td>
                   </tr>
           </c:forEach>
        </tbody>
      </table>
      </div>
     
</div>
</div>
</body>
<script type="text/javascript">
    $(function () {

        $(".ApplicationIntegra").click(function () {
            var empId = $(this).attr("empId");
            layer.open({
                type: 2,
                area: ['700px', '450px'],
                fixed: false, //不固定
                maxmin: true,
                content: 'ApplicationIntegra/'+empId
            });
        })
    })
    
</script>
</html>
<script type="text/javascript">
/*用户-停用*/
function member_stop(obj,id){
	layer.confirm('确认要停用该账户吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="fa fa-close bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">停用</span>');
		$(obj).remove();
		layer.msg('停用!',{icon: 5,time:1000});
	});
}

/*用户-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用该账户吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="fa fa-check bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">启用</span>');
		$(obj).remove();
		layer.msg('启用!',{icon: 6,time:1000});
	});
}
jQuery(function($) {
		var oTable1 = $('#sample-table').dataTable( {
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"bAutoWidth":true,
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,2,3,4,6,7,8,9]}// 制定列不参与排序
		] } );
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});	
});
			//面包屑返回值
//var index = parent.layer.getFrameIndex(window.name);
//parent.layer.iframeAuto(index);
//$('.Order_form ,.Account_Details').on('click', function(){
//	var cname = $(this).attr("title");
//	var chref = $(this).attr("href");
//	var cnames = parent.$('.Current_page').html();
//	var herf = parent.$("#iframe").attr("src");
//    parent.$('#parentIfour').html(cname);
//    parent.$('#iframe').attr("src",chref).ready();;
//	parent.$('#parentIfour').css("display","inline-block");
//    parent.$('.Current_page').attr({"name":herf,"href":"javascript:void(0)"}).css({"color":"#4c8fbd","cursor":"pointer"});
//	parent.$('.parentIframe').attr("name",herf).css({"color":"#4c8fbd","cursor":"pointer"});
//	parent.$('.Current_page').html("<a href='javascript:void(0)' name="+herf+" class='iframeurl'>" + cnames + "</a>");
//    parent.layer.close(index);
//	
//});
var index = parent.layer.getFrameIndex(window.name);
parent.layer.iframeAuto(index);
$('.Order_form ,.Account_Details').on('click', function(){
	var cname = $(this).attr("title");
	var cnames = parent.$('.Current_page').html();
	var herf = parent.$("#iframe").attr("src");
    parent.$('#parentIframe span').html(cname);
	parent.$('#parentIframe').css("display","inline-block");
    parent.$('.Current_page').attr("name",herf).css({"color":"#4c8fbd","cursor":"pointer"});
	//parent.$('.Current_page').html("<a href='javascript:void(0)' name="+herf+">" + cnames + "</a>");
    parent.layer.close(index);
	
});
function generateOrders(id){
	window.location.href = "Account_Details.html?="+id;
};
</script>