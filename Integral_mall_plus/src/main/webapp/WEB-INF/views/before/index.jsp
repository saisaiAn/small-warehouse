<!DOCTYPE html>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>首页</title>
	<%
		request.setAttribute("path", request.getContextPath());
	%>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/index.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/mui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/loading.css"/>
    <link rel="stylesheet" href="${path}/static/before/css/swiper.min.css">
	<link rel="shortcut icon" href="${path}/static/before/images/mall.png" type="image/x-icon"/>
    <script src="${path}/static/before/js/rem.js"></script>
    <script src="${path}/static/before/js/jquery.min.js" type="text/javascript"></script>
    <script src="${path}/static/before/js/others.js"></script>
	<script src="${path}/static/before/js/swiper.jquery.min.js"></script>
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
			<a class="back_btn"><img src="${path}/static/app/assets/images/logo.png" height="36" alt="logo"></a>
	        <h4>乐兑商城</h4>
	    </header>
		<div id="main" class="clearfloat warp">			
		    <div class="mui-content">
				<!--banner开始-->
				<div class="banner swiper-container">
		            <div class="swiper-wrapper">
		                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="${path}/static/before/images/banner4.jpg" alt=""></a></div>
		                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="${path}/static/before/images/banner1.jpg" alt=""></a></div>
		                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="${path}/static/before/images/banner3.jpg" alt=""></a></div>
		            </div>
		        </div>
		      <%--  <!--第一栏分类开始-->
		        <div class="cation clearfloat box-s">
		        	<ul>
		        		<li>
		        			<a href="#">
		        				<img src="${path}/static/before/images/ico5.png"/>
		        				<p>新品专区</p>
		        			</a>
		        		</li>
		        		<li>
		        			<a href="#">
		        				<img src="${path}/static/before/images/ico2.png"/>
		        				<p>送礼首选</p>
		        			</a>
		        		</li>
		        		<li>
		        			<a href="#">
		        				<img src="${path}/static/before/images/ico3.png"/>
		        				<p>积分获取</p>
		        			</a>
		        		</li>
		        		<li>
		        			<a href="#">
		        				<img src="${path}/static/before/images/ico4.png"/>
		        				<p>私人定制</p>
		        			</a>
		        		</li>
		        	</ul>
		        </div>
		        <!--第一栏分类结束-->--%>
		        
		      
		        <!--新品专区-->

		        <!--1F家居用品、电器-->
			<c:forEach items="${typeList}" var="type">
				<div class="theme clearfloat">
					<div class="boutit clearfloat" style="margin: 10px 0px 0px 0px;">
						<samp style="float: left;background-color: #03A9F4;font-weight: bold;font-family: '微软雅黑 Light';height: 43px;padding:0px 20px;color: white; ">${type.commoditytypename}</samp>
					</div>
					<div class="content clearfloat" style="background-color: rgba(0,0,0,0);border-top: #03A9F4 solid 4px; ">
						<c:forEach items="${commodityList}" var="commodity">
							<c:if test="${commodity.commoditytypeno==type.commoditytypeno&&commodity.commoditytype==1}">
								<div class="list clearfloat fl" style="background-color:white;padding-top: 10px;">
									<a href="${path}/Before/toBeforeDetail?id=${commodity.commodityno}">
										<div class="tu clearfloat fr">
											<span></span>
											<c:forEach items="${imgList}" var="img">
												<c:if test="${img.imageclassification==3&&img.imagerid==commodity.commodityno}">
													<img src="${img.imagerurl}" />
												</c:if>
											</c:forEach>
										</div>
										<div class="shang clearfloat fl box-s">
											<p class="tit over" style="font-size: 13px;font-weight: bold;font-family: '微软雅黑 Light' ;">${commodity.commoditytitle}</p>
											<p><span>积分:</span><span class="over db red" style="font-weight: bold;">${commodity.needintegral}</span></p>
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
		<!--footer end-->
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