<%@ page import="cn.bean.Emp" %>
<!DOCTYPE html>
<%@ page isELIgnored="false"  contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <meta charset="UTF-8" />
    <title>会员中心</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <link rel="stylesheet" type="text/css" href="/static/before/css/center.css" />
    <link rel="stylesheet" type="text/css" href="/static/before/css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/loading.css"/>
    <link rel="stylesheet" type="text/css" href="/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <script src="/static/before/js/rem.js"></script>
    <script src="/static/before/js/jquery.min.js" type="text/javascript"></script>
    <script src="/static/bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        sessionStorage.url = "confirm";
        $(window).load(function(){
            $(".loading").addClass("loader-chanage")
            $(".loading").fadeOut(300)
        })
    </script>
</head>
<!--loading页开始-->
<div class="loading">
    <div class="loader">
        <div class="loader-inner pacman">
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
        </div>
    </div>
</div>
<!--loading页结束-->
<body style="background-color: #f0f0f0">
    <header id="header" style="">
        <div class="topbar">
            <a href="javascript:history.back();" class="back_btn"><i class="iconfont">ş</i></a>
            <h1 class="page_title"style="margin: 0px;">会员中心</h1>
        </div>
    </header>
<!-- 会员头像 -->
    <div class="vip-header">
        <a href="/Before/toBeforeUserInfo">
            <dl>
                <dt>
                    <img src="/static/before/images/user.png" />
                </dt>
                <dd>
                    <c:if test=""></c:if>
                    <h4><c:if test="${!empty   empBefore.empname}">${empBefore.empname}<span>普通会员</span></c:if>
                        <c:if test="${ empty  empBefore.empname}"><a href="/hello">请登录</a></c:if>
                    </h4>
                    <p><span>积分：<i>${empBefore.integralId.remainingpoints}</i></span>&nbsp;&nbsp;<span>红包：<i>0</i></span></p>
                </dd>
            </dl>
        </a>
        <ul style="margin: 0px;">
            <li><a href="/Before/toBeforeOrders?id=${empBefore.empno}&status=1"><span></span><p>待审核</p> </a></li>
            <li><a href="/Before/toBeforeOrders?id=${empBefore.empno}&status=2"><span></span><p>待领取</p> </a></li>
            <li><a href="/Before/toBeforeOrders?id=${empBefore.empno}&status=3"><span></span><p>待评价</p> </a></li>
        </ul>
    </div>
<!-- 会员俱乐部 -->
    <div class="vip-club border_top_bottom">
        <div class="vip-club-title border_bottom">
            <span><i class="iconfont"></i>会员俱乐部</span>
            <a href="">每日签到领积分<i class="iconfont"></i></a>
        </div>
        <ul>
            <li><a href="/Before/toBeforeOrders?id=${empBefore.empno}&status=1"><i class="iconfont"></i><p>我的订单</p> </a></li>
            <li><a href="/Before/toBeforeUserInfo"><i class="iconfont"></i><p>个人信息</p> </a></li>
        </ul>
    </div>
    <div class="vip-club border_top_bottom vip-account">
        <div class="vip-club-title border_bottom">
            <span><i class="iconfont"></i>我的账户</span>
            <a href="/Before/toBeforeIndex">积分兑换商品<i class="iconfont"></i></a>
        </div>
        <ul>
            <li><a href=""><i class="color_f44623">${empBefore.integralId.remainingpoints}</i><p>剩余积分</p> </a></li>
            <li><a href=""><i class="color_f4a425">${empBefore.integralId.totalintegral}</i><p>总积分</p> </a></li>
            <li><a href=""><i class="color_45a1de">${empBefore.integralId.haveintegral}</i><p>已用积分</p> </a></li>
        </ul>
    </div>
    <div class="vip-list-icon border_top_bottom">
        <table class="table">
            <thead>
            <tr>
                <th>#</th>
                <th>时间</th>
                <th>变动原因</th>
                <th>变动数量</th>
            </tr>
            </thead>
            <tbody>
            <% int i=0;%>
            <c:forEach items="${integralScheduleList}" var="integralSchedule">
                <%i=i+1;%>
                <tr>
                    <th scope="row">${integralSchedule.intergralscheduleno}</th>
                    <td><fmt:formatDate value="${integralSchedule.changedate}" type="date" pattern="yyyy-MM-dd" dateStyle="medium"/></td>
                    <td>${integralSchedule.intergralchange}</td>
                    <td>${integralSchedule.changeint}</td>
                </tr>
            </c:forEach>
            <% if(i==0){ %>
                <tr>
                    <th scope="row">0</th>
                    <td>暂无记录</td>
                    <td>暂无记录</td>
                    <td>暂无记录</td>
                </tr>
            <%}%>
            </tbody>
        </table>
    </div>
    <!--尾部-->
    <footer class="page-footer fixed-footer" id="footer">
        <ul>
            <li>
                <a href="/Before/toBeforeIndex">
                    <i class="iconfont icon-shouye"></i>
                    <p>首页</p>
                </a>
            </li>
            <li>
                <a href="/Before/toBeforeCation">
                    <i class="iconfont icon-icon04"></i>
                    <p>分类</p>
                </a>
            </li>
            <li>
                <a href="/Before/toBeforeShopcar">
                    <i class="iconfont icon-gouwuche"></i>
                    <p>购物车</p>
                </a>
            </li>
            <li class="active">
                <a href="/Before/toBeforeCenter">
                    <i class="iconfont icon-yonghuming"></i>
                    <p>我的</p>
                </a>
            </li>
        </ul>
    </footer>
    <jsp:include   page="session.jsp" flush="true"/>
</body>

</html>
