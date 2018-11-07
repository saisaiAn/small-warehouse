<!DOCTYPE html>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>订单列表</title>
    <link rel="stylesheet" type="text/css" href="/static/before/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/shopcar.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/mui.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/loading.css"/>
	<link rel="stylesheet" type="text/css" href="/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/sourse/layer/mobile/need/layer.css">
    <script src="/static/before/js/rem.js"></script>
    <script src="/static/before/js/jquery.min.js" type="text/javascript"></script>
    <script src="/static/before/sourse/layer/mobile/layer.js"></script>
	<script type="text/javascript">
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
	<body class="bg-info">
		<!--header star-->
		<header class="mui-bar mui-bar-nav" id="header">
			<a class="btn" href="javascript:history.go(-1)">
	            <i class="iconfont icon-fanhui"></i>
	        </a>
	        <h4>订单列表</h4>
	    </header>
	    <!--header end-->
	    
	    <div class="warp warptwo clearfloat">
			<ul class="address-list" style=" width: 100%;">
				<%int i=0;%>
				<c:forEach items="${orderList}" var="order">
					<c:if test="${status==order.orderstatus||status==0}">
						<%i++;%>
				<li style="display: inline-block;margin-top: 6px;padding: 10px; width: 100%;opacity: 0.9;background-color: #fff;" >
					<div style=" width: 100%;">
						<div class="am-share-footer" style="float:left;width:121px;height:121px;padding: 2px;border: #1b6d85 1px solid; margin: 5px; display: inline-block;" >
								<c:forEach items="${imgList}" var="img">
									<c:if test="${img.imageclassification==3&&img.imagerid==order.ordercommodityno}">
										<img  style="width:115px;height:115px;" src="${img.imagerurl}"/>
									</c:if>
								</c:forEach>
						</div>
						<div style="float: left;display: inline-block;margin-left: 15px;">
							<h5 style="font-family:Microsoft YaHei;color: #0f0f0f;">${order.commodityId.commoditytitle}</h5>
							<p class=" over" style="font-size: 12px;">积分:<span class="text-success" style="font-size: 12px;">${order.commodityId.needintegral}</span>&nbsp;&nbsp;&nbsp;价格:<span class="text-success" style="font-size: 12px;">${order.commodityId.price}</span></p>
							<p class="text-info">${order.commodityId.commoditydetails}</p>
							<h5 style="font-family:Microsoft YaHei;color: #00be67;">数量：<span style="color: #7b3f25;">${order.ordercommoditysum}</span></h5>
						</div>
					</div>
					<div style="float: left;display: inline-block;width: 100%;" >
						<p>收货人：${order.emp.empname}&nbsp;&nbsp;手机号：${order.emp.empphone}</p><%--1为已提交 2为待领取 3为已领取--%>
						<p class="order-add1">订单总积分：<span style="color: #00c800;">${order.orderintegral}</span>&nbsp;&nbsp;订单状态：<c:if test="${order.orderstatus==1}"><span style="color: #0f0f0f;background-color: #00a0e9;padding: 5px;">已提交</span></c:if><c:if test="${order.orderstatus==2}"><span style="color: #0f0f0f;background-color: #00ee00;padding: 5px;">待领取</span></c:if><c:if test="${order.orderstatus==3}"><span style="color: #0f0f0f; background-color: #00E8D7;padding: 5px;">已领取</span></c:if></p>
						<hr style="margin-top: 1px;margin-bottom: 1px;" />
						<div class="address-cz" style="margin: 0 auto; display: inline-block;width:200px;padding: 5px;">
							<button style="display:inline-block;" class="btn btn-info btn-sm editButton">查看兑换码</button>
							<p style="display:none;" class="exchange"><span class="text-success" style="font-size: 12px;">兑换码：</span><input  style="display: inline-block;height: 10px;width: 180px;" readonly type="text" value="${order.orderexchange}"></p>
						</div>
					</div>
				</li>
					</c:if>
					</c:forEach>
				<%if(i==0){%><li>该分类暂无任何订单</li><%}%>
			</ul>
	    </div>
		<!--footer star-->
		<footer class="page-footer fixed-footer" id="footer">
			<ul>
				<li class="active">
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
				<li>
					<a href="/Before/toBeforeCenter">
						<i class="iconfont icon-yonghuming"></i>
						<p>我的</p>
					</a>
				</li>
			</ul>
		</footer>
		<!--footer end-->
		<script type="text/javascript">
            var clickNum = 0;
			$(".editButton").click(function () {
                if(clickNum == 0){
                    $(this).next(".exchange").css("display","inline-block");
                    $(this).html("隐藏兑换码");
                    clickNum = 1;
                    return false;
                }else{
                    $(this).next(".exchange").css("display","none");
                    $(this).html("查看兑换码");
                    clickNum = 0;
                    return false;
                };
            })
            $(".db").click(function(){
                var hjjf= $('.settlement span').html();
                hjjf=hjjf.substring(0,hjjf.length-2);
               if (hjjf<${empBefore.integralId.remainingpoints}){
                   var count="";
                   $('.list').map(function(index, item) {
                       var $el = $(item);
                       if ($el.find('input[type="checkbox"]').is(":checked")) {
                           count += $el.find('input[type="checkbox"]').val()+",";
                       }
                   });
                   count=count.substring(0,count.length-1);
                   $.ajax({
                       url:"/Before/addBeforePay",
                       data:{ count:count} ,
                       type:"POST",
                       success:function (result) {
                           if (result=="y"){
                          		alert("下单成功！");
                               location.href="/Before/toBeforeShopcar";
                           }
                       }
                   })
               }else{
                   alert("用户积分不足");
               }
            });
			$('input[type="checkbox"]').click(function() { // 找到勾选按钮，绑定事件
				tatol();
			});
			$('.list ul img').click(function() { // 找到加减按钮，绑定点击事件
				var vals = $(this).parent().parent().children().eq(1);
				if ($(this).parent().index()) {
					vals.html(parseInt(vals.html()) + 1);
				} else {
					vals.html(vals.html() > 1 ? parseInt(vals.html()) - 1 : 1);
				}
				var carno=$(this).attr("carno");
				alert(carno+"==="+vals.html());
                $.ajax({
                    url:"/Before/updateBeforeShopCar",
                    data:{ carno:carno, commoditySum:vals.html()} ,
                    type:"post",
                    success:function (result) {
                        alert(result);
                    }
                })
				tatol();
			});
			$('.icon-lajixiang').click(function() { // 找到删除按钮，绑定点击事件
                var del =$(this).next(".carno").val();
				var self = this;
				layer.open({
	                content: '确定删除？',
	                btn: ['确定', '取消'],
	                yes: function(index) {
                        $.ajax({
                            url:"/Before/deleteBeforeShopCar",
                            data:{ carno:del} ,
                            type:"POST",
                            success:function (result) {
                                if (result=="y"){
                                    alert("删除成功");
                                    location.href="/Before/toBeforeShopcar";
                                }else {
                                    alert("删除失败");
                                    window.location.reload();
                                }
                            }
                        })
	                    tatol();
	                }
	            });
			});
			var tatol = function() { // 计算总积分
				var count = 0;
				$('.list').map(function(index, item) {
					var $el = $(item);
					if ($el.find('input[type="checkbox"]').is(":checked")) {
						count += parseFloat($el.find('.jifen').html()) * parseInt($el.find('.zuo li').eq(1).html());
					}
				});
				if (count >= 0) {
					$('.settlement span').html(count + '积分');
				}
			}
		</script>
		<jsp:include   page="updateEmpType.jsp" flush="true"/>
	</body>

</html>
