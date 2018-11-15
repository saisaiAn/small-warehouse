<!DOCTYPE html>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>列表</title>
	<%
		request.setAttribute("path", request.getContextPath());
	%>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/list.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/mui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/loading.css"/>
	<link rel="shortcut icon" href="${path}/static/before/images/mall.png" type="image/x-icon"/>
    <script src="${path}/static/before/js/rem.js"></script>
    <script src="${path}/static/before/js/jquery.min.js" type="text/javascript"></script>
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
	<body>
		<!--头部区域-->
	    <header class="mui-bar mui-bar-nav" id="header">
			<a class="btn" href="javascript:history.go(-1)">
	            <i class="iconfont icon-fanhui"></i>
	        </a>
	       <h4>商品列表</h4>
	    </header>

		<!--商品区域-->
		
		<div class="warp clearfloat">
			<div class="lists clearfloat">
				<div class="top clearfloat">
					<ul>
						<li>默认</li>
						<li>价格<i class="iconfont icon-xiala"></i></li>
						<li>销量<i class="iconfont icon-xiala"></i></li>
					</ul>
				</div>
				<div class="bottom clearfloat">
					<c:forEach items="${commodityList}" var="commodity">
						<c:if test="${commodity.commoditytype==1}">
						<div class="lie clearfloat" style="overflow: auto;">
							<a href="${path}/Before/toBeforeDetail?id=${commodity.commodityno}">
								<div class="tu clearfloat fl">
									<c:forEach items="${imgList}" var="img">
										<c:if test="${img.imageclassification==3&&img.imagerid==commodity.commodityno}">
											<img  style="width:115px;height:115px;" src="${img.imagerurl}"/>
										</c:if>
									</c:forEach>
								</div>
							</a>
							<div class="right clearfloat fl" style="float: right;width: 240px;">
								<a href="${path}/Before/toBeforeDetail?id=${commodity.commodityno}" style="width: 200px;">
									<p class="tit" style="width: 200px;margin: 0px;padding: 0px;">${commodity.commoditydetails}</p>
								</a>
								<div class="xia clearfloat" style="width: 200px;">
									<a href="${path}/Before/toBeforeDetail?id=${commodity.commodityno}">
										<p class="jifen fl over">${commodity.needintegral}积分</p>
									</a>
								</div>
								<div class=" clearfloat" style="width: 200px;"><p style="font-size: 15px;"><span style="font-size: 14px;">库存</span>：${commodity.commodityinventory}</p></div>
								<div class="xia clearfloat" style="width: 200px;"><p style="font-size: 15px;">${commodity.commoditydetails}</p></div>
							</div>
						</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
		
		
		<!--尾部-->
		<footer class="page-footer fixed-footer" id="footer">
			<ul>
				<li class="active">
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
				<li>
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
	</body>
</html>
