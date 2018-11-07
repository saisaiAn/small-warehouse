<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="/static/background/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="/static/background/css/style.css"/>
        <link href="/static/background/assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="/static/background/assets/css/ace.min.css" />
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="/static/background/assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="/static/background/js/jquery-1.9.1.min.js"></script>
        <script src="/static/background/assets/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="/static/background/js/H-ui.js"></script>
		<script src="/static/background/assets/js/typeahead-bs2.min.js"></script>
		<script src="/static/background/assets/js/jquery.dataTables.min.js"></script>
		<script src="/static/background/assets/js/jquery.dataTables.bootstrap.js"></script>
        <script src="/static/background/assets/layer/layer.js" type="text/javascript" ></script>
        <script src="/static/background/assets/laydate/laydate.js" type="text/javascript"></script>
        <script src="/static/background/assets/js/jquery.easy-pie-chart.min.js"></script>
        <script src="/static/background/js/lrtk.js" type="text/javascript" ></script>
<title>订单管理</title>
</head>

<body>
<div class="margin clearfix">
 <div class="cover_style" id="cover_style">
    <!--内容-->
   <div class="centent_style" id="centent_style">
     <div id="covar_list" class="order_list">

     <!--左侧样式-->
     <div class="search_style">

      <ul class="search_content clearfix">
          <form action="findOrderById" method="post">
               <li><label class="l_f">订单编号</label><input name="OrderId" type="text" class="text_add" placeholder="订单编号" style=" width:250px"></li>
               <li style="width:90px;"><button type="submit" class="btn_search"><i class="fa fa-search"></i>查询</button></li>
          </form>
      </ul>
    </div>
      <!--订单列表展示-->
       <table class="table table-striped table-bordered table-hover" id="sample-table">
		<thead>
		 <tr>
				<th width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th width="120px">订单编号</th>
				<th width="130px">订单所用积分</th>
				<th width="100px">订单商品</th>
				<th width="150px">订单生成时间</th>
                <th width="100px">订单状态</th>
				<th width="180px">下单人</th>
                <th width="80px">购买商品数量</th>
				<th width="200px">操作</th>
			</tr>
		</thead>
	<tbody>
        <c:forEach items="${order}" var="o">
            <tr>
                <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
                <td>${o.orderno}</td>
                <td >${o.orderintegral}</td>
                <td>${o.commodityId.commoditytitle}</td>
                <td>
                    <fmt:formatDate value="${o.ordertime}" pattern="yyyy-MM-dd"/>
                </td>
                <c:if test="${o.orderstatus == 1}">
                    <td style="color: #3f913f">已提交</td>
                </c:if>
                <c:if test="${o.orderstatus == 2}">
                    <td style="color: #a069c3">待领取</td>
                </c:if>
                <c:if test="${o.orderstatus == 3}">
                    <td style="color: red">已领取</td>
                </c:if>
                <td>${o.emp.empname}</td>
                <td>${o.ordercommoditysum}</td>
                <td>
                    <a href="javascript:ovid()" class="modify_state" style="color: darkorange" orderid="${o.orderno}" title="处理意见请求">修改状态</a>
                    <c:if test="${o.orderstatus == 2}">
                        <a href="javascript:ovid()" class="exchange" style="color: red"  title="处理意见请求">兑换</a>
                    </c:if>
                </td>
            </tr>
        </c:forEach>
     </tbody>
     </table>
     </div>
   </div>
 </div>
</div>
</div>



<!--兑换模态框-->
<div class="add_menber" id="update_menber_style" style="display:none">
    <ul class=" page-content">
            <li><label class="label_name" >兑&nbsp;&nbsp;换 &nbsp;码：</label>
                <span class="add_name" style="margin-left: 70px;margin-top: -30px;">
                    <input value="" id="Redeem_Code" type="text"  class="text_add"/>
                </span>
            </li>
            <button type="button" class="btn btn-success sub_Redeem_Code" style="margin-left: 25px;margin-top: 6px;">提交</button>
            <br/>
            <br/>
    </ul>
</div>
 <!--发货-->
<script type="text/javascript">
    $(function () {
        $(".modify_state").click(function () {
            if(confirm("确定修改此订单状态？")){
                var id = $(this).attr("orderid");
                $.ajax({
                    url:"modify_state",
                    type:"post",
                    data:{oid:id},
                    success:function (result) {
                        if(id=="y"){
                            layer.msg("修改成功");
                            setTimeout(function () {
                                location.href="Orderform_html";
                            },1000)
                        }else {
                            layer.msg("修改成功");
                            setTimeout(function () {
                                location.href="Orderform_html";
                            },1000)
                        }
                    }
                })
            }
        })
        $(".exchange").click(function () {
            layer.open({
                type: 1,
                title: '兑换商品',
                maxmin: true,
                shadeClose: true, //点击遮罩关闭层
                area : ['500px' , ''],
                content:$('#update_menber_style'),
            });

        })
        $(".sub_Redeem_Code").click(function () {
            var RedeemCode = $("#Redeem_Code").val();
            $.ajax({
                url:"Exchange_of_goods",
                type:"post",
                data:{RedeemCode:RedeemCode},
                success:function (res) {
                    if(res=="y"){
                        layer.msg("兑换成功");
                        setTimeout(function () {
                            location.href="Orderform_html";
                        },1000);
                    }else{
                        layer.msg("兑换失败");
                        setTimeout(function () {
                            location.href="Orderform_html";
                        },1000);
                    }
                }

            })

        })

    })
</script>
</body>
</html>
<script>
 $(function() {
	$("#cover_style").fix({
		float : 'top',
		minStatue : false,
		skin : 'green',
		durationTime :false,
		window_height:30,//设置浏览器与div的高度值差
		spacingw:0,//
		spacingh:0,//
		close_btn:'.yingchan_btn',
		show_btn:'.xianshi_btn',
		side_list:'.hide_style',
		widgetbox:'.top_style',
		close_btn_width:60,
		da_height:'#centent_style,.left_Treeview,.list_right_style',
		side_title:'.b_n_btn',
		content:null,
		left_css:'.left_Treeview,.list_right_style'


	});
});

//面包屑返回值
var index = parent.layer.getFrameIndex(window.name);
parent.layer.iframeAuto(index);
$('.Order_form,.order_detailed').on('click', function(){
	var cname = $(this).attr("title");
	var chref = $(this).attr("href");
	var cnames = parent.$('.Current_page').html();
	var herf = parent.$("#iframe").attr("src");
    parent.$('#parentIframe').html(cname);
    parent.$('#iframe').attr("src",chref).ready();;
	parent.$('#parentIframe').css("display","inline-block");
	parent.$('.Current_page').attr({"name":herf,"href":"javascript:void(0)"}).css({"color":"#4c8fbd","cursor":"pointer"});
	//parent.$('.Current_page').html("<a href='javascript:void(0)' name="+herf+" class='iframeurl'>" + cnames + "</a>");
    parent.layer.close(index);

});

//初始化宽度、高度
  var heights=$(".top_style").outerHeight()+47;
 $(".centent_style").height($(window).height()-heights);
 $(".page_right_style").width($(window).width()-220);
 $(".left_Treeview,.list_right_style").height($(window).height()-heights-2);
 $(".list_right_style").width($(window).width()-250);
  //当文档窗口发生改变时 触发
    $(window).resize(function(){
	$(".centent_style").height($(window).height()-heights);
	 $(".page_right_style").width($(window).width()-220);
	 $(".left_Treeview,.list_right_style").height($(window).height()-heights-2);
	 $(".list_right_style").width($(window).width()-250);
	})
//比例
var oldie = /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase());
			$('.easy-pie-chart.percentage').each(function(){
				$(this).easyPieChart({
					barColor: $(this).data('color'),
					trackColor: '#EEEEEE',
					scaleColor: false,
					lineCap: 'butt',
					lineWidth: 10,
					animate: oldie ? false : 1000,
					size:103
				}).css('color', $(this).data('color'));
			});

			$('[data-rel=tooltip]').tooltip();
			$('[data-rel=popover]').popover({html:true});
</script>
<script>
//订单列表
jQuery(function($) {
		var oTable1 = $('#sample-table').dataTable( {
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,1,2,3,4,5,6,7,8,9]}// 制定列不参与排序
		] } );


				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});

				});



			});
</script>