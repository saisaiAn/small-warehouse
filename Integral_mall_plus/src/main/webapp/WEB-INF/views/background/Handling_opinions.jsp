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
        <link rel="stylesheet" href="/static/background/font/css/font-awesome.min.css" />
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
<title>审批意见</title>
</head>

<body>
<div class="margin clearfix">
 <div class="Configure_style">
    <div class="manner">
      <div class="title_name">积分商城意见处理</div>
      <div class="info clearfix">
      <table class="table table-bordered">
        <thead>
            <c:if test="${loginUser.position == 3}">
                <%-- 综合部经理所能看见的 --%>
                 <th  width="150px">意见编号</th>
                 <th width="100px">意见状态</th>
                 <th width="100px">意见等级</th>
                 <th width="150px">员工姓名</th>
                 <th width="150px">员工所在部门</th>
                 <th >积分变动原因</th>
                 <th width="100px">积分变动数量</th>
                 <th>操作</th>
            </c:if>
            <c:if test="${loginUser.position == 4}">
                <%-- 校长所能看见的 --%>
                <th  width="150px">意见编号</th>
                <th width="100px">意见状态</th>
                <th width="100px">意见等级</th>
                <th width="150px">员工姓名</th>
                <th width="150px">员工所在部门</th>
                <th >积分变动原因</th>
                <th >审核人意见</th>
                <th width="100px">积分变动数量</th>
                <th>操作</th>
            </c:if>
        </thead>
        <tbody>
               <c:forEach items="${Opinion}" var="o">
                   <c:if test="${loginUser.position == 3}">
                       <c:if test="${o.audittype == 1 && o.integralTypeId.integraltypeno!=3}">
                            <tr>
                               <td>${o.integralauditno}</td>
                               <td style="color: green">申请中</td>
                                <c:if test="${o.integralTypeId.integraltypeno == 1}">
                                    <td>普通</td>
                                </c:if>
                               <c:if test="${o.integralTypeId.integraltypeno == 2}">
                                   <td style="color:red;">重要</td>
                               </c:if>
                               <td>${o.empId.empname}</td>
                               <td>${o.empId.departmentId.depaname}</td>
                               <td>${o.intergralchange}</td>
                               <td>${o.changeint}</td>
                               <td><a href="javascript:ovid()" class="Handling_opinions" yjid="${o.integralauditno}"
                                      empname="${o.empId.empname}" changenum="${o.changeint}" title="处理意见请求">处理</a>
                               </td>
                            </tr>
                       </c:if>
                   </c:if>
               </c:forEach>

               <c:forEach items="${Opinion}" var="o">
                   <c:if test="${loginUser.position == 4}">
                       <c:if test="${o.audittype == 2}">
                           <tr>
                               <td>${o.integralauditno}</td>
                               <td style="color: #a069c3">审批中</td>
                               <c:if test="${o.integralTypeId.integraltypeno == 1}">
                                   <td>普通</td>
                               </c:if>
                               <c:if test="${o.integralTypeId.integraltypeno == 2}">
                                   <td style="color:red;">重要</td>
                               </c:if>
                               <td>${o.empId.empname}</td>
                               <td>${o.empId.departmentId.depaname}</td>
                               <td>${o.intergralchange}</td>
                               <td>${o.auditopinion}</td>
                               <td>${o.changeint}</td>
                               <td>
                                   <a href="javascript:ovid()" class="XZHandling_opinions" style="color: green" title="处理意见请求"
                                   empId = ${o.empId.empno} intergralchange=${o.intergralchange} changeint=${o.changeint}
                                        integralauditno = ${o.integralauditno}  integralType = ${o.integralTypeId.integraltypeno}
                                              IntegralNo = ${o.empId.integralId.intergralno}>同意</a>
                                   <a href="javascript:ovid()" class="XZrefuse_opinions Theheadmasterrefuses"  title="处理意见请求"
                                      integralauditno = ${o.integralauditno}>拒绝</a>
                               </td>
                           </tr>
                       </c:if>
                   </c:if>
               </c:forEach>
       </tbody>
      </table>
      </div>
    </div><!--其他配置-->


