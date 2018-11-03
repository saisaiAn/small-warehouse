<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0" />
	<title>积分商城登录</title>

	<link rel="stylesheet" type="text/css" href="/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" />

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
			width: 100%;
			max-width:500px;
			height: 400px;
			position: absolute;
			top: 50%;

			margin-top: -200px;
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
			max-width:500px;
			height: 275px;
			margin: 25px auto 0px auto;
			padding-top: 25px;
		}
		.login-content {
			height: 300px;
			width: 100%;
			max-width:500px;
			background-color: rgba(255, 250, 2550, .6);
			float: left;
		}


		.input-group {
			margin: 0px 0px 30px 0px !important;
		}
		.form-control,
		.input-group {
			height: 40px;
		}

		.form-group {
			margin-bottom: 0px !important;
		}
		.login-title {
			padding: 20px 10px;
			background-color: rgba(0, 0, 0, .6);
		}
		.login-title h1 {
			margin-top: 10px !important;
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
	<div class="login-box" >
		<div class="login-title text-center">
			<h1><small>登录</small></h1>
		</div>
		<div class="login-content ">
			<div class="form">
				<form action="/Before/BeforeLogin" id="loginFrom" method="post" name="loginFrom">
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
						<div class="col-xs-4 col-xs-offset-4 ">
							<button type="button" id="submit" class="btn btn-sm btn-info"><span class="glyphicon glyphicon-off"></span> 登录</button>
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-6 link">
							<p class="text-center remove-margin"><small>忘记密码？</small> <a href="javascript:void(0)" ><small>找回</small></a>
							</p>
						</div>
						<div class="col-xs-6 link">
							<p class="text-center remove-margin"><small>还没注册?</small> <a href="javascript:void(0)" ><small>注册</small></a>
							</p>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<div style="text-align:center;">
	<p>来源：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div>
<script type="text/javascript" src="/static/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
    $(function(){
        $("#submit").click(function(){
            var empname =$("#empname").val();
            var password = $("#password").val();
            if (empname!=null&&empname.length >=6){
                   $.ajax({
                        url:"/BeforeLogin",
                        data:{ empname:empname, password:password} ,
                        type:"POST",
                        success:function (result) {
                            if (result=="y"){
                                location.href="/Before/toBeforeIndex";
                            }else {
                                alert("账号或密码不正确");
                                window.location.reload();
                            }
                        }
                    })
            }else{
                alert("请填写大于或等于6位的用户名");
            }
        })
    })
</script>
</body>

</html>