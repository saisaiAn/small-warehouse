<!DOCTYPE html>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>分类</title>
	<%
		request.setAttribute("path", request.getContextPath());
	%>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/cation.css"/>
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
	        <h4>商品分类</h4>
	        <a class="btn" href="#">
	            <i class="iconfont icon-erweima"></i>
	        </a>
	    </header>
	    <!--头部区域结束-->
	    <div class="warp clearfloat">
		    <div class="cations clearfloat">
				<c:forEach items="${typeList}" var="type">
					<div class="list clearfloat fl">
						<a href="${path}/Before/toBeforeList?commoditytypeno=${type.commoditytypeno}">
							<p class="tit over box-s">${type.commoditytypename}</p>
							<div class="tu">
								<c:forEach items="${imgList}" var="img">
									<c:if test="${img.imageclassification==4&&img.imagerid==type.commoditytypeno}">
										<img src="${img.imagerurl}" />
									</c:if>
								</c:forEach>
							</div>
						</a>
					</div>
				</c:forEach>
		    </div>
	    </div>	    
	    
	    <!--尾部区域-->
		<footer class="page-footer fixed-footer" id="footer">
			<ul>
				<li>
					<a href="${path}/Before/toBeforeIndex">
						<i class="iconfont icon-shouye"></i>
						<p>首页</p>
					</a>
				</li>
				<li class="active">
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