<div class="DivHandling_opinions" id="update_menber_style" style="display:none">
    <ul class=" page-content">
        <form action="bgUpdEmp" method="post" name="updTable" >
            <br/>
            <li style="display: inline-block"><label class="label_name">意&nbsp;&nbsp;见&nbsp;&nbsp;编&nbsp;&nbsp;号：</label><span class="add_name">
                <input  name="integralauditno" id="integralauditno" disabled="disabled" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
            <li style="display: inline-block"><label class="label_name">员&nbsp;&nbsp;工&nbsp;&nbsp;姓&nbsp;&nbsp;名：</label><span class="add_name">
                <input  name="empname" id="empname" type="text" disabled="disabled" class="text_add"/></span><div class="prompt r_f"></div></li>
            <br/><br/><br/>
            <li><label class="label_name">积分变动数量：</label><span class="add_name">
                <input  name="changeint" id="changeint" type="text" disabled="disabled" class="text_add"/></span><div class="prompt r_f"></div></li>
            <br/>
            <br/>
            <div class="form-group"  >
                <label  class="col-sm-2 control-label">您的意见:</label>
                <div class="col-sm-10" >
                    <textarea class="form-control" id="sprYj" rows="3" style="width: 200px;"></textarea>
                </div>
            </div>
            </span><div class="prompt r_f"></div></li>
            <br/>
            <br/>
            <button type="button" class="btn btn-success Approval" style="margin-left: 150px;">批准</button>
            <button type="button" class="btn btn-danger refuse" style="margin-left: 100px;">拒绝</button>
            <br/>
            <br/>
        </form>
    </ul>
</div>
</body>

<script type="text/javascript">
    $(function () {
        $(".Handling_opinions").click(function () {
            var integralauditno = $(this).attr("yjid");
            var empname = $(this).attr("empname");
            var changeint = $(this).attr("changenum");
            $("#integralauditno").val(integralauditno);
            $("#empname").val(empname);
            $("#changeint").val(changeint);
            layer.open({
                type: 1,
                title: '处理',
                offset: '180px',
                maxmin: true,
                shadeClose: true, //点击遮罩关闭层
                area : ['600px' , ''],
                content:$('.DivHandling_opinions'),
            });
        })

        $(".Approval").click(function () {
            var integralAuditId = $("#integralauditno").val();
            var sprYj = $("#sprYj").val();
            $.ajax({
                url:"Approval_opinion",
                type:"post",
                data:{integralAuditId:integralAuditId,sprYj:sprYj},
                success:function (result) {
                    if(result=="y"){
                        layer.msg("提交成功");
                        setTimeout(function () {
                            location.href="handling_opinions";
                        },1000)
                    }else{
                        layer.msg("提交失败");
                        setTimeout(function () {
                            location.href="handling_opinions";
                        },1000)
                    }
                }

            })

        })

        $(".XZHandling_opinions").click(function () {
            var empId = $(this).attr("empId"); //员工编号
            var intergralchange = $(this).attr("intergralchange"); //积分变动原因
            var changeint = $(this).attr("changeint"); //积分变动数量
            var integralType = $(this).attr("integralType"); //积分表变动所属类型
            var IntegralNo = $(this).attr("IntegralNo"); //积分表编号
            var integralauditno = $(this).attr("integralauditno");
            $.ajax({
                url:"xzApproval_opinion",
                type:"post",
                data:{empId:empId,intergralchange:intergralchange,changeint:changeint,integralType:integralType,IntegralNo:IntegralNo,integralauditno:integralauditno},
                success:function (result) {
                    if(result=="y"){
                        layer.msg("批准成功");
                        setTimeout(function () {
                            location.href="handling_opinions";
                        },1000)
                    }else{
                        layer.msg("批准失败");
                        setTimeout(function () {
                            location.href="handling_opinions";
                        },1000)
                    }
                }
            })

        })

        $(".refuse").click(function () {
            var integralAuditId = $("#integralauditno").val();
            var sprYj = $("#sprYj").val();
            $.ajax({
                url:"General_manager_refuse",
                type:"post",
                data:{integralAuditId:integralAuditId,sprYj:sprYj},
                success:function (result) {
                    if(result=="y"){
                        layer.msg("拒绝成功");
                        setTimeout(function () {
                            location.href="handling_opinions";
                        },1000)
                    }else{
                        layer.msg("拒绝失败");
                        setTimeout(function () {
                            location.href="handling_opinions";
                        },1000)
                    }
                }

            })
        })

        $(".Theheadmasterrefuses").click(function () {
            var integralauditno = $(this).attr("integralauditno");
            $.ajax({
                url:"The_headmaster_refuses",
                type:"post",
                data:{integralAuditId:integralauditno},
                success:function (result) {
                    if(result=="y"){
                        layer.msg("拒绝成功");
                        setTimeout(function () {
                            location.href="handling_opinions";
                        },1000)
                    }else{
                        layer.msg("拒绝失败");
                        setTimeout(function () {
                            location.href="handling_opinions";
                        },1000)
                    }
                }

            })

        })

    })

</script>

</html>
<script>
 /*radio激发事件*/
function Enable(){ $('.Reply_style').css('display','block');}
function closes(){$('.Reply_style').css('display','none')}
/* function Enable(ojb,id){
	 layer.confirm('确认要开启吗？',function(index){
		layer.msg('开启成功!',{icon:1,time:1000});
	});
 }
 function closes(ojb,id){
	  layer.confirm('确认要关闭该支付功能吗？',function(index){
		layer.msg('以关闭!',{icon:1,time:1000});
		})
}*/
	

</script>
