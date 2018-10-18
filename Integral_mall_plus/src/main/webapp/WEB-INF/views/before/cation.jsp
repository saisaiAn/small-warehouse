<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>分类</title>
    <link rel="stylesheet" type="text/css" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/cation.css"/>
    <link rel="stylesheet" type="text/css" href="css/mui.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/loading.css"/>
    <script src="js/rem.js"></script> 
    <script src="js/jquery.min.js" type="text/javascript"></script>
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
		    	<div class="list clearfloat fl">
		    		<a href="list.jsp">
			    		<p class="tit over box-s">家居家纺</p>
			    		<div class="tu">
			    			<img src="images/jiaju.jpg"/>
			    		</div>
		    		</a>
		    	</div>
		    	<div class="list clearfloat fl">
		    		<a href="list.jsp">
			    		<p class="tit over box-s">3C数码</p>
			    		<div class="tu">
			    			<img src="images/3c.jpg"/>
			    		</div>
		    		</a>
		    	</div>
		    	<div class="list clearfloat fl">
		    		<a href="list.jsp">
			    		<p class="tit over box-s">家用电器</p>
			    		<div class="tu">
			    			<img src="images/dianqi.jpg"/>
			    		</div>
		    		</a>
		    	</div>
		    	<div class="list clearfloat fl">
		    		<a href="list.jsp">
			    		<p class="tit over box-s">厨房小电</p>
			    		<div class="tu">
			    			<img src="images/chufang.jpg"/>
			    		</div>
		    		</a>
		    	</div>
		    	<div class="list clearfloat fl">
		    		<a href="list.jsp">
			    		<p class="tit over box-s">零食小吃</p>
			    		<div class="tu">
			    			<img src="images/lingshi.jpg"/>
			    		</div>
		    		</a>
		    	</div>
		    	<div class="list clearfloat fl">
		    		<a href="list.jsp">
			    		<p class="tit over box-s">酒水饮料</p>
			    		<div class="tu">
			    			<img src="images/4.jpg"/>
			    		</div>
		    		</a>
		    	</div>
		    	<div class="list clearfloat fl">
		    		<a href="list.jsp">
			    		<p class="tit over box-s">个护健康</p>
			    		<div class="tu">
			    			<img src="images/gehu.jpg"/>
			    		</div>
		    		</a>
		    	</div>
		    	<div class="list clearfloat fl">
		    		<a href="list.jsp">
			    		<p class="tit over box-s">生活电器</p>
			    		<div class="tu">
			    			<img src="images/shenghuo.jpg"/>
			    		</div>
		    		</a>
		    	</div>
		    	
		    	<div class="list clearfloat fl">
		    		<a href="list.jsp">
			    		<p class="tit over box-s">服饰</p>
			    		<div class="tu">
			    			<img src="images/fuzhuang.jpg"/>
			    		</div>
		    		</a>
		    	</div>
		    	<div class="list clearfloat fl">
		    		<a href="list.jsp">
			    		<p class="tit over box-s">生鲜水果</p>
			    		<div class="tu">
			    			<img src="images/sg.jpg"/>
			    		</div>
		    		</a>
		    	</div>
		    </div>
	    </div>	    
	    
	    <!--尾部区域-->
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
