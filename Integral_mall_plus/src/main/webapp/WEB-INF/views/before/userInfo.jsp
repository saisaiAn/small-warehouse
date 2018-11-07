<!DOCTYPE html>
<%@ page isELIgnored="false"  contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">
    <title>个人中心</title>
</head>
<link href="/static/before/css/admin.css" rel="stylesheet" type="text/css">
<link href="/static/before/css/amazeui.css" rel="stylesheet" type="text/css">

<link href="/static/before/css/personal.css" rel="stylesheet" type="text/css">
<link href="/static/before/css/infstyle.css" rel="stylesheet" type="text/css">
<link href="/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="/static/before/js/jquery.min.js"></script>
<script src="/static/before/js/amazeui.js"></script>
<body>
    <div class="center">
        <div class="col-main">
            <div class="main-wrap">
                <div class="user-info">
                    <!--标题 -->
                    <div class="am-cf am-padding" >
                        <div class="am-fl am-cf" style="float: left"><strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small></div>
                        <div class="am-fl am-cf" style="float: right"><a href="javascript:history.back();" class="back_btn"><i class="glyphicon glyphicon-log-out"></i></a></div>
                    </div>
                    <hr/>

                    <!--头像 -->
                    <div class="user-infoPic">

                        <div class="filePic">
                            <input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
                            <img class="am-circle am-img-thumbnail" src="/static/before/images/getAvatar.do.jpg" alt="" />
                        </div>

                        <p class="am-form-help">头像</p>

                        <div class="info-m">
                            <div><b>用户名：<i>${empBefore.empname}</i></b></div>
                            <div class="vip">
                                <span></span><a href="#">会员专享</a>
                            </div>
                        </div>
                    </div>

                    <!--个人信息 -->
                    <div class="info-main">
                        <form class="am-form am-form-horizontal" action="/Before/BeforeUpdateEmp" method="post">
                            <input type="hidden" name="empno" value="${empBefore.empno}">
                            <input type="hidden" name="empname" value="${empBefore.empname}">
                            <input type="hidden" name="password" value="${empBefore.password}">
                            <div class="am-form-group">
                                <label for="user-name" class="am-form-label">姓名</label>
                                <div class="am-form-content">
                                    <input type="text" disabled value="${empBefore.empname}" placeholder="name">
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label class="am-form-label">性别</label>
                                <div class="am-form-content sex">
                                    <label class="am-radio-inline">
                                        <input type="radio" name="empsex" disabled <c:if test="${empBefore.empsex=='男'}">checked="checked"</c:if> value="男" data-am-ucheck> 男
                                    </label>
                                    <label class="am-radio-inline">
                                        <input type="radio" name="empsex" disabled <c:if test="${empBefore.empsex=='女'}">checked="checked"</c:if> value="女" data-am-ucheck> 女
                                    </label>
                                 </div>
                            </div>
                            <div class="am-form-group">
                                <label for="user-phone" class="am-form-label">电话</label>
                                <div class="am-form-content">
                                    <input id="user-phone" name="empphone" placeholder="telephonenumber" type="tel" value="${empBefore.empphone}">
                                </div>
                            </div>
                            <div class="am-form-group ">
                                <label class="am-form-label">登录密码</label>
                                <div class="am-form-content password">
                                    <a href="/Before/toBeforePassword">
                                        <span class="am-form-label" style="float: right">修改</span>
                                    </a>
                                </div>
                            </div>
                            <div class="info-btn">
                                <button type="submit" class="am-btn am-btn-danger">保存修改</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>