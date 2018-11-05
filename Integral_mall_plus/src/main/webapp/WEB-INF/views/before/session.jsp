<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/5
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    window.onload=function () {
        $.ajax({
            url:"/Before/BeforeCeHui",
            type:"POST",
            success:function (result) {
            }
        })
    }
    $(window).bind('beforeunload', function () {
        $.ajax({
            url:"/Before/BeforeXiaoHui",
            type:"POST",
            success:function (result) {
            }
        })
    });
</script>
</body>
</html>
