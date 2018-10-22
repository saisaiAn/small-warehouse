<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="/static/background/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="/static/background/css/style.css"/>
        <link href="/static/background/assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="/static/background/assets/css/ace.min.css" />
        <link rel="stylesheet" href="/static/background/assets/css/font-awesome.min.css" />
		<!--[if IE 7]>
        <link rel="stylesheet" href="/static/background/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="/static/background/assets/css/ace-ie.min.css" />
        <link rel="stylesheet" href="/static/bootstrap-3.3.7-dist/css/bootstrap.css"/>
		<![endif]-->
			<script src="/static/background/assets/js/jquery.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='/static/background/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="/static/background/assets/js/bootstrap.min.js"></script>
		<script src="/static/background/assets/js/typeahead-bs2.min.js"></script>
		<!-- page specific plugin scripts -->
		<script src="/static/background/assets/js/jquery.dataTables.min.js"></script>
		<script src="/static/background/assets/js/jquery.dataTables.bootstrap.js"></script>
        <script type="text/javascript" src="/static/background/js/H-ui.js"></script>
        <script type="text/javascript" src="/static/background/js/H-ui.admin.js"></script>
        <script src="/static/background/assets/layer/layer.js" type="text/javascript" ></script>
        <script src="/static/background/assets/laydate/laydate.js" type="text/javascript"></script>
<title>用户列表</title>
</head>

<body>
<div class="page-content clearfix">
    <div id="Member_Ratings">
      <div class="d_Confirm_Order_style">
    <div class="search_style">
     
      <ul class="search_content clearfix">
       <li><label class="l_f">会员名称</label><input name="" type="text"  class="text_add" placeholder="输入会员名称、电话、邮箱"  style=" width:400px"/></li>
       <li><label class="l_f">添加时间</label><input class="inline laydate-icon" id="start" style=" margin-left:10px;"></li>
       <li style="width:90px;"><button type="button" class="btn_search"><i class="icon-search"></i>查询</button></li>
      </ul>
    </div>
     <!---->
     <div class="border clearfix">
       <span class="l_f">
        <a href="javascript:ovid()" id="member_add" class="btn btn-warning"><i class="icon-plus"></i>添加用户</a>
        <a href="javascript:ovid()" class="btn btn-danger"><i class="icon-trash"></i>批量删除</a>
       </span>
       <span class="r_f">共：<b>x</b>条</span>
     </div>
     <!---->
     <div class="table_menu_list">
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
          <c:forEach items="${empList}" var="emp">
              <tr>
                  <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
                  <td>${emp.empno}</td>
                  <td>${emp.empname}</td>
                  <td>${emp.empsex}</td>
                  <td>${emp.idcard}</td>
                  <td>${emp.departmentId.depaname}</td>
                  <td>${emp.positivedates}</td>
                  <td>${emp.empphone}</td>
                  <td>${emp.integralId.remainingpoints}</td>
                  <td>
                      <c:if test="${emp.position==1}">普通员工</c:if>
                      <c:if test="${emp.position==2}">经理</c:if>
                      <c:if test="${emp.position==3}">综合部经理</c:if>
                      <c:if test="${emp.position==4}">普通员工</c:if>
                  </td>
                  <td class="td-manage">
                      <a onClick="member_stop(this,'10001')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>
                      <a title="编辑" onclick="member_edit('510')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a>

                      <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a>
                  </td>
              </tr>
          </c:forEach>

      </tbody>
	</table>
   </div>
  </div>
 </div>
