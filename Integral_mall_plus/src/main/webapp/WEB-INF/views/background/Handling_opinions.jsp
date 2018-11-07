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
         <th  width="150px">意见编号</th>
         <th width="100px">意见状态</th>
         <th width="100px">意见等级</th>
         <th width="150px">员工姓名</th>
         <th width="150px">员工所在部门</th>
         <th >积分变动原因</th>
         <th width="100px">积分变动数量</th>
         <th>操作</th>
        </thead>
        <tbody>
               <c:forEach items="${Opinion}" var="o">
                   <c:if test="${loginUser.position == 3}">
                       <c:if test="${o.audittype == 1}">
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
                               <td>审批中</td>
                               <td>${o.empId.empname}</td>
                               <td>${o.empId.departmentId.depaname}</td>
                               <td>${o.intergralchange}</td>
                               <td>${o.changeint}</td>
                               <td><a href="javascript:ovid()"  name="" title="在线支付配置">配置</a></td>
                           </tr>
                       </c:if>
                   </c:if>
               </c:forEach>
       </tbody>
      </table>
      </div>
    </div><!--其他配置-->
  <div class="Other_style">
    <div class="title_name">其他配置信息</div>
    <div style="margin:5px;">
     <ul class="invoice deploy">
      <li class="name">发票</li>
      <li class="operating">  
       <span class=""><label><input name="radio" type="radio" class="ace" onclick="Enable()"><span class="lbl">启用</span></label>&nbsp;&nbsp;&nbsp;&nbsp;
       <label><input name="radio" type="radio" class="ace" onclick="closes()"><span class="lbl">关闭</span></label></span>   
        <div class="Reply_style">
          <span class="title">选择发票类型</span>
         <p><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl">普通纸质发票</span></label></p>
          <p><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl">增值税发票</span></label></p>
          <p><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl">电子发票</span></label></p>
        </div>
         </li>
      <li class="info">发票是指一切单位和个人在购销商品、提供或接受服务以及从事其他经营活动中，所开具和收取的业务凭证，是会计核算的原始依据，也是审计机关、税务机关执法     </li>
     </ul>
      <ul class="invoice deploy">
      <li class="name">优惠劵</li>
      <li class="operating">  
       <span class="">
       <label><input name="radio1" type="radio" class="ace" ><span class="lbl">启用</span></label>&nbsp;&nbsp;&nbsp;&nbsp;
       <label><input name="radio1" type="radio" class="ace" ><span class="lbl">关闭</span></label></span>          
         </li>
      <li class="info">发票是指一切单位和个人在购销商品、提供或接受服务以及从事其他经营活动中，所开具和收取的业务凭证，是会计核算的原始依据，也是审计机关、税务机关执法     </li>
     </ul>
     <ul class="invoice deploy">
      <li class="name">代收人</li>
      <li class="operating">  
       <span class="">
       <label><input name="radio2" type="radio" class="ace" title="启用"><span class="lbl">启用</span></label>&nbsp;&nbsp;&nbsp;&nbsp;
       <label><input name="radio2" type="radio" class="ace" title="关闭"><span class="lbl">关闭</span></label></span>          
         </li>
      <li class="info">是否启用代收人操作，一次只能填写一次。如不在家可填写代收人的地址作为收货地址</li>
     </ul>
  </div>
  </div>
 </div>
 
</div>

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

            </span><div class="prompt r_f"></div></li>
            <br/>
            <br/>
            <button type="button" class="btn btn-success updemp" style="margin-left: 150px;">批准</button>
            <button type="button" class="btn btn-danger updemp" style="margin-left: 100px;">拒绝</button>
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
                title: '添加用户',
                maxmin: true,
                shadeClose: true, //点击遮罩关闭层
                area : ['600px' , ''],
                content:$('.DivHandling_opinions'),
            });
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
