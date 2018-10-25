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
	<body>
		<!--header star-->
		<header class="mui-bar mui-bar-nav" id="header">
			<a class="btn" href="javascript:history.go(-1)">
	            <i class="iconfont icon-fanhui"></i>
	        </a>
	        <h4>订单列表</h4>
	    </header>
	    <!--header end-->
	    
	    <div class="warp warptwo clearfloat">
			<ul class="address-list">
				<c:forEach items="${orderList}" var="order">
				<li style="display: inline-block;margin: 6px 11px;border-radius: 10px;" class="bg-info">
					<div class="am-share-footer" style="float:left;width:156px;height:156px;padding: 2px;border: #1b6d85 1px solid; margin: 5px; display: inline-block;" >
							<c:forEach items="${imgList}" var="img">
								<c:if test="${img.imageclassification==3&&img.imagerid==order.ordercommodityno}">
									<img  style="width:150px;height:150px;" src="${img.imagerurl}"/>
								</c:if>
							</c:forEach>
					</div>
					<div style="float: left;display: inline-block;">
						<h4 class="text-success">${order.commodityId.commoditytitle}</h4>
					</div>
					<div style="float: left;display: inline-block;">
						<p>收货人：${order.emp.empname}&nbsp;&nbsp;${order.emp.empphone}</p>
						<p class="order-add1">收货地址：湖南省长沙市高新区拓基城市广场金座A2002</p>
						<hr />
						<div class="address-cz">
							<a href="" class="editButton"><img src="/static/before/images/bj.png" width="18" />&nbsp;编辑</a>
							<a href="" class="deleteButton">删除</a>
						</div>
					</div>

				</li>
					</c:forEach>
			</ul>
					<%--<div class="list clearfloat fl">
						<div class="xuan clearfloat fl">
							<div class="radio" >
								<label>
									<input type="checkbox" name="sex" value="${order.orderno}" />
								</label>
							</div>
						</div>
						<a href="javascript:void(0)">

							<div class="right clearfloat fl">
								<p class="tit over">${order.commodityId.commoditytitle}</p>
								<p class="fu-tit over">${order.orderintegral}</p>
								<p class=" over"><span class="jifen">${order.commodityId.needintegral}</span>积分</p>
								<div class="bottom clearfloat">
									<i class="iconfont icon-lajixiang fr "></i>
									<input type="hidden"  class="carno" value="${order.orderno}"/>
								</div>
							</div>
						</a>
					</div>--%>
	    </div>
	    
	    <%--<!--settlement star-->
	    <div class="settlement clearfloat">
	    	<div class="zuo clearfloat fl box-s">
	    		合计：<span class="hj"></span>
	    	</div>
            &lt;%&ndash;href="/toBeforeConfirm"&ndash;%&gt;
	    	<a class="fl db">
	    		立即结算
	    	</a>
	    </div>--%>
	    <!--settlement end-->
	    
		<!--footer star-->
		<footer class="page-footer fixed-footer" id="footer">
			<ul>
				<li class="active">
					<a href="/toBeforeIndex">
						<i class="iconfont icon-shouye"></i>
						<p>首页</p>
					</a>
				</li>
				<li>
					<a href="/toBeforeCation">
						<i class="iconfont icon-icon04"></i>
						<p>分类</p>
					</a>
				</li>
				<li>
					<a href="/toBeforeShopcar">
						<i class="iconfont icon-gouwuche"></i>
						<p>购物车</p>
					</a>
				</li>
				<li>
					<a href="/toBeforeCenter">
						<i class="iconfont icon-yonghuming"></i>
						<p>我的</p>
					</a>
				</li>
			</ul>
		</footer>
		<!--footer end-->
		<script type="text/javascript">
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
                       url:"/addBeforePay",
                       data:{ count:count} ,
                       type:"POST",
                       success:function (result) {
                           if (result=="y"){
                          		alert("下单成功！");
                               location.href="/toBeforeShopcar";
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
                    url:"/updateBeforeShopCar",
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
                            url:"/deleteBeforeShopCar",
                            data:{ carno:del} ,
                            type:"POST",
                            success:function (result) {
                                if (result=="y"){
                                    alert("删除成功");
                                    location.href="/toBeforeShopcar";
                                }else {
                                    alert("删除失败");
                                    window.location.reload();
                                }
                            }
                        })
	                    // $(self).parent().parent().parent().parent().remove();
	                    // layer.closeAll();
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
		
	</body>

</html>
