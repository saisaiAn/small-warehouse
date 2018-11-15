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
    <%
        request.setAttribute("path", request.getContextPath());
    %>
    <script src="${path}/static/before/js/jquery.min.js" type="text/javascript"></script>
    <link rel="shortcut icon" href="${path}/static/before/images/mall.png" type="image/x-icon"/>
</head>
<body>

    <script type="text/javascript">
         window.onload = function() {
             $.ajax({
                 url:"${path}/Before/BeforeCeHui",
                 data:{},
                 type:"POST",
                 success:function (result) {}
                 })
             };
         window.onbeforeunload = function() {
             $.ajax({
                 url:"${path}/Before/BeforeXiaoHui",
                 data:{},
                 type:"POST",
                 success:function (result) {}
             })
         };
    </script>
</body>
</html>
