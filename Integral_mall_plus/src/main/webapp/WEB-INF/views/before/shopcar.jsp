<!DOCTYPE html>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>购物车</title>
	<%
		request.setAttribute("path", request.getContextPath());
	%>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/shopcar.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/mui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/loading.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/sourse/layer/mobile/need/layer.css">
	<link rel="shortcut icon" href="${path}/static/before/images/mall.png" type="image/x-icon"/>
    <script src="${path}/static/before/js/rem.js"></script>
    <script src="${path}/static/before/js/jquery.min.js" type="text/javascript"></script>
    <script src="${path}/static/before/sourse/layer/mobile/layer.js"></script>
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
	        <h4>购物车</h4>
	    </header>
	    <!--header end-->
	    
	    <div class="warp warptwo clearfloat">
	    	<div class="shopcar clearfloat">
<%int i=0;%>
				<c:forEach items="${shoppingCarList}" var="shoppingCar">
					<%i++;%>
					<div class="list clearfloat fl">
						<div class="xuan clearfloat fl">
							<div class="radio" >
								<label>
									<input type="checkbox" name="sex" value="${shoppingCar.carno}" />
								</label>
							</div>
						</div>
						<a href="javascript:void(0)">
							<div class="tu clearfloat fl">
								<span></span>
								<c:forEach items="${imgList}" var="img">
									<c:if test="${img.imageclassification==3&&img.imagerid==shoppingCar.shoppingcommodityno}">
										<img style="padding: 0px;" src="${img.imagerurl}" />
									</c:if>
								</c:forEach>
							</div>
							<div class="right clearfloat fl">
								<p class="tit over">${shoppingCar.commodityId.commoditytitle}</p>
								<p class="fu-tit over">${shoppingCar.commodityNote}</p>
								<p class=" over"><span class="jifen">${shoppingCar.commodityId.needintegral}</span>积分</p>
								<div class="bottom clearfloat">
									<div class="zuo clearfloat fl">
										<ul>
											<li><img src="${path}/static/before/images/jian.jpg" carno="${shoppingCar.carno}"/></li>
											<li>${shoppingCar.commoditysum}</li>
											<li><img src="${path}/static/before/images/jia.jpg" carno="${shoppingCar.carno}"/></li>
										</ul>
									</div>
									<i class="iconfont icon-lajixiang fr "></i>
									<input type="hidden"  class="carno" value="${shoppingCar.carno}"/>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>
				<%if(i==0){%><div class="xuan clearfloat fl">购物车暂无任何商品</div><%}%>
	    	</div>
	    </div>
	    
	    <!--settlement star-->
	    <div class="settlement clearfloat">
	    	<div class="zuo clearfloat fl box-s">
	    		合计：<span class="hj"></span>
	    	</div>
            <%--href="/toBeforeConfirm"--%>
	    	<a class="fl db">
	    		立即结算
	    	</a>
	    </div>
	    <!--settlement end-->
	    
		<!--footer star-->
		<footer class="page-footer fixed-footer" id="footer">
			<ul>
				<li>
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
				<li class="active">
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
                       url:"${path}/Before/addBeforePay",
                       data:{ count:count} ,
                       type:"POST",
                       success:function (result) {
                           if (result=="y"){
                          		alert("下单成功！");
                               location.href="${path}/Before/toBeforeOrders?id=${empBefore.empno}&status=1";
                           }else if(result=="s"){
                               alert("所选中商品库存不足");
						   }else{
                               alert("下单失败")
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
                $.ajax({
                    url:"${path}/Before/updateBeforeShopCar",
                    data:{ carno:carno, commoditySum:vals.html()} ,
                    type:"post",
                    success:function (result) {
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
                            url:"${path}/Before/deleteBeforeShopCar",
                            data:{ carno:del} ,
                            type:"POST",
                            success:function (result) {
                                if (result=="y"){
                                    location.href="${path}/Before/toBeforeShopcar";
                                }else {
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
		<jsp:include   page="updateEmpType.jsp" flush="true"/>
	</body>

</html>
