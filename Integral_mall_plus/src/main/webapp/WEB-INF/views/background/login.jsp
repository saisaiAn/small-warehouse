<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%
	request.setAttribute("path", request.getContextPath());
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="shortcut icon" href="${path}/static/background/images/logotitle.png" />
		<link href="${path}/static/background/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${path}/static/background/assets/css/font-awesome.min.css" />
		<!--[if IE 7]><!---->
		  <link rel="stylesheet" href="${path}/static/background/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="${path}/static/background/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${path}/static/background/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${path}/static/background/assets/css/ace-skins.min.css" />
        <link rel="stylesheet" href="${path}/static/background/css/style.css"/>
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="${path}/static/background/assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="${path}/static/background/assets/js/ace-extra.min.js"></script>
		<!--[if lt IE 9]>
		<script src="${path}/static/background/assets/js/html5shiv.js"></script>
		<script src="${path}/static/background/assets/js/respond.min.js"></script>
		<![endif]-->
		<script src="${path}/static/background/js/jquery-1.9.1.min.js"></script>
        <script src="${path}/static/background/assets/layer/layer.js" type="text/javascript"></script>
<title>登录</title>
</head>

<body class="login-layout Reg_log_style">
<div class="logintop">    
    <span><img src="${path}/static/app/assets/images/logo.png" height="30" alt="logo">&nbsp;欢迎登录乐兑后台管理平台</span>
    <ul>
    <li><a href="#">返回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    <div class="loginbody">
<div class="login-container">
	<div class="center">
	     <%--<img src="${path}/static/background/images/" />--%>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box widget-box no-border visible" style="height: 380px;margin-top: 150px;">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="icon-coffee green"></i>
												管理员登录
											</h4>

											<div class="login_icon"><img src="${path}/static/background/images/login.png" /></div>

											<form   method="post" name="table">
												<fieldset>
										<ul>
   <li class="frame_style form_error"><label class="user_icon"></label><input name="用户名" type="text"  id="username"/><i>用户名</i></li>
   <li class="frame_style form_error"><label class="password_icon"></label><input name="密码" type="password"   id="userpwd"/><i>密码</i></li>
  <%-- <li class="frame_style form_error"><label class="Codes_icon"></label><input name="验证码" type="text"   id="Codes_text"/><i>验证码</i><div class="Codes_region"></div></li>--%>
   
  </ul>
													<div class="space"></div>

													<div class="clearfix">
														<%--<label class="inline">
															<input type="checkbox" class="ace">
															<span class="lbl">保存密码</span>
														</label>--%>

														<button type="button" class="width-35 pull-right btn btn-sm btn-primary" id="login_btn">
															<i class="icon-key"></i>
															登录
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

											<div class="social-or-login center">
												<span class="bigger-110">通知</span>
											</div>

											<div class="social-login center">
											本网站系统不再对IE8以下浏览器支持，请见谅。
											</div>
										</div><!-- /widget-main -->

										<div class="toolbar clearfix">
											

											
										</div>
									</div><!-- /widget-body -->
								</div><!-- /login-box -->
							</div><!-- /position-relative -->
						</div>
                        </div>

</body>
</html>

<script language="JavaScript">

    if (window != top)

        top.location.href = location.href;

</script>

<script >

/*$('#login_btn').on('click', function(){
	     var num=0;
		 var str="";
     $("input[type$='text'],input[type$='password']").each(function(n){
          if($(this).val()=="")
          {
               
			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                title: '提示框',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
		  if(num>0){  return false;}	 	
          else{
			  layer.alert('登录成功！',{
               title: '提示框',				
			   icon:1,		
			  });
	          location.href="index.html";
			   layer.close(index);	
		  }		  		     						
		
	});*/
  $(document).ready(function(){
      $("#login_btn").click(function () {
          var $username = $("#username").val();
          var $pwd = $("#userpwd").val();
         /* alert($username);
          alert($pwd);*/
          if($username =="" ||$pwd ==""){
              layer.alert('用户名或者密码不能为空！',{
                  title: '提示框',
                  icon:1,
              });
          }else{
            $.ajax({
                url:"login",
                data:{username:$username,pwd:$pwd},
                type:"post",
                success:function (result) {
                    if(result==0){
						layer.msg("登陆成功");
                        setTimeout(function () {location.href="jumpindex";},1000);
                    }else if(result==1){
                        layer.alert('登陆失败，帐号或者密码错误！',{
                            title: '提示框',
                            icon:1,
                        });
                    }else if(result=="ydl"){
                        layer.msg("登陆失败，该账号以有人登陆！");
					}else{
                        layer.alert('登陆失败，权限不够！',{
                            title: '提示框',
                            icon:1,
                        });
					}
                }
            })
          }
      })



	 $("input[type='text'],input[type='password']").blur(function(){
        var $el = $(this);
        var $parent = $el.parent();
        $parent.attr('class','frame_style').removeClass(' form_error');
        if($el.val()==''){
            $parent.attr('class','frame_style').addClass(' form_error');
        }
    });
	$("input[type='text'],input[type='password']").focus(function(){		
		var $el = $(this);
        var $parent = $el.parent();
        $parent.attr('class','frame_style').removeClass(' form_errors');
        if($el.val()==''){
            $parent.attr('class','frame_style').addClass(' form_errors');
        } else{
			 $parent.attr('class','frame_style').removeClass(' form_errors');
		}
		});
	  })

</script>