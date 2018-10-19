<!DOCTYPE html>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>列表</title>
    <link rel="stylesheet" type="text/css" href="/static/before/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/list.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/mui.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/loading.css"/>
    <script src="/static/before/js/rem.js"></script>
    <script src="/static/before/js/jquery.min.js" type="text/javascript"></script>
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
					<div class="lie clearfloat">
						<a href="/WEB-INF/views/before/detail.jsp">
							<div class="tu clearfloat fl">
								<img src="/static/before/images/dianqi.jpg"/>
							</div>
						</a>
						<div class="right clearfloat fl">
							<a href="/WEB-INF/views/before/detail.jsp">
								<p class="tit">科顺（KESUN） 煮蛋器 多功能家用蒸蛋器 可蒸7个蛋</p>
							</a>
							<div class="xia clearfloat">
								<a href="/WEB-INF/views/before/detail.jsp">
									<p class="jifen fl over">2800积分</p>
								</a>
						
							</div>
						</div>
					</div>
					<div class="lie clearfloat">
						<a href="/WEB-INF/views/before/detail.jsp">
							<div class="tu clearfloat fl">
								<img src="/static/before/images/list1.jpg"/>
							</div>
						</a>
						<div class="right clearfloat fl">
							<a href="/WEB-INF/views/before/detail.jsp">
								<p class="tit">小熊（Bear) 单双层 多功能 全不锈钢 家用自动断电 煮蛋器 蒸蛋器 早餐机</p>
							</a>
							<div class="xia clearfloat">
								<a href="/WEB-INF/views/before/detail.jsp">
									<p class="jifen fl over">5000积分</p>
								</a>
						
							</div>
						</div>
					</div>
					<div class="lie clearfloat">
						<a href="/WEB-INF/views/before/detail.jsp">
							<div class="tu clearfloat fl">
								<img src="/static/before/images/list2.jpg"/>
							</div>
						</a>
						<div class="right clearfloat fl">
							<a href="/WEB-INF/views/before/detail.jsp">
								<p class="tit">小熊(Bear) ZDQ-206 煮蛋器 双层蒸蛋器 自动断电</p>
							</a>
							<div class="xia clearfloat">
								<a href="/WEB-INF/views/before/detail.jsp">
									<p class="jifen fl over">3700积分</p>
								</a>
								
							</div>
						</div>
					</div>
					<div class="lie clearfloat">
						<a href="detail.jsp">
							<div class="tu clearfloat fl">
								<img src="/static/before/images/chufang.jpg"/>
							</div>
						</a>
						<div class="right clearfloat fl">
							<a href="detail.jsp">
								<p class="tit">小熊(Bear）ZDQ-201 煮蛋器 6个蛋容量（黄色）</p>
							</a>
							<div class="xia clearfloat">
								<a href="detail.jsp">
									<p class="jifen fl over">3700积分</p>
								</a>
								
							</div>
						</div>
					</div>
					<div class="lie clearfloat">
						<a href="detail.jsp">
							<div class="tu clearfloat fl">
								<img src="/static/before/images/list3.jpg"/>
							</div>
						</a>
						<div class="right clearfloat fl">
							<a href="detail.jsp">
								<p class="tit">九阳（Joyoung）煮蛋器多功能智能蒸蛋器自动断电（5个蛋量）</p>
							</a>
							<div class="xia clearfloat">
								<a href="detail.jsp">
									<p class="jifen fl over">4700积分</p>
								</a>
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<!--尾部-->
	    <footer class="page-footer fixed-footer" id="footer">
			<ul>
				<li>
					<a href="index.jsp">
						<i class="iconfont icon-shouye"></i>
						<p>首页</p>
					</a>
				</li>
				<li class="active">
					<a href="cation.jsp">
						<i class="iconfont icon-icon04"></i>
						<p>分类</p>
					</a>
				</li>
				<li>
					<a href="shopcar.jsp">
						<i class="iconfont icon-gouwuche"></i>
						<p>购物车</p>
					</a>
				</li>
				<li>
					<a href="center.jsp">
						<i class="iconfont icon-yonghuming"></i>
						<p>我的</p>
					</a>
				</li>
			</ul>
		</footer>
	</body>
</html>
