<!DOCTYPE html>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="/static/before/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/index.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/mui.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/loading.css"/>
    <link rel="stylesheet" href="/static/before/css/swiper.min.css">
    <script src="/static/before/js/rem.js"></script>
    <script src="/static/before/js/jquery.min.js" type="text/javascript"></script>
    <script src="/static/before/js/others.js"></script>
	<script src="/static/before/js/swiper.jquery.min.js"></script>
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
	        <h4>积分商城</h4>
	    </header>
		<div id="main" class="clearfloat warp">			
		    <div class="mui-content">
				<!--banner开始-->
				<div class="banner swiper-container">
		            <div class="swiper-wrapper">
		                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="/static/before/images/banner4.jpg" alt=""></a></div>
		                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="/static/before/images/banner1.jpg" alt=""></a></div>
		                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="/static/before/images/banner3.jpg" alt=""></a></div>
		            </div>
		        </div>
		        <!--第一栏分类开始-->
		        <div class="cation clearfloat box-s">
		        	<ul>
		        		<li>
		        			<a href="#">
		        				<img src="/static/before/images/ico5.png"/>
		        				<p>新品专区</p>
		        			</a>
		        		</li>
		        		<li>
		        			<a href="#">
		        				<img src="/static/before/images/ico2.png"/>
		        				<p>送礼首选</p>
		        			</a>
		        		</li>
		        		<li>
		        			<a href="#">
		        				<img src="/static/before/images/ico3.png"/>
		        				<p>积分获取</p>
		        			</a>
		        		</li>
		        		<li>
		        			<a href="#">
		        				<img src="/static/before/images/ico4.png"/>
		        				<p>私人定制</p>
		        			</a>
		        		</li>
		        	</ul>
		        </div>
		        <!--第一栏分类结束-->
		        
		      
		        <!--新品专区-->

				<% int i=1;%>
		        <!--1F家居用品、电器-->
			<c:forEach items="${typeList}" var="type">
				<div class="theme clearfloat">
					<div class="boutit clearfloat">
						<span></span>
						<samp><%=i++%>F${type.commoditytypename}</samp>
					</div>
					<div class="content clearfloat">
						<c:forEach items="${commodityList}" var="commodity">
							<c:if test="${commodity.commoditytypeno==type.commoditytypeno&&commodity.commoditytype==1}">
								<div class="list clearfloat fl">
									<a href="/Before/toBeforeDetail?id=${commodity.commodityno}">
										<div class="tu clearfloat fr">
											<span></span>
											<c:forEach items="${imgList}" var="img">
												<c:if test="${img.imageclassification==3&&img.imagerid==commodity.commodityno}">
													<img src="${img.imagerurl}" />
												</c:if>
											</c:forEach>
										</div>
										<div class="shang clearfloat fl box-s">
											<p class="tit over">${commodity.commoditytitle}</p>
											<p><span>积分:</span><span class="over db red">${commodity.needintegral}</span></p>
										</div>
									</a>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</c:forEach>
	        </div>
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
		<jsp:include   page="updateEmpType.jsp" flush="true"/>
	</body>

</html>