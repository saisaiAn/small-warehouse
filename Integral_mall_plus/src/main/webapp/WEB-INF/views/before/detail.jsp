<!DOCTYPE html>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>详情页</title>
    <link rel="stylesheet" type="text/css" href="/static/before/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/detail.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/mui.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/before/css/loading.css"/>
    <link rel="stylesheet" href="/static/before/css/swiper.min.css">
    <script src="/static/before/js/rem.js"></script>
    <script src="/static/before/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="/static/before/js/others.js"></script>
	<script src="/static/before/js/swiper.jquery.min.js"></script>
	<script type="text/javascript">
		$(window).load(function(){
			$(".loading").addClass("loader-chanage")
			$(".loading").fadeOut(300)
            $.ajax({
                url:"/Before/BeforeCeHui",
                data:{},
                type:"POST",
                success:function (result) {}
            })
		})
        window.onbeforeunload = function() {
            $.ajax({
                url:"/Before/BeforeXiaoHui",
                data:{},
                type:"POST",
                success:function (result) {}
            })
        };
		function toshare(){
			$(".am-share").addClass("am-modal-active");	
			if($(".sharebg").length>0){
				$(".sharebg").addClass("sharebg-active");
			}else{
				$("body").append('<div class="sharebg"></div>');
				$(".sharebg").addClass("sharebg-active");
			}
			$(".sharebg-active,.share_btn").click(function(){
				$(".am-share").removeClass("am-modal-active");	
				setTimeout(function(){
					$(".sharebg-active").removeClass("sharebg-active");	
					$(".sharebg").remove();	
				},300);
			})
		}
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
	        <h4>商品详情</h4>
	    </header>
		<!--header end-->
		
		<div class="warp warptwo clearfloat">
			<div class="detail clearfloat">
				<!--banner star-->
				<div class="banner swiper-container">
		            <div class="swiper-wrapper">
		                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="images/xj3.jpg" alt=""></a></div>
		                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="images/xj3.jpg" alt=""></a></div>
		                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="images/xj3.jpg" alt=""></a></div>
		                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="images/xj3.jpg" alt=""></a></div>
		            </div>
		            <div class="swiper-pagination"></div>
		        </div>
				<!--banner end-->
				<div class="top clearfloat box-s">
					<c:forEach items="${imgList}" var="img">
						<c:if test="${img.imageclassification==3&&img.imagerid==commodity.commodityno}">
							<img src="${img.imagerurl}" style="float: left; margin-bottom: 30px;"/>
						</c:if>
					</c:forEach>
					<div class="shang clearfloat">
						<div class="zuo clearfloat fl over2 box-s">
							<span style="font-size: 18px;">${commodity.commoditytitle}</span>
						</div>
						<div class="you clearfloat fr">
							<i class="iconfont icon-fenxiang"></i>
							<p>分享</p>
						</div>
					</div>
					<div class="xia clearfloat">

						<p class="jifen fl box-s"><samp style="font-weight: bold;">${commodity.needintegral}</samp>积分</p>
						<span class="fr">库存<span class="kc" style="display: inline;">${commodity.commodityinventory}</span> 件</span>
					</div>
				</div>
				<div class="middle clearfloat box-s">
					<a href="#">
						<span class="fl">商品详情</span>
					</a>
				</div>
				<div class="middle clearfloat box-s">
					<a href="#">
						<span style="font-size: 13px;">${commodity.commoditydetails}</span>
					</a>
				</div>
			</div>
		</div>
		
		<!--footerone star-->
		<div class="footerone clearfloat">
			<div class="left clearfloat fl">
				<ul>
					<li style="display: flex;justify-content: center; align-items: center;padding-top: 0;">
						<div>
							<a href="#">
								<i class="iconfont icon-shangcheng"></i>
								<p>商城</p>
							</a>
						</div>
					</li>
					<li style="display: flex;justify-content: center; align-items: center;padding-top: 0;">
						<div>
							<a href="#">
								<i class="iconfont icon-kefu1"></i>
								<p>客服</p>
							</a>
						</div>
					</li>				
				</ul>
			</div>
			<div class="right clearfloat fl">
				<span class="btn fl" onClick="toshare()">加入购物车</span>
				<a class="btn btnone fl" id="Pay">立即购买</a>
			</div>
		</div>
		<!--footerone end-->
		<script>
			$(function(){
                $("#Pay").click(function(){
                    if (confirm("您确认购买当前商品吗？")){
                    if (${commodity.needintegral}<${empBefore.integralId.remainingpoints}){
                        $.ajax({
                            url:"/Before/addBeforePayByCommodity",
                            data:{ count:${commodity.commodityno}} ,
                            type:"POST",
                            success:function (result) {
                                if (result=="y"){
                                    alert("下单成功！");
                                    location.href="/Before/toBeforeOrders?id=${empBefore.empno}&status=1";
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
                }
					});

			})
		</script>
		<!--弹出购物车内容-->
		<div class="am-share">
            <form action="" id="carForm" method="post">
		    <div class="am-share-footer">
		        <button class="share_btn">
					<c:forEach items="${imgList}" var="img">
						<c:if test="${img.imageclassification==3&&img.imagerid==commodity.commodityno}">
							<img src="${img.imagerurl}" />
						</c:if>
					</c:forEach>
				</button>
		    </div>
		    <div class="am-share-sns box-s">
		        <div class="sdetail clearfloat">
		            <div class="top clearfloat">
		                <div class="tu clearfloat fl">
		                    <span></span>
							<c:forEach items="${imgList}" var="img">
								<c:if test="${img.imageclassification==3&&img.imagerid==commodity.commodityno}">
									<img src="${img.imagerurl}" />
								</c:if>
							</c:forEach>
		                </div>
		                <div class="you clearfloat fl">
		                    <p class="tit">${commodity.commoditytitle}</p>
		                    <span>${commodity.needintegral}积分</span>
		                </div>
		            </div>
		            <div class="middle clearfloat">
		                <p>颜色分类</p>
		                <div class="xia clearfloat">
		                    <ul>
		                        <li class="ra3 cur">蓝色</li>
		                        <li class="ra3">白色</li>
		                    </ul>
		                </div>
		            </div>
		            <div class="middle clearfloat">
		                <p>机身内存</p>
		                <div class="xia clearfloat">
		                    <ul>
		                        <li class="ra3 cur">120G</li>
		                        <li class="ra3">60G</li>
		                    </ul>
		                </div>
		            </div>
		            <div class="bottom clearfloat">
		                <p class="fl">购买数量</p>
		                <div class="you clearfloat fr">
		                    <ul>
		                        <li id="down"><img src="/static/before/images/jian.jpg" /></li>
		                        <li id="count">1</li>
		                        <li id="up"><img src="/static/before/images/jia.jpg" /></li>
		                    </ul>
		                </div>
		            </div>
		        </div>
		    </div>
                <input type="hidden" id="sum" name="commoditysum"/>
                <input type="hidden" id="commodityId" name="shoppingcommodityno" value="${commodity.commodityno}" />
                <input type="hidden" id="commodityNote" name="commodityNote"/>
                <input type="hidden" id="shoppingempno" name="shoppingempno" value="${empBefore.empno}"/>
                <span id="sub" class="shop-btn db">确定</span>
            </form>
		</div>
        <script type="text/javascript">
            $(function(){
                $("#sub").click(function(){
                    $("#sum").val($("#count").html());
                    $("#commodityNote").val(result);
                        var result='';
                        $(".cur").each(function(){
                            result=result+ $(this).html()+',';
                        });
                        $("#commodityNote").val(result);
                        $("#sum").val($("#count").html());
                        if($(".kc").html>$("#count").html()){
                            $("#carForm").attr("action","/Before/addBeforeShopping");
                            $("#carForm").submit();
                        }else{
                            alert("库存不足");
                        }
                });
            })
        </script>
		<script type="text/javascript">
			$(function(){
                var count = $("#count");
                var sum=$("#sum");
                $("#down").click(function(){
					var a=count.html();
                    if(count.html() > 1){
                        count.html(a-1);
                    }else{
                        count.html(1);
                    }
				})
				$('#up').click(function(){
                        var a=parseInt(count.html())+1;
                    	count.html(a);
				})
                    $(".middle .xia li").click(function() {
                        $(this).addClass('cur').siblings().removeClass('cur');
                    });

			})
		</script>

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
		<%--<jsp:include   page="updateEmpType.jsp" flush="true"/>--%>
	</body>
	
</html>
