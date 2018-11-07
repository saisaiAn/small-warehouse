<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/7
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="/static/before/js/jquery.min.js" type="text/javascript"></script>
</head>
<body>
    <script type="text/javascript">
         window.onload = function() {
             $.ajax({
                 url:"/Before/BeforeCeHui",
                 data:{},
                 type:"POST",
                 success:function (result) {}
                 })
             };
         window.onbeforeunload = function() {
             $.ajax({
                 url:"/Before/BeforeXiaoHui",
                 data:{},
                 type:"POST",
                 success:function (result) {}
             })
         };
    </script>
</body>
</html>
