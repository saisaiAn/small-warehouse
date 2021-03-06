<%@ page import="cn.bean.Emp" %>
<!DOCTYPE html>
<%@ page isELIgnored="false"  contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta charset="UTF-8" />
    <title>会员中心</title>
    <%
        request.setAttribute("path", request.getContextPath());
    %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/center.css" />
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/loading.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <link rel="shortcut icon" href="${path}/static/before/images/mall.png" type="image/x-icon"/>
    <script src="${path}/static/before/js/rem.js"></script>
    <script src="${path}/static/before/js/jquery.min.js" type="text/javascript"></script>
    <script src="${path}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
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
            <h4 class="page_title" style="margin: 0px;font-weight: bold;">会员中心</h4>
        </div>
    </header>
<!-- 会员头像 -->
    <div class="vip-header">
        <a href="${path}/Before/toBeforeUserInfo">
            <dl>
                <dt>
                    <img src="${path}/static/before/images/user.png" />
                </dt>
                <dd>
                    <c:if test=""></c:if>
                    <h4><c:if test="${!empty   empBefore.empname}">${empBefore.empname}<span>普通会员</span></c:if>
                        <c:if test="${ empty  empBefore.empname}"><a href="/hello">请登录</a></c:if>
                    </h4>
                    <p><span>积分：<i>${integral.remainingpoints}</i></span>&nbsp;&nbsp;<span>红包：<i>0</i></span></p>
                </dd>
            </dl>
        </a>
        <ul style="margin-bottom: 0px;width: 100%;">
            <li><a href="${path}/Before/toBeforeOrders?id=${empBefore.empno}&status=1"><span></span><p>待审核</p> </a></li>
            <li><a href="${path}/Before/toBeforeOrders?id=${empBefore.empno}&status=2"><span></span><p>待领取</p> </a></li>
            <li><a href="${path}/Before/toBeforeOrders?id=${empBefore.empno}&status=3"><span></span><p>待评价</p> </a></li>
            <li><a href="${path}/Before/toBeforeOrders?id=${empBefore.empno}&status=4"><span></span><p>已评价</p> </a></li>
        </ul>
    </div>
<!-- 会员俱乐部 -->
    <div class="vip-club border_top_bottom">
        <div class="vip-club-title border_bottom">
            <span><i class="iconfont"></i>会员俱乐部</span>
        </div>
        <ul>
            <li><a href="${path}/Before/toBeforeOrders?id=${empBefore.empno}&status=0"><i class="iconfont"></i><p>我的订单</p> </a></li>
            <li><a href="${path}/Before/toBeforeUserInfo"><i class="iconfont"></i><p>个人信息</p> </a></li>
        </ul>
    </div>
    <div class="vip-club border_top_bottom vip-account">
        <div class="vip-club-title border_bottom">
            <span><i class="iconfont"></i>我的账户</span>
            <a href="${path}/Before/toBeforeIndex">积分兑换商品<i class="iconfont"></i></a>
        </div>
        <ul>
            <li><a href=""><i class="color_f44623">${integral.remainingpoints}</i><p>剩余积分</p> </a></li>
            <li><a href=""><i class="color_f4a425">${integral.totalintegral}</i><p>总积分</p> </a></li>
            <li><a href=""><i class="color_45a1de">${integral.haveintegral}</i><p>已用积分</p> </a></li>
        </ul>
    </div>
    <div class="vip-list-icon border_top_bottom">
        <table class="table table-condensed" id="tables" style="margin-bottom: 50px;">
            <thead>
            <tr class="trs">
                <th>#</th>
                <th>时间</th>
                <th>变动原因</th>
                <th>变动数量</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${integralScheduleList}" var="integralSchedule">
                <tr>
                    <th scope="row">${integralSchedule.intergralscheduleno}</th>
                    <td><fmt:formatDate value="${integralSchedule.changedate}" pattern="yyyy-MM-dd"/></td>
                    <td>${integralSchedule.intergralchange}</td>
                    <td>${integralSchedule.changeint}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <!--尾部-->
    <footer class="page-footer fixed-footer" id="footer">
        <ul>
            <li>
                <a href="${path}/Before/toBeforeIndex">
                    <i class="iconfont icon-shouye"></i>
                    <p>首页</p>
                </a>
            </li>
            <li>
                <a href="${path}/Before/toBeforeCation">
                    <i class="iconfont icon-icon04"></i>
                    <p>分类</p>
                </a>
            </li>
            <li>
                <a href="${path}/Before/toBeforeShopcar">
                    <i class="iconfont icon-gouwuche"></i>
                    <p>购物车</p>
                </a>
            </li>
            <li class="active">
                <a href="${path}/Before/toBeforeCenter">
                    <i class="iconfont icon-yonghuming"></i>
                    <p>我的</p>
                </a>
            </li>
        </ul>
    </footer>
    <script type="text/javascript">
        $(function(){
            setInterval(function(){
                $.ajax({
                    url:"${path}/Before/BeforeType",
                    data:{},
                    type:"POST",
                    success:function (result) {
                    }
                })
            },10000)
        })
    </script>
    <script type="text/javascript">
        function SortTb()

        {

            var tb = $("#tables tbody").find("tr");

            var total = tb.length;

            //外层循环，共要进行arr.length次求最大值操作

            for (var i = 0; i < total; i++)

            {

                //内层循环，找到第i大的元素，并将其和第i个元素交换

                for (var j = i; j < total ; j++)

                {

                    $(tb).eq(j).insertBefore($(tb).eq(i));

                    $(tb).eq(i).insertAfter($(tb).eq(j));

                }

            }

            return;

        }
        $("#tables .trs").click(function(){
            SortTb()
        })
    </script>
</body>

</html>
