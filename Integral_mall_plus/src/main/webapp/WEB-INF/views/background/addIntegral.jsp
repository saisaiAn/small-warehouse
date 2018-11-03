<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
<html>
<head>
    <base href="<%=basePath%>">
    <title>商品详情</title>
    <link href="/static/background/assets/css/bootstrap.min.css" rel="stylesheet"/>

    <script src="/static/background/js/jquery-1.9.1.min.js"></script>
    <script src="/static/background/assets/layer/layer.js" type="text/javascript"></script>
</head>
<body>
<br/>

    <div class="form-group" style="display: inline-block">
        <label  class="col-sm-2 control-label">用户名称:</label>
        <div class="col-sm-10" style="display: inline-block">
            <input type="text" class="form-control readonly"   id="userName" value="${emp.empname}" style="width: 100px;" readonly="readonly">
        </div>
    </div>
    <div class="form-group" style="display: inline-block;margin-left: 100px;" >
        <label  class="col-sm-2 control-label">用户id:</label>
        <div class="col-sm-10" style="display: inline-block">
            <input type="text" class="form-control readonly" id="userId"  value="${emp.empno}" style="width: 100px;" readonly="readonly">
        </div>
    </div>
    <br/>
    <div class="form-group" style="display: inline-block" >
        <label  class="col-sm-2 control-label">考勤内容:</label>
        <div class="col-sm-10" style="display: inline-block">
            <select class="form-control"  id="jfSelect">
                <option value="0">---请选择---</option>
                <c:forEach items="${atn}" var="att">
                    <option value="${att.attendanceNo}" jf="${att.numberIntegrals}">${att.content}</option>
                </c:forEach>
            </select>
        </div>
    </div>

    <div class="form-group" style="display: inline-block;margin-left: 100px;" >
        <label  class="col-sm-2 control-label">加减积分:</label>
        <div class="col-sm-10" style="display: inline-block">
            <input type="text" class="form-control readonly" value="0" id="jfNum"  style="width: 100px;" readonly="readonly">
        </div>
    </div>
    <br/><br/>
    <div class="form-group" style="display: inline-block" >
        <label  class="col-sm-2 control-label">自定义补充:</label>
        <div class="col-sm-10" >
            <textarea class="form-control" id="zdyNR" rows="3" style="width: 500px;"></textarea>
        </div>
    </div>

    <div class="form-group" style="display: inline-block;" >
        <label  class="col-sm-2 control-label">自定义加减积分:</label>
        <div class="col-sm-10" style="display: inline-block">
            <input type="text" class="form-control readonly" value="0" id="zdyJfNum"  style="width: 100px;" >
        </div>
    </div>
    <br/>

    <button type="button" class="btn btn-warning" id="sub" style="width: 100px;margin-left: 300px;">提交</button>

<script type="text/javascript">
    $(function () {
        $("#jfSelect").change(function () {
            var jfNum =  $("#jfSelect").find("option:selected").attr("jf");
            $("#jfNum").val(jfNum);
        })

        $("#sub").click(function () {
            var userId = $("#userId").val();
            var jfSelect = $("#jfSelect option:selected").text();
            var jfNum = $("#jfNum").val();
            var zdyNR = $("#zdyNR").val();
            var zdyJfNum = $("#zdyJfNum").val();
            if(jfSelect=="---请选择---"&&zdyNR==""){
                layer.msg("请选择内容");
            }else if(jfSelect!="---请选择---"&&zdyNR==""){
                /*
                * 根据考勤表申请积分
                * 自定义没有填写
                * */
                $.ajax({
                    url:"checkJfApply",
                    type:"post",
                    data:{userId:userId,checkJfNr:jfSelect,checkJfNum:jfNum},
                    success:function (result) {
                        if(result=="y"){
                            layer.msg("申请成功");
                            setTimeout(function () {
                                parent.location.href="Integral_management_html";
                            },1000);
                        }else{
                            layer.msg("申请失败");
                            setTimeout(function () {
                                parent.location.href="Integral_management_html";
                            },1000);
                        }
                    }
                })
            }else if(zdyNR!=""&&jfSelect=="---请选择---"){
                if(zdyJfNum==0){
                    layer.msg("自定义加减积分不能为0,请不要胡乱尝试！务必认真对待");
                }else{
                    /*
                    * 考勤表没有选择
                    * 提交自定义意见积分申请
                    * */
                    $.ajax({
                        url:"zdyJfApply",
                        type:"post",
                        data:{userId:userId,zdyNR:zdyNR,zdyJfNum:zdyJfNum},
                        success:function (result) {
                            if(result=="y"){
                                layer.msg("申请成功");
                                setTimeout(function () {
                                    parent.location.href="Integral_management_html";
                                },1000);
                            }else{
                                layer.msg("申请失败");
                                setTimeout(function () {
                                    parent.location.href="Integral_management_html";
                                },1000);
                            }
                        }
                    })
                }
            }else{
                if(zdyJfNum!=0){
                    /*
                 * 考勤表自定义都选了 全部提交
                 * */
                    $.ajax({
                        url:"allJfApply",
                        type:"post",
                        data:{userId:userId,checkJfNr:jfSelect,checkJfNum:jfNum,zdyNR:zdyNR,zdyJfNum:zdyJfNum},
                        success:function (result) {
                            if(result=="y"){
                                layer.msg("申请成功");
                                setTimeout(function () {
                                    parent.location.href="Integral_management_html";
                                },1000);
                            }else{
                                layer.msg("申请失败");
                                setTimeout(function () {
                                    parent.location.href="Integral_management_html";
                                },1000);
                            }
                        }
                    })
                }else{
                    layer.msg("自定义加减积分不能为0,请不要胡乱尝试！务必认真对待")
                }
            }
        })

    })
</script>
</body>
</html>
