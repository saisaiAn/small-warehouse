<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%
	request.setAttribute("path", request.getContextPath());
%>
<html>
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<!--[if lt IE 9]>
	<script type="text/javascript" src="${path}/static/background/js/html5.js"></script>
	<script type="text/javascript" src="${path}/static/background/js/respond.min.js"></script>
	<script type="text/javascript" src="${path}/static/background/js/PIE_IE678.js"></script>
	<![endif]-->
	<link href="${path}/static/background/assets/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="${path}/static/background/css/style.css"/>
	<link href="${path}/static/background/assets/css/codemirror.css" rel="stylesheet">
	<link rel="stylesheet" href="${path}/static/background/assets/css/ace.min.css" />
	<%--<link rel="stylesheet" href="Widget/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">--%>
	<link rel="stylesheet" href="${path}/static/background/assets/css/font-awesome.min.css" />
	<!--[if IE 7]><!---->
	<link rel="stylesheet" href="${path}/static/background/assets/css/font-awesome-ie7.min.css" />
	<![endif]-->
<%--	<link href="Widget/icheck/icheck.css" rel="stylesheet" type="text/css" />
	<link href="Widget/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />--%>

	<title>新增图片</title>
</head>
<body>
<div class="clearfix" id="add_picture">
	<div id="scrollsidebar" class="left_Treeview">
		<div class="show_btn" id="rightArrow"><span></span></div>
		<div class="widget-box side_content" >
			<div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div>
			<div class="side_list">
				<div class="widget-header header-color-green2">
					<h4 class="lighter smaller">选择产品类型</h4>
				</div>
				<div class="widget-body">
					<div class="widget-main padding-8">
						<div  id="treeDemo" class="ztree"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="page_right_style">
		<div class="type_title">添加商品</div>
		<form action="${path}/product/add_Product" enctype="multipart/form-data"  method="post" class="form form-horizontal" id="form-article-add" name="proform">
			<div class="clearfix cl">
				<label class="form-label col-2"><span class="c-red">*</span>商品标题：</label>
				<div class="formControls col-10"><input type="text" class="input-text" value="" placeholder="" id="commoditytitle"  name="commoditytitle"></div>
			</div>
			<div class=" clearfix cl" style="width: 100%;">

				<div class="Add_p_s">
					<label class="form-label col-2">商品价格：</label>
					<div class="formControls col-2"><input type="text" class="input-text" value="" placeholder="" id="price" name="price"></div>
				</div>
				<div class="Add_p_s">
					<label class="form-label col-2">商品所需积分：</label>
					<div class="formControls col-2"><input type="text" class="input-text" value="" placeholder="" id="needintegral"  name="needintegral"></div>
				</div>
				<div class="Add_p_s">
					<label class="form-label col-2">商品库存：</label>
					<div class="formControls col-2"><input type="text" class="input-text" value="" placeholder="" id="commodityinventory"  name="commodityinventory"></div>
				</div>
				<div class="Add_p_s">
					<label class="form-label col-2">商品分类：</label>
					<div class="formControls col-2">
						<select class="form-control" name="commoditytypeno" id="commoditytypeno">
							<option value="0">---请选择---</option>
							<c:forEach items="${proType}" var="ptype">
								<option value="${ptype.commoditytypeno}">${ptype.commoditytypename}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="Add_p_s">
					<label class="form-label col-2">可扩展：</label>
					<%--<div class="formControls col-2"><input type="text" class="input-text" value="" placeholder="" name="" >kg</div>--%>
				</div>
				<div class="Add_p_s">
					<label class="form-label col-2">可扩展：</label>
					<div class="formControls col-2"><span class="select-box">
				<%--<select class="select">
					<option>请选择</option>
					<option value="1">件</option>
					<option value="2">斤</option>
					<option value="3">KG</option>
					<option value="4">吨</option>
					<option value="5">套</option>
				</select>--%>
				</span></div>
				</div>
				<div class="Add_p_s">
					<label class="form-label col-2">可扩展：</label>
					<%--<div class="formControls col-2"><input type="text" class="input-text" value="" placeholder="" Fname="" >元</div>--%>
				</div>
				<div class="Add_p_s">
					<label class="form-label col-2">可扩展：</label>
					<%--<div class="formControls col-2"><input type="text" class="input-text" value="" placeholder=""  name="" >元</div>--%>
				</div>


			</div>

			<div class="clearfix cl">
				<label class="form-label col-2">商品详情：</label>
				<div class="formControls col-10">
					<textarea name="commoditydetails" id="commoditydetails" cols="" rows="" class="textarea"  placeholder="说点什么...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="备注不能为空！" onKeyUp="textarealength(this,200)"></textarea>
					<p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
				</div>
			</div>
			<div class="btn btn-info btn-sm">
				图片上传
				<input type="file" class="btn btn-info btn-sm" name="img" id="proimg" style="opacity: 0"/>
			</div>

			<input type="button" class="btn btn-warning btn-sm submitForm" value="开始上传 "/>
		</form>
			</div>
			</div>
			</div>
        <script src="${path}/static/background/js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript">
			$(function () {
				$(".submitForm").click(function () {
					if(confirm("确认开始上传?")){
                        var commoditytitle = $("#commoditytitle").val();
                        var price = $("#price").val();
                        var needintegral = $("#needintegral").val();
                        var commodityinventory = $("#commodityinventory").val();
                        var commoditytypeno = $("#commoditytypeno").val();
                        var commoditydetails = $("#commoditydetails").val();
                        var proimg = $("#proimg").val();
                        if(commoditytitle==""||price==""||needintegral==""||commodityinventory==""||commoditytypeno==0||commoditydetails==""||proimg==""){
							alert("请填写完整所有内容");
						}else if(isNaN(price)||isNaN(needintegral)||isNaN(commodityinventory)){
							alert("请填写正确的内容");
						}else{
                            proform.submit();
						}
					}
                })


            })
		</script>
</body>
</html>