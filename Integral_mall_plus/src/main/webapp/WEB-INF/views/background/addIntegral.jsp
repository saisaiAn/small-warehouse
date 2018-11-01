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
            <input type="text" class="form-control readonly"  name="commoditytitle" id="commoditytitle" value="${emp.empno}" style="width: 100px;" readonly="readonly">
        </div>
    </div>
    <div class="form-group" style="display: inline-block" >
        <label  class="col-sm-2 control-label">用户id:</label>
        <div class="col-sm-10" style="display: inline-block">
            <input type="text" class="form-control readonly"  name="commoditytitle" value="${emp.empname}" style="width: 100px;" readonly="readonly">
        </div>
    </div>

    <div class="form-group" style="display: inline-block" >
        <label  class="col-sm-2 control-label">用户id:</label>
        <div class="col-sm-10" style="display: inline-block">
            <select class="form-control" name="proType">
                <option value="0">---请选择---</option>
                <c:forEach items="${atn}" var="att">
                    <option value="${att.attendanceNo}">${att.content}</option>
                </c:forEach>
            </select>
        </div>
    </div>




<script type="text/javascript">
    $(function () {

    })
</script>
</body>
</html>
