<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%
    request.setAttribute("path", request.getContextPath());
%>
<html>
<head>
    <title>ystep流程、步骤插件 —— Powerd By YangYuan</title>
    <meta name="keywords" content="ystep,jQuery流程、步骤插件"/>
    <meta name="description" content="ystep,jQuery流程、步骤插件"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${path}/static/background/css/style.css"/>
<!-- 引入ystep样式 -->
    <link href="${path}/static/background/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${path}/static/background/css/ystep.css">
    <script src="${path}/static/background/assets/layer/layer.js" type="text/javascript" ></script>
</head>
<body>
<div class="search_style">

    <ul class="search_content clearfix">
        <div id="treeDemo" class="ztree" style="margin-left: 75px;">
            <form action="findAllIntegralAuditByDeptNo" method="post">
                <select class="form-control" name="proTypeNo" style="width: 250px;display: inline-block;">
                    <option value="0">---请选择---</option>
                    <c:forEach items="${proType}" var="ptype">
                        <option value="${ptype.depano}">${ptype.depaname}</option>
                    </c:forEach>
                </select>
                &nbsp;&nbsp;&nbsp;
                <button type="submit" class="btn btn-info btn-sm" style="display: inline-block;">查询</button>
            </form>
            <br/>
            <form action="findAllIntegralAuditByIntegralauditno" name="idSelectTable" method="post">
                <div class="form-group" style="display: inline-block;width: 250px;">
                    <input type="text" class="form-control" name="Integralauditno" id="yjId" placeholder="请输入意见编号">
                </div>
                <button type="button" class="btn btn-default yjbhselect" style="display: inline-block;margin-top: -26px;margin-left: 20px;">查询</button>
            </form>

        </div>
    </ul>
</div>
<!-- ystep容器 -->
<c:forEach items="${aud}" var="a">
    <c:if test="${a.integralTypeId.integraltypeno!=3}">
        <div style="margin-top: 45px;margin-left: 75px;display: inline-block">
            <span style="font-size: 18px;color: #8C8C00">
                意见编号:<span  style="font-size: 18px;color: #FFD306">${a.integralauditno}</span>
                员工姓名:<span  style="font-size: 18px;color: #FFD306">${a.empId.empname}</span>
                <span style="color:#C48888;">部门名称:</span><span  style="font-size: 18px;color: #9393FF">${a.empId.departmentId.depaname}</span>
            </span>
            <div class="ystep1" w="${a.audittype}"></div>
        </div>
    </c:if>
</c:forEach>

<!-- 引入jquery -->
<script src="${path}/static/background/js/jquery.min.js"></script>
<!-- 引入ystep插件 -->
<script src="${path}/static/background/js/ystep.js"></script>
<script type="text/javascript">
    $(function () {
        //根据jQuery选择器找到需要加载ystep的容器
        //loadStep 方法可以初始化ystep
        $(".ystep1").loadStep({
            //ystep的外观大小
            //可选值：small,large
            size: "large",
            //ystep配色方案
            //可选值：green,blue
            color: "blue",
            //ystep中包含的步骤
            steps: [{
                //步骤名称
                title: "申请",
                //步骤内容(鼠标移动到本步骤节点时，会提示该内容)
                content: "各部门经理发起申请"
            },{
                title: "审核",
                content: "综合部经理审核"
            },{
                title: "通过",
                content: "校长批准通过"
            },{
                title: "失败",
                content: "校长或者综合部批准失败",
            }]

        });

        //$(".ystep1").setStep($(this).attr("w"));
        $(".ystep1").each(function() {
            var li = $(this);
          li.setStep(li.attr("w"));
        })

    })
</script>
<script type="text/javascript">
    $(function () {
        $(".yjbhselect").click(function () {
            var yjI = $("#yjId").val();
            if(yjI==""||yjI==null){
                alert("请输入意见id查询");
            }else{
                if(!isNaN(yjI)){
                    idSelectTable.submit();
                }else{
                    alert("请输入正确的意见编号");
                }
            }
        })
    })
</script>
</body>
</html>
