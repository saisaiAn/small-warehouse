<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>确认支付</title>
    <link rel="stylesheet" type="text/css" href="/static/before/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/zhifu.css"/>
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
		$(function(){
		//计算内容上下padding
			reContPadding({main:"#main",header:"#header",footer:"#footer"});
			function reContPadding(o){
				var main = o.main || "#main",
					header = o.header || null,
					footer = o.footer || null;
				var cont_pt = $(header).outerHeight(true),
					cont_pb = $(footer).outerHeight(true);
				$(main).css({paddingTop:cont_pt,paddingBottom:cont_pb});
			}
		});
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
		<header class="mui-bar mui-bar-nav report-header box-s" id="header">
			<a href="javascript:history.go(-1)"><i class="iconfont icon-fanhui fl"></i></a>
			<p>确认支付</p>
	    </header>
	    <div id="main" class="mui-clearfix contaniner sorder">	    	
	    	<div class="warning clearfloat box-s">
    			提示：请在24小时内完成在线支付，逾期将视为订单无效
    		</div>
    		<div class="odernum clearfloat">
    			<ul>
    				<li>您的订单号：1298451221</li>
    				<li>应付积分：<span>10000</span></li>
    			</ul>
    		</div>
    		<div class="pay-method clearfloat">
    			<ul>
    				<li>
    					<div style="height: 1rem">
    						
	    					<label>请输入支付密码：3333</label>
	    					<input type="password" name="password">
    					</div>
    				</li>
    			</ul>
    		</div>

	    	<a href="#" class="address-add fl">
	     		确认支付
	     	</a>
	    </div>
	    
	</body>
</html>
