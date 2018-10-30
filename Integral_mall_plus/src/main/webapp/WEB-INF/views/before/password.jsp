<!DOCTYPE html>
<%@ page isELIgnored="false"  contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">
    <title>密码管理</title>
</head>
<link href="/static/before/css/admin.css" rel="stylesheet" type="text/css">
<link href="/static/before/css/amazeui.css" rel="stylesheet" type="text/css">

<link href="/static/before/css/personal.css" rel="stylesheet" type="text/css">
<link href="/static/before/css/stepstyle.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="/static/before/js/jquery-1.8.3.min.js"></script>
<script src="/static/before/js/amazeui.js"></script>

<body>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="am-cf am-padding">
                <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改密码</strong> / <small>Password</small></div>
            </div>
            <hr/>
            <!--进度条-->
            <div class="m-progress">
                <div class="m-progress-list">
							<span class="step-1 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                <p class="stage-name">重置密码</p>
                            </span>
                    <span class="step-2 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">2<em class="bg"></em></i>
                                <p class="stage-name">完成</p>
                            </span>
                    <span class="u-progress-placeholder"></span>
                </div>
                <div class="u-progress-bar total-steps-2">
                    <div class="u-progress-bar-inner"></div>
                </div>
            </div>
            <form class="am-form am-form-horizontal" action="/BeforeUpdateEmpPassword" id="updatePassword" method="post">
                <input type="hidden" name="empno" value="${empBefore.empno}">
                <div class="am-form-group">
                    <label for="user-old-password" class="am-form-label">原密码</label>
                    <div class="am-form-content">
                        <input type="password" id="user-old-password" placeholder="请输入原登录密码"><span id="ts"></span>
                    </div>
                </div>
                <div class="am-form-group">
                    <label for="user-new-password" class="am-form-label">新密码</label>
                    <div class="am-form-content">
                        <input type="password" id="user-new-password" placeholder="由数字、字母组合"><span class="ts"></span>
                    </div>
                </div>
                <div class="am-form-group">
                    <label for="user-confirm-password" class="am-form-label">确认密码</label>
                    <div class="am-form-content">
                        <input type="password" id="user-confirm-password" name="password" placeholder="请再次输入上面的密码"><span class="ts"></span>
                    </div>
                </div>
                <div class="info-btn">
                    <div class="am-btn am-btn-danger" id="sub">保存修改</div>
                </div>

            </form>

        </div>
    </div>
</div>
<script type="text/javascript">
    $(function(){
        var c=false;
        var d=false;
        var e=false;
        $("#user-old-password").change(function(){
            $.ajax({
                url:"/BeforeOldPassword",
                data:{ empname:'${empBefore.empname}', password:$("#user-old-password").val()} ,
                type:"POST",
                success:function (result){
                    alert(result)
                    if (result=="y"){
                        $("#ts").html("");
                        c=true;
                    }else{
                        c=false;
                        $("#ts").html("原密码输入不正确");
                    }
                }
            })
        })
        $("#user-confirm-password").keyup(function(){
          var newpassword=$("#user-new-password").val();
          if(newpassword!=$(this).val()){
              d=false;
              $(this).next(".ts").html("两次密码不一致");
          }else{
              d=true;
              $(this).next(".ts").html("");
          }
        })
        $("#user-new-password").keyup(function(){
            if($(this).val().length<6){
                e=false;
                $(this).next(".ts").html("密码小于6位，不可使用");
            }else{
                e=true;
                $(this).next(".ts").html("");
            }
        })
        $("#sub").click(function(){
            if(c&d&e){
                $("#updatePassword").submit();``
            }
        })
    })
</script>
</body>
</html>