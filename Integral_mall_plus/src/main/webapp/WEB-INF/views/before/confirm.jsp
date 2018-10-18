<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>确认订单</title>
    <link rel="stylesheet" type="text/css" href="/static/before/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/confirm.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/mui.min.css"/>
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
	<body>
		<!--header star-->
		<header class="mui-bar mui-bar-nav" id="header">
			<a class="btn" href="javascript:history.go(-1)">
	            <i class="iconfont icon-fanhui"></i>
	        </a>
	        <div class="top-sch-box top-sch-boxtwo flex-col">
	                      确认订单
	        </div>
	    </header>
	    <!--header end-->
	    
	    <div class="warp warptwo clearfloat">
	    	<div class="confirm clearfloat">
	    		<div class="add clearfloat box-s">
	    			<a href="/WEB-INF/views/before/address.jsp">
		    			<div class="left clearfloat fl">
		    				<i class="iconfont icon-dizhi1"></i>
		    			</div>
		    			<div class="middle clearfloat fl">
		    				<p class="tit">
		    					收货人：小王&nbsp;&nbsp;&nbsp;&nbsp;1580888888
		    				</p>
		    				<p class="fu-tit over2">
		    					收货地址：湖南省长沙市高新区拓基城市广场金座A2002
		    				</p>
		    			</div>
		    			<div class="left clearfloat fr">
		    				<i class="iconfont icon-jiantou1"></i>
		    			</div>
	    			</a>
	    		</div>
	    		<div class="lie clearfloat">
					<a href="detail.jsp">
						<div class="tu clearfloat fl">
							<img src="/static/before/images/xj.jpg"/>
						</div>
					</a>
					<div class="right clearfloat fl">
						<a href="/WEB-INF/views/before/detail.jsp">
							<p class="tit over">单反相机，彰显你的风格</p>
							<p class="fu-tit">颜色：蓝色  内存：120G</p>
						</a>
						<div class="xia clearfloat">
							<a href="/WEB-INF/views/before/detail.jsp">
								<p class="jifen fl over">100000积分</p>
							</a>
							<span class="fr db">×1</span>
						</div>
					</div>
				</div>
				<div class="gmshu clearfloat box-s fl">
					<div class="gcontent clearfloat">
						<p class="fl">购买数量</p>
			     		<div class="you clearfloat fr">
			     			<ul>
			     				<li><img src="/static/before/images/jian.jpg"/></li>
			     				<li>1</li>
			     				<li><img src="/static/before/images/jia.jpg"/></li>
			     			</ul>
			     		</div>
					</div>		     		
		     	</div>
		     	<div class="gmshu gmshutwo clearfloat box-s fl">
					<div class="gcontent clearfloat">
						<p class="fl">配送方式</p>
			     		<div class="you clearfloat fr">
			     			<span>快递 免邮</span>
			     			<i class="iconfont icon-jiantou1"></i>
			     		</div>
					</div>		     		
		     	</div>
		     	<div class="gmshu gmshutwo clearfloat box-s fl">
					<div class="gcontent clearfloat">
						<p class="fl">发票信息</p>
			     		<div class="you clearfloat fr">
			     			<div class="xuan clearfloat">
			     				<div class="radiotwo" > 
								    <label>
								        <input type="radio" name="fapiao" value="" checked/>
								        <div class="option"></div>
								        <span class="opt-text">需要发票</span>
								    </label>
								</div>
			     			</div>
		    				<div class="xuan clearfloat">
			     				<div class="radiotwo" > 
								    <label>
								        <input type="radio" name="fapiao" value=""/>
								        <div class="option"></div>
								        <span class="opt-text">不需要发票</span>
								    </label>
								</div>
			     			</div>
			     		</div>
					</div>		     		
		     	</div>
		     	<div class="gmshu gmshuthree clearfloat box-s fl">
					<div class="gcontent clearfloat">
						<p class="fl">买家留言</p>
			     		<div class="you clearfloat fl">
			     			<input type="text" name="" id="" value="" class="text" placeholder="选填 对本次交易需求给商家留言" />
			     		</div>
					</div>		     		
		     	</div>
		     	<div class="gmshu clearfloat box-s fl">
					<p class="fr">共1件商品   合计<samp>100000积分</samp></p>	     		
		     	</div>
		     	
	    	</div>
	    </div>	    
	    
		<!--settlement star-->
	    <div class="settlement clearfloat">
	    	<div class="zuo clearfloat fl box-s">
	    		共<span>1</span>件  总积分：<span>100000</span>
	    	</div>
	    	<a href="/WEB-INF/views/before/zhifu.jsp" class="fl db">
	    		提交订单
	    	</a>
	    </div>
	    <!--settlement end-->
	    
		<!--footer star-->
	    <footer class="page-footer fixed-footer" id="footer">
			<ul>
				<li>
					<a href="/WEB-INF/views/before/index.jsp">
						<i class="iconfont icon-shouye"></i>
						<p>首页</p>
					</a>
				</li>
				<li>
					<a href="/WEB-INF/views/before/cation.jsp">
						<i class="iconfont icon-icon04"></i>
						<p>分类</p>
					</a>
				</li>
				<li class="active">
					<a href="/WEB-INF/views/before/shopcar.jsp">
						<i class="iconfont icon-gouwuche"></i>
						<p>购物车</p>
					</a>
				</li>
				<li>
					<a href="/WEB-INF/views/before/center.jsp">
						<i class="iconfont icon-yonghuming"></i>
						<p>我的</p>
					</a>
				</li>
			</ul>
		</footer>
		<!--footer end-->
	</body>
	
</html>
