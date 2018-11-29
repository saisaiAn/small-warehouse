<!DOCTYPE html>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>订单列表</title>
	<%
		request.setAttribute("path", request.getContextPath());
	%>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/shopcar.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/mui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/css/loading.css"/>
	<link rel="stylesheet" type="text/css" href="${path}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/before/sourse/layer/mobile/need/layer.css">
	<link rel="shortcut icon" href="${path}/static/before/images/mall.png" type="image/x-icon"/>
    <script src="${path}/static/before/js/rem.js"></script>
    <script src="${path}/static/before/js/jquery.min.js" type="text/javascript"></script>
    <script src="${path}/static/before/sourse/layer/mobile/layer.js"></script>
	<script src="${path}/static/background/assets/layer/layer.js" type="text/javascript"></script>
	<script src="${path}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(window).load(function(){
			$(".loading").addClass("loader-chanage")
			$(".loading").fadeOut(300)
		})
	</script>
	<style type="text/css">
		.modal.fade.in{
			top:90px;
		}
	</style>
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
	<body class="bg-info">
		<!--header star-->
		<header class="mui-bar mui-bar-nav" id="header">
			<a class="btn" href="javascript:history.go(-1)">
	            <i class="iconfont icon-fanhui"></i>
	        </a>
	        <h4 id="aaa">订单列表</h4>
	    </header>
	    <!--header end-->
	    
	    <div class="warp warptwo clearfloat">
			<ul class="address-list" style=" width: 100%;">
				<%int i=0;%>
				<c:forEach items="${orderList}" var="order">
					<c:if test="${status==order.orderstatus||status==0}">
						<%i++;%>
				<li style="display: inline-block;margin-top: 6px;padding: 10px; width: 100%;opacity: 0.9;background-color: #fff;" >
					<div style=" width: 100%;">
						<div class="am-share-footer" style="float:left;width:121px;height:121px;padding: 2px;border: #1b6d85 1px solid; margin: 5px; display: inline-block;" >
							<a href="${path}/Before/toBeforeDetail?id=${order.ordercommodityno}">
								<c:forEach items="${imgList}" var="img">
									<c:if test="${img.imageclassification==3&&img.imagerid==order.ordercommodityno}">
										<img  style="width:115px;height:115px;" src="${img.imagerurl}"/>
									</c:if>
								</c:forEach>
							</a>
						</div>
						<div style="float: left;display: inline-block;margin-left: 15px;">
							<h5 style="font-family:Microsoft YaHei;color: #0f0f0f; display: inline-block;">${order.commodityId.commoditytitle}</h5><p class="over" style="font-size: 12px;">订单编号:<span class="text-success" style="font-size: 12px;">${order.orderno}</span>
							<p class=" over" style="font-size: 12px;">积分:<span class="text-success" style="font-size: 12px;">${order.commodityId.needintegral}</span>&nbsp;&nbsp;&nbsp;价格:<span class="text-success" style="font-size: 12px;">${order.commodityId.price}</span></p>
							<p class="text-info">${order.commodityId.commoditydetails}</p>
							<h5 style="font-family:Microsoft YaHei;color: #00be67;">数量：<span style="color: #7b3f25;">${order.ordercommoditysum}</span></h5>
						</div>
					</div>
					<div style="float: left;display: inline-block;width: 100%;" >
						<p>收货人：${order.emp.empname}&nbsp;&nbsp;手机号：${order.emp.empphone}</p><%--1为已提交 2为待领取 3为已领取--%>
						<p class="order-add1">订单总积分：<span style="color: #00c800;">${order.orderintegral}</span>&nbsp;&nbsp;订单状态：<c:if test="${order.orderstatus==1}"><span style="color: #0f0f0f;background-color: #00a0e9;padding: 5px;">已提交</span></c:if><c:if test="${order.orderstatus==2}"><span style="color: #0f0f0f;background-color: #00ee00;padding: 5px;">待领取</span></c:if><c:if test="${order.orderstatus==3}"><span style="color: #0f0f0f; background-color: #00E8D7;padding: 5px;">已领取</span></c:if><c:if test="${order.orderstatus==4}"><span style="color: #0f0f0f; background-color: #d2d2d2;padding: 5px;">已评价</span></c:if></p>
						<hr style="margin-top: 1px;margin-bottom: 1px;" />
						<div class="address-cz" style="margin: 0 auto; display: inline-block;width:200px;padding: 5px;">
							<c:choose>
							<c:when test="${order.orderstatus==3}">
								<button style="display:inline-block;" value="${order.orderno}" class="btn  btn-info btn-sm  modelOpen">评价商品</button>
							</c:when>
							<c:when test="${order.orderstatus==4}">
								<button style="display:inline-block;" value="${order.orderno}" class="btn  btn-info btn-sm  evaluate">查看评价</button>
							</c:when>
							<c:otherwise>
								<button style="display:inline-block;" class="btn btn-info btn-sm editButton">查看兑换码</button>
								<p style="display:none;" class="exchange"><span class="text-success" style="font-size: 12px;">兑换码：</span><input  style="display: inline-block;height: 10px;width: 180px;" readonly type="text" value="${order.orderexchange}"></p>
							</c:otherwise>
							</c:choose>
						</div>
					</div>
				</li>
					</c:if>
					</c:forEach>
				<%if(i==0){%><li>该分类暂无任何订单</li><%}%>
			</ul>
	    </div>
		<div class="modal fade" tabindex="-1" id="evalModal"  role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">当前商品评价</h4>
					</div>
					<div class="modal-body">
						<h5 id="abc"></h5>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<div class="modal fade" id="Modal" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">评价商品</h4>
					</div>
					<div class="modal-body">
						<table>
							<tr><td rowspan="2"><img  style="width:80px;height:80px;" class="imgOrder" src=""/></td><td>&nbsp;&nbsp;</td><td><span class="titleOrder" style="font-family:Microsoft YaHei;color: #0f0f0f; display:inline-block;font-size: 20px; width: 200px;"></span></td></tr>
							<tr><td>&nbsp;&nbsp;</td><td><p class="text-info detailsOrder" style="font-family:Microsoft YaHei;color: #0f0f0f; display: inline-block;"></p></td></tr>
							<tr><td colspan="3"><hr/></td></tr>
							<tr><td colspan="3"><textarea rows="5" cols="8" class="reviewContent"></textarea></td></tr>
						</table>
						<input type="hidden" class="commodity"/>
						<input type="hidden" class="emp"/>
						<input type="hidden" class="Orders"/>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						<button type="button" class="btn btn-primary eval">提交评价</button>
					</div>
				</div>
			</div>
		</div>
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
				<li>
					<a href="${path}/Before/toBeforeShopcar">
						<i class="iconfont icon-gouwuche"></i>
						<p>购物车</p>
					</a>
				</li>
				<li  class="active">
					<a href="${path}/Before/toBeforeCenter">
						<i class="iconfont icon-yonghuming"></i>
						<p>我的</p>
					</a>
				</li>
			</ul>
		</footer>
		<!--footer end-->
		<script type="text/javascript">
            var clickNum = 0;
            $(".evaluate").click(function(){
                    $.ajax({
                        url:"${path}/Before/selectCommodityReviewById",
                        data:{ Order:$(this).val()} ,
                        type:"POST",
                        success:function (result) {
                            $("#abc").html(result.commodityReview.reviewcontent);
                            $("#evalModal").modal('show');
                        }
                    })
            })
            $(".eval").click(function(){
                if($(".reviewContent").val().length>0){
                    $.ajax({
                        url:"${path}/Before/addCommodityReview",
                        data:{ ReviewContent:$(".reviewContent").val(),CommodityNo:$(".commodity").val(),EmpNo:$(".emp").val(),Orders:$(".Orders").val()} ,
                        type:"POST",
                        success:function (result) {
                            if (result.status>0){
                                layer.msg("评价成功！", {time: 1500});
                                setTimeout(function(){
                                    $('#Modal').modal('hide');
                                    window.location.reload();
                                },1000);
							} else{
                                layer.msg("评价失败，状态未知！", {time: 1500});
							}
                        }
                    })
				}else {
                    layer.msg("无法提交空内容", {time: 1500});
				}
			})
            $(".modelOpen").click(function(){
                $.ajax({
                    url:"${path}/Before/selectOrdersById",
                    data:{ id:$(this).val()} ,
                    type:"POST",
                    success:function (result) {
                       $(".titleOrder").html(result.Order.commodityId.commoditytitle);
                        $(".detailsOrder").html(result.Order.commodityId.commoditydetails);
                        $(".imgOrder").attr("src",result.imager.imagerurl);
                        $(".commodity").val(result.Order.commodityId.commodityno);
                        $(".emp").val(result.Order.emp.empno);
                        $(".Orders").val(result.Order.orderno);
                        $('#Modal').modal('show');
                    }
				})

			})
			$(".editButton").click(function () {
                if(clickNum == 0){
                    $(this).next(".exchange").css("display","inline-block");
                    $(this).html("隐藏兑换码");
                    clickNum = 1;
                    return false;
                }else{
                    $(this).next(".exchange").css("display","none");
                    $(this).html("查看兑换码");
                    clickNum = 0;
                    return false;
                };
            })
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
                               layer.msg("下单成功！", {time: 1500});
                               location.href="${path}/Before/toBeforeShopcar";
                           }
                       }
                   })
               }else{
                   layer.msg("用户积分不足！", {time: 1500});
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
                        layer.msg(result, {time: 1500});
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
                                    layer.msg("删除成功", {time: 1500});
                                    location.href="${path}/Before/toBeforeShopcar";
                                }else {
                                    layer.msg("删除失败", {time: 1500});
                                    window.location.reload();
                                }
                            }
                        })
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