</div>
<!--添加用户图层-->
<div class="add_menber" id="add_menber_style" style="display:none">
  
    <ul class=" page-content">
        <form action="bgAddEmp" method="post" name="empTable" >
             <li><label class="label_name">用&nbsp;&nbsp;户 &nbsp;名：</label><span class="add_name"><input value="" id="name" name="empname" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
            <li><label class="label_name">部&nbsp;&nbsp;&nbsp;&nbsp;门：</label><span class="add_name">
            <select class="form-control" style="width: 200px;" name="departmentId.depano">
                <c:forEach items="${deptList}" var="dept">
                    <option value="${dept.depano}">${dept.depaname}</option>
                </c:forEach>
            </select>
            </span><div class="prompt r_f"></div></li>
             <li><label class="label_name">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</label><span class="add_name">
             <label><input name="empsex" type="radio" checked="checked" class="ace" value="男"><span class="lbl">男</span></label>&nbsp;&nbsp;&nbsp;
             <label><input name="empsex" type="radio" class="ace" value="女"><span class="lbl">女</span></label>&nbsp;&nbsp;&nbsp;
             </span>
             <div class="prompt r_f"></div>
             </li>
             <li><label class="label_name">&nbsp;身&nbsp;份&nbsp;证：</label><span class="add_name"><input name="idcard" id="card" type="text" style="width: 200px;" class="text_add"/></span><div class="prompt r_f"></div></li>
             <li><label class="label_name">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</label><span class="add_name"><input name="empphone" id="phone" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
                <li><label class="label_name">职&nbsp;&nbsp;&nbsp;&nbsp;位：</label><span class="add_name">
            <select class="form-control" style="width: 200px;" name="position">
                <option value="1">普通员工</option>
                <option value="2">经理</option>
                <option value="3">综合部经理</option>
                <option value="4">校长</option>
            </select>
            </span><div class="prompt r_f"></div></li>
                <button type="button" class="btn btn-success addemp" style="margin-left: 100px;">提交</button>
                <br/>
                <br/>
                <br/>
        </form>
    </ul>

 </div>
</body>
</html>
<script>
jQuery(function($) {
				var oTable1 = $('#sample-table').dataTable( {
				"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,8,9]}// 制定列不参与排序
		] } );
				
				
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
			
			
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			})
/*用户-添加-显示*/
 $('#member_add').on('click', function(){
    layer.open({
        type: 1,
        title: '添加用户',
		maxmin: true,
		shadeClose: true, //点击遮罩关闭层
        area : ['800px' , ''],
        content:$('#add_menber_style'),
    });
});
 /*添加员工验证*/
 $(".addemp").on('click',function () {
     var idcard = $("#card").val();
     var phone = $("#phone").val();
     var name = $("#name").val();
     if(name!=""){
         if(idcard==""&&phone==""){
             layer.msg("请输入完整所有内容");
         }else
             if(!isNaN(idcard)&&!isNaN(phone)){
                 empTable.submit();
             }else{
                 layer.msg("身份证或者电话输入格式有误！");
             }
     }else
         layer.msg("用户名不能为空");


 })
/*用户-查看*/
function member_show(title,url,id,w,h){
	layer_show(title,url+'#?='+id,w,h);
}
/*用户-停用*/
function member_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="icon-ok bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
		$(obj).remove();
		layer.msg('已停用!',{icon: 5,time:1000});
	});
}

/*用户-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="icon-ok bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
		$(obj).remove();
		layer.msg('已启用!',{icon: 6,time:1000});
	});
}
/*用户-编辑*/
function member_edit(id){
	  layer.open({
        type: 1,
        title: '修改用户信息',
		maxmin: true, 
		shadeClose:false, //点击遮罩关闭层
        area : ['800px' , ''],
        content:$('#add_menber_style'),
		btn:['提交','取消'],
		yes:function(index,layero){	
		 var num=0;
		 var str="";
     $(".add_menber input[type$='text']").each(function(n){
          if($(this).val()=="")
          {
               
			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                title: '提示框',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
		  if(num>0){  return false;}	 	
          else{
			  layer.alert('添加成功！',{
               title: '提示框',				
			icon:1,		
			  });
			   layer.close(index);	
		  }		  		     				
		}
    });
}
/*用户-删除*/
function member_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});
}
laydate({
    elem: '#start',
    event: 'focus' 
});

</script>