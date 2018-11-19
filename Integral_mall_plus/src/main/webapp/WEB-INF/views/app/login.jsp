<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<% request.setAttribute("path",request.getContextPath());%>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>超级管理登录</title>
    <meta content="Admin Dashboard" name="description" />
    <meta content="Mannatthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <link rel="shortcut icon" href="${path}/static/app/assets/images/favicon.ico">
        <link rel="shortcut icon" href="${path}/static/app/assets/images/favicon.ico">

    <link href="${path}/static/app/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${path}/static/app/assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="${path}/static/app/assets/css/style.css" rel="stylesheet" type="text/css">
        <link href="${path}/static/app/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="${path}/static/app/assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="${path}/static/app/assets/css/style.css" rel="stylesheet" type="text/css">

</head>


<body>


<!-- Begin page -->
<div class="accountbg"></div>
<div class="wrapper-page">

    <div class="card">
        <div class="card-body">

            <h3 class="text-center mt-0 m-b-15">
                <a href="#" class="logo logo-admin"><img src="/static/app/assets/images/logo.png" height="24" alt="logo"></a>
            </h3>
                    <h3 class="text-center mt-0 m-b-15">
                        <a href="#" class="logo logo-admin"><img src="/static/app/assets/images/logo.png" height="24" alt="logo"></a>
                    </h3>

            <div class="p-3">
                <form class="form-horizontal m-t-20" action="index.html">

                    <div class="form-group row">
                        <div class="col-12">
                            <input class="form-control" type="text" required="" placeholder="Username" id="username" name="username">
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-12">
                            <input class="form-control" type="password" required="" placeholder="Password" id="pwd" name="pwd">
                        </div>
                    </div>


                    <div class="form-group text-center row m-t-20">
                        <div class="col-12">
                            <button class="btn btn-danger btn-block waves-effect waves-light" type="button" id="login">Log In</button>
                        </div>
                    </div>

                    <%--  <div class="form-group m-t-10 mb-0 row">
                          <div class="col-sm-7 m-t-20">
                              <a href="pages-recoverpw.html" class="text-muted"><i class="mdi mdi-lock"></i> <small>Forgot your password ?</small></a>
                          </div>

                      </div>--%>
                </form>
            </div>

        </div>
    </div>
</div>



<!-- jQuery  -->
<script src="${path}/static/app/assets/js/jquery.min.js"></script>
<script src="${path}/static/app/assets/js/popper.min.js"></script>
<script src="${path}/static/app/assets/js/bootstrap.min.js"></script>
<script src="${path}/static/app/assets/js/modernizr.min.js"></script>
<script src="${path}/static/app/assets/js/waves.js"></script>
<script src="${path}/static/app/assets/js/jquery.slimscroll.js"></script>
<script src="${path}/static/app/assets/js/jquery.nicescroll.js"></script>
<script src="${path}/static/app/assets/js/jquery.scrollTo.min.js"></script>
<script src="${path}/static/background/assets/layer/layer.js" type="text/javascript"></script>
        <!-- jQuery  -->
        <script src="${path}/static/app/assets/js/jquery.min.js"></script>
        <script src="${path}/static/app/assets/js/popper.min.js"></script>
        <script src="${path}/static/app/assets/js/bootstrap.min.js"></script>
        <script src="${path}/static/app/assets/js/modernizr.min.js"></script>
        <script src="${path}/static/app/assets/js/waves.js"></script>
        <script src="${path}/static/app/assets/js/jquery.slimscroll.js"></script>
        <script src="${path}/static/app/assets/js/jquery.nicescroll.js"></script>
        <script src="${path}/static/app/assets/js/jquery.scrollTo.min.js"></script>
        <script src="${path}/static/background/assets/layer/layer.js" type="text/javascript"></script>

<!-- App js -->
<script src="${path}/static/app/assets/js/app.js"></script>
        <!-- App js -->
        <script src="${path}/static/app/assets/js/app.js"></script>


<script >
    $(document).ready(function(){
        //登录
        $("#login").click(function(){
            var username=$("#username").val();//获得用户名
            var pwd=$("#pwd").val();//获得用户密码
            if(username==""||pwd==""){
                layer.alert('用户名或者密码不能为空！',{
                    title: '提示框',
                    icon:1,
                });
            }else {
                //ffalert(1231)
                $.ajax({
                    url:"/masterlogin",
                    data:{username:username,pwd:pwd},
                    type:"post",
                    success:function(result){
                        //alert(result);
                        if(result=="success"){
                            layer.msg("登陆成功");
                            setTimeout(function () {location.href="toAppnIndex";},1000);
                        }else if (result=="notmaster"){
                            layer.alert('登陆失败，权限不够！',{
                                title: '提示框',
                                icon:1,
                            });
                        }else if (result=="error"){
                            layer.msg('登陆失败，帐号或者密码错误！');
                        }
                    }
                })
            }
        })
    })
    <script >
        $(document).ready(function(){
                //登录
            $("#login").click(function(){
                var username=$("#username").val();//获得用户名
                var pwd=$("#pwd").val();//获得用户密码
                if(username==""||pwd==""){
                    layer.alert('用户名或者密码不能为空！',{
                        title: '提示框',
                        icon:1,
                    });
                }else {
                    //ffalert(1231)
                    $.ajax({
                        url:"/app/masterlogin",
                        data:{username:username,pwd:pwd},
                        type:"post",
                        success:function(result){
                            //alert(result);
                            if(result=="success"){
                                layer.msg("登陆成功");
                                setTimeout(function () {location.href="toAppnIndex";},1000);
                            }else if (result=="notmaster"){
                                layer.alert('登陆失败，权限不够！',{
                                    title: '提示框',
                                    icon:1,
                                });
                            }else if (result=="error"){
                                layer.msg('登陆失败，帐号或者密码错误！');
                            }
                        }
                    })
                }
            })
        })

</script>

</body>
</html>