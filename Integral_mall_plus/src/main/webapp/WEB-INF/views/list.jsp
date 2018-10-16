<%@page isELIgnored="false" contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
        <script src="<%=request.getContextPath()%>/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/static/js/jquery-1.4.2.min.js"></script>
</head>
<body>
<table class="table table-hover">
        <tr>
                <th>#</th>
                <th>empName</th>
                <th>gender</th>
                <th>age</th>
                <th>操作</th>
        </tr>
        <c:forEach items="${ulist}" var="user">
                <tr>
                        <th>${user.userId}</th>
                        <th>${user.userName}</th>
                        <th>${user.gender=="0"?"男":"女"}</th>
                        <th>${user.age}</th>
                        <th>
                                <button class="btn btn-primary btn-sm">
                                        <span class="glyphicon glyphicon-pencil btn-sm" aria-hidden="true"></span>
                                        编辑
                                </button>
                                <button class="btn btn-danger btn-sm">
                                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                        删除
                                </button>
                        </th>
                </tr>
        </c:forEach>
</table>
</body>
</html>
