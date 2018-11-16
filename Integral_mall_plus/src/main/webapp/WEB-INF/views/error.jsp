<!DOCTYPE html>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <%
        request.setAttribute("path", request.getContextPath());
    %>
    <title>Error</title>
    <!-- Bootstrap core CSS -->
    <link href="${path}/static/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
    <!-- FONT AWESOME CSS -->
    <link href="${path}/static/css/font-awesome.min.css" rel="stylesheet" />
   <!--GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Nova+Flat' rel='stylesheet' type='text/css'>
    <!-- custom CSS here -->
    <link href="${path}/static/css/style.css" rel="stylesheet" />
</head>
<body>
<div class="container">

    <div class="row pad-top text-center">
        <div class="col-md-6 col-md-offset-3 text-center">
            <h1>  你做了什么? </h1>
            <span id="error-link"></span>
            <h2>! 错误已经发生了 !</h2>
        </div>
    </div>

    <div class="row text-center">
        <div class="col-md-8 col-md-offset-2">
            <h3> <i  class="fa fa-lightbulb-o fa-5x"></i> </h3>
            <a class="btn btn-primary fh" onclick="javascript:history.go(-1);">回到主页</a>
        </div>
    </div>
</div>
<!-- /.container -->


<!--Core JavaScript file  -->
<script src="${path}/static/js/jquery-1.10.2.js"></script>
<!--bootstrap JavaScript file  -->
<script src="${path}/static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<!--Count Number JavaScript file  -->
<script src="${path}/static/js/countUp.js"></script>
<!--Custom JavaScript file  -->
<%--<script src="${path}/static/js/custom.js">

</script>--%>
<script>
    var mainApp = {
        main_fun: function () {
            var count = new countUp("error-link", 0, 404, 0, 2); //CHANGE 404 TO THE ERROR VALUE AS YOU WANT
            window.onload = function () {
                count.start();
            }
        },
        initialization: function () {
            mainApp.main_fun();
        }
    }
    // Initializing ///
    $(document).ready(function () {
        mainApp.main_fun();
    });
</script>
</body>
</html>
