<%@ page import="cn.bean.Emp" %>
<!DOCTYPE html>
<%@ page isELIgnored="false"  contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>会员中心</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <link rel="stylesheet" type="text/css" href="/static/before/css/center.css" />
    <link rel="stylesheet" type="text/css" href="/static/before/css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/loading.css"/>
    <script src="/static/before/js/rem.js"></script>
    <script src="/static/before/js/jquery.min.js" type="text/javascript"></script>
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
            <h1 class="page_title">会员中心</h1>
        </div>
    </header>
<!-- 会员头像 -->
    <div class="vip-header">
        <a href="/toBeforeUserInfo">
            <dl>
                <dt>
                    <img src="/static/before/images/user.png" />
                </dt>
                <dd>
                    <h4>${empBefore.empname}<span>普通会员</span></h4>
                    <p><span>积分：<i>${empBefore.integralId.remainingpoints}</i></span>&nbsp;&nbsp;<span>红包：<i>0</i></span></p>
                </dd>
            </dl>
        </a>
        <ul>
            <li><a href="/toBeforeOrders?id=${empBefore.empno}&status=1"><span></span><p>待审核</p> </a></li>
            <li><a href="/toBeforeOrders?id=${empBefore.empno}&status=2"><span></span><p>待领取</p> </a></li>
            <li><a href="/toBeforeOrders?id=${empBefore.empno}&status=3"><span></span><p>待评价</p> </a></li>
        </ul>
    </div>
<!-- 会员俱乐部 -->
    <div class="vip-club border_top_bottom">
        <div class="vip-club-title border_bottom">
            <span><i class="iconfont"></i>会员俱乐部</span>
            <a href="">每日签到领积分<i class="iconfont"></i></a>
        </div>
        <ul>
            <li><a href="/toBeforeOrders?id=${empBefore.empno}&status=0"><i class="iconfont"></i><p>我的订单</p> </a></li>
            <li><a href="/toBeforeUserInfo"><i class="iconfont"></i><p>个人信息</p> </a></li>
        </ul>
    </div>
    <div class="vip-club border_top_bottom vip-account">
        <div class="vip-club-title border_bottom">
            <span><i class="iconfont"></i>我的账户</span>
            <a href="/toBeforeIndex">积分兑换商品<i class="iconfont"></i></a>
        </div>
        <ul>
            <li><a href=""><i class="color_f44623">${empBefore.integralId.remainingpoints}</i><p>剩余积分</p> </a></li>
            <li><a href=""><i class="color_f4a425">${empBefore.integralId.totalintegral}</i><p>总积分</p> </a></li>
            <li><a href=""><i class="color_45a1de">${empBefore.integralId.haveintegral}</i><p>已用积分</p> </a></li>
        </ul>
    </div>
    <div class="vip-list-icon border_top_bottom">
        <ul>
            <li class="border_bottom"> 
                <a href="" class="border_right"><i class="iconfont icon-sousuo"></i><em>维修查询</em></a>
                <a href=""><i class="iconfont" style="font-size:24px;"></i><em>报修退换</em></a> 
            </li>
            <li class="border_bottom">
                <a href="" class="border_right"><i class="iconfont" style="font-size:24px;"></i><em>物流查询</em></a> 
                <a href="/toBeforeAddress" onclick="sessionStorage.url = 'center';"><i class="iconfont icon-dizhi1"></i><em>收货地址</em></a>
            </li>
            <li class="border_bottom"> 
                <a href="" class="border_right"><i class="iconfont"></i><em>评价晒单</em></a>
                <a href=""><i class="iconfont" style="font-size:20px; text-indent:2px;"></i><em>我的投诉</em></a>
             </li>
            <li> 
                <a href="" class="border_right"><i class="iconfont"></i><em>我的咨询</em></a> 
                <a href=""><i class="iconfont" style="font-size:23px;"></i><em>二手订单</em></a>
            </li>
        </ul>
    </div>
    <!--尾部-->
    <footer class="page-footer fixed-footer" id="footer">
        <ul>
            <li class="active">
                <a href="/toBeforeIndex">
                    <i class="iconfont icon-shouye"></i>
                    <p>首页</p>
                </a>
            </li>
            <li>
                <a href="/toBeforeCation">
                    <i class="iconfont icon-icon04"></i>
                    <p>分类</p>
                </a>
            </li>
            <li>
                <a href="/toBeforeShopcar">
                    <i class="iconfont icon-gouwuche"></i>
                    <p>购物车</p>
                </a>
            </li>
            <li>
                <a href="/toBeforeCenter">
                    <i class="iconfont icon-yonghuming"></i>
                    <p>我的</p>
                </a>
            </li>
        </ul>
    </footer>

</body>

</html>
