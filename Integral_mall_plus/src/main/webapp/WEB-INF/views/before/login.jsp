<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0" />
	<title>乐兑商城登录</title>
	<%
		request.setAttribute("path", request.getContextPath());
	%>
	<link rel="shortcut icon" href="${path}/static/before/images/mall.png" type="image/x-icon"/>
	<link rel="stylesheet" type="text/css" href="${path}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
	<script src="${path}/static/before/js/rem.js"></script>
	<script src="${path}/static/before/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script src="${path}/static/background/assets/layer/layer.js" type="text/javascript"></script>


	<style type="text/css">
		html,body {
			height: 100%;
		}
		.box {
			filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#6699FF', endColorstr='#6699FF'); /*  IE */
			background-image:linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
			background-image:-o-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
			background-image:-moz-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
			background-image:-webkit-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
			background-image:-ms-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);

			margin: 0 auto;
			position: relative;
			width: 100%;
			height: 100%;
		}
		.login-box {
			width: 80%;
			max-width:400px;
			height: 300px;
			position: absolute;
			top: 50%;
            margin-right: 10%;
            margin-left: 10%;
			margin-top: -150px;
			/*设置负值，为要定位子盒子的一半高度*/

		}
		@media screen and (min-width:500px){
			.login-box {
				left: 50%;
				/*设置负值，为要定位子盒子的一半宽度*/
				margin-left: -250px;
			}
		}

		.form {
			width: 100%;
			max-width:400px;
			height: 220px;
			margin: 0px auto 0px auto;
			padding-top: 25px;
		}
		.login-content {
			height: 200px;
			width: 100%;
			max-width:400px;
			background-color: rgba(255, 250, 2550, .6);
			float: left;
		}


		.input-group {
			margin: 0px 0px 15px 0px !important;
		}
		.form-control,
		.input-group {
			height: 40px;
		}

		.form-group {
			margin-bottom: 0px !important;
		}
		.login-title {
			padding: 20px 5px;
			background-color: rgba(0, 0, 0, .6);
		}
		.login-title h1 {
			margin-top: 0px !important;
            margin-bottom: 0px !important;
		}
		.login-title small {
			color: #fff;
		}

		.link p {
			line-height: 20px;
			margin-top: 30px;
		}
		.btn-sm {
			padding: 8px 24px !important;
			font-size: 16px !important;
		}
	</style>

</head>

<body>
<div class="box">
	<div class="login-box">
		<div class="login-title text-center" style="padding: 5px;">
			<h1><img src="${path}/static/app/assets/images/logo.png" height="30" alt="logo">&nbsp;<small style="line-height: 30px;">乐兑商城</small></h1>
		</div>
		<div class="login-content ">
			<div class="form">
				<form action="${path}/Before/BeforeLogin" id="loginFrom" method="post" name="loginFrom">
					<div class="form-group">
						<div class="col-xs-12  ">
							<div class="input-group">
								<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
								<input type="text" id="empname" name="username" class="form-control" placeholder="用户名">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-12  ">
							<div class="input-group">
								<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
								<input type="password" id="password" name="password" class="form-control" placeholder="密码">
							</div>
						</div>
					</div>
					<div class="form-group form-actions">
						<div  style="margin-left:35%;">
							<button type="button" id="submit" class="btn btn-sm btn-info"><span class="glyphicon glyphicon-off"></span> 登录</button>
						</div>
					</div>
			<%--		<div class="form-group">
						<div class="col-xs-6 link">
							<p class="text-center remove-margin"><small>忘记密码？</small> <a href="javascript:void(0)" ><small>找回</small></a>
							</p>
						</div>
						<div class="col-xs-6 link">
							<p class="text-center remove-margin"><small>还没注册?</small> <a href="javascript:void(0)" ><small>注册</small></a>
							</p>
						</div>
					</div>--%>
				</form>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
        $("#submit").click(function(){
            var empname =$("#empname").val();
            var password = $("#password").val();
                   $.ajax({
                        url:"${path}/BeforeLogin",
                        data:{ empname:empname, password:password} ,
                        type:"POST",
                        success:function (result){
                            if(result=="s"){
                                layer.msg("该账号已有人登陆",{time: 1500});
							}else if (result=="y"){
                                location.href="${path}/Before/toBeforeIndex";
                            }else if(result=="n") {
                                layer.msg("账号或密码不正确",{time: 1500});
                                setTimeout(function () {
                                    window.location.reload();
                                }, 2000);

                            }
                        }
                    })

        })
</script>
</body>

</html>