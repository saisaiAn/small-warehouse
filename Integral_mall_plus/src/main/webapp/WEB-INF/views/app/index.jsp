<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>超级管理系统</title>
    <meta content="Admin Dashboard" name="description" />
    <meta content="Mannatthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />


    <% request.setAttribute("path",request.getContextPath());%>

    <link rel="shortcut icon" href="${path}/static/app/assets/images/favicon.ico">

    <!-- jvectormap -->
    <link href="${path}/static/app/assets/plugins/jvectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet">

    <link href="${path}/static/app/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${path}/static/app/assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="${path}/static/app/assets/css/style.css" rel="stylesheet" type="text/css">
    <script src="${path}/static/background/assets/layer/layer.js" type="text/javascript"></script>

</head>


<body class="fixed-left">
<%--模态框--%>

<div class="modal fade" id="model" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span></button>
                <h4 class="modal-title" id="exampleModalLabel">详情</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group"  style="width: 40%; display: inline-block; float: left;margin:0 5%;">
                        <label for="recipient-name" class="control-label">申请人</label>
                        <input type="text" class="form-control empId"  id="recipient-name" disabled="disabled" value="">
                    </div>
                    <div class="form-group"  style="width: 40%; display: inline-block; float: left;margin:0 5%;">
                        <label for="recipient-name" class="control-label">审核人</label>
                        <input type="text" class="form-control empReviewer" disabled="disabled">
                    </div>
                    <div class="form-group" style="width: 40%; display: inline-block; float: left;margin:0 5%;">
                        <label for="recipient-name" class="control-label">申请原因</label>
                        <textarea class="form-control intergralchange" rows="7" id="message-text" disabled="disabled"></textarea>
                    </div>
                    <div class="form-group"style="width: 40%; display: inline-block; float: left;margin:0 5%;">
                        <label for="message-text" class="control-label">审核原因</label>
                        <textarea class="form-control auditopinion" rows="7" id="message-txt" disabled="disabled"></textarea>
                    </div>
                    <div class="form-group" style="width: 40%; display: inline-block; float: left;margin:0 5%;">
                        <label for="recipient-name" class="control-label" disabled="disabled">申请积分</label>
                        <input type="text" class="form-control changeint" disabled="disabled">
                    </div>

                    <div class="form-group" style="width: 40%; display: inline-block; float: left;margin:0 5%;">
                        <label for="recipient-name" class="control-label">审核状态</label>
                        <input type="text" class="form-control audittype" disabled="disabled">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <input type="hidden" id="shId">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-danger disagree" >不同意</button>
                <button type="button" class="btn btn-success agree">同意</button>
            </div>
        </div>
    </div>
</div>
<!-- Loader -->
<div id="preloader"><div id="status"><div class="spinner"></div></div></div>

<!-- Begin page -->
<div id="wrapper">

    <!-- ========== Left Sidebar Start ========== -->
    <div class="left side-menu">
        <button type="button" class="button-menu-mobile button-menu-mobile-topbar open-left waves-effect">
            <i class="ion-close"></i>
        </button>

        <!-- LOGO -->
        <div class="topbar-left">
            <div class="text-center">
                <a href="/app/toAppnIndex" class="logo"><i class="mdi mdi-assistant"></i> Annex</a>
                <!-- <a href="index.html" class="logo"><img src="assets/images/logo.png" height="24" alt="logo"></a> -->
            </div>
        </div>


        <div class="sidebar-inner slimscrollleft">

            <div id="sidebar-menu">
                <ul>
                    <li>
                        <a href="/app/toAppnIndex" class="waves-effect"><i class="mdi mdi-airplay"></i><span> 首页</span></a>
                    </li>


                    <li>
                        <a href="/app/toAppSetting" class="waves-effect"><i class="mdi mdi-settings"></i><span> 个人设置</span></a>
                    </li>
                    <li>
                        <a href="/app/app" class="waves-effect"><i class="mdi mdi-ungroup"></i><span> 登录 </span></a>
                    </li>
                    <li>
                        <a href="/app/toAppLogout" class="waves-effect"><i class="mdi mdi-power"></i><span> 注销 </span></a>
                    </li>

                </ul>
            </div>
            <div class="clearfix"></div>
        </div> <!-- end sidebarinner -->
    </div>
    <!-- Left Sidebar End -->

    <!-- Start right Content here -->

    <div class="content-page">
        <!-- Start content -->
        <div class="content">

            <!-- Top Bar Start -->
            <div class="topbar">

                <nav class="navbar-custom">

                    <ul class="list-inline float-right mb-0">






                        <li class="list-inline-item dropdown notification-list">
                            <a class="nav-link dropdown-toggle arrow-none waves-effect nav-user" data-toggle="dropdown" href="#" role="button"
                               aria-haspopup="false" aria-expanded="false">
                                <img src="${path}/static/app/assets/images/users/avatar-1.jpg" alt="user" class="rounded-circle">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                <!-- item-->
                                <div class="dropdown-item noti-title">
                                    <h5>Welcome</h5>
                                </div>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-account-circle m-r-5 text-muted"></i> Profile</a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-wallet m-r-5 text-muted"></i> My Wallet</a>
                                <a class="dropdown-item" href="#"><span class="badge badge-success float-right">5</span><i class="mdi mdi-settings m-r-5 text-muted"></i> Settings</a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-lock-open-outline m-r-5 text-muted"></i> Lock screen</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-logout m-r-5 text-muted"></i> Logout</a>
                            </div>
                        </li>

                    </ul>



                    <div class="clearfix"></div>

                </nav>

            </div>
            <!-- Top Bar End -->

            <div class="row">
                <div class="col-md-12">
                    <table class="table table-hover" id="emps_table">
                        <thead>
                        <tr>
                            <th><input type="checkbox" id="check-all"/></th>
                            <th>#</th>
                            <th>姓名</th>
                            <th>积分奖惩</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${IntegralAudit}" var="integral">
                            <c:if test="${integral.audittype==2}">
                                <tr sid="${integral.integralauditno}">
                                    <th><input type="checkbox"/></th>
                                    <th class="integralauditno">${integral.integralauditno}</th>
                                    <th>${integral.empId.empname}</th>
                                    <th>${integral.intergralchange}</th>
                                </tr>
                            </c:if>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

        </div></div></div>

<!-- END wrapper -->


<!-- jQuery  -->
<script src="${path}/static/app/assets/js/jquery.min.js"></script>
<script src="${path}/static/app/assets/js/popper.min.js"></script>
<script src="${path}/static/app/assets/js/bootstrap.min.js"></script>
<script src="${path}/static/app/assets/js/modernizr.min.js"></script>
<script src="${path}/static/app/assets/js/detect.js"></script>
<script src="${path}/static/app/assets/js/fastclick.js"></script>
<script src="${path}/static/app/assets/js/jquery.slimscroll.js"></script>
<script src="${path}/static/app/assets/js/jquery.blockUI.js"></script>
<script src="${path}/static/app/assets/js/waves.js"></script>
<script src="${path}/static/app/assets/js/jquery.nicescroll.js"></script>
<script src="${path}/static/app/assets/js/jquery.scrollTo.min.js"></script>

<!--Morris Chart-->
<script src="${path}/static/app/assets/plugins/flot-chart/jquery.flot.min.js"></script>
<script src="${path}/static/app/assets/plugins/flot-chart/jquery.flot.time.js"></script>
<script src="${path}/static/app/assets/plugins/flot-chart/curvedLines.js"></script>
<script src="${path}/static/app/assets/plugins/flot-chart/jquery.flot.pie.js"></script>
<script src="${path}/static/app/assets/plugins/morris/morris.min.js"></script>
<script src="${path}/static/app/assets/plugins/raphael/raphael-min.js"></script>
<script src="${path}/static/app/assets/plugins/jquery-sparkline/jquery.sparkline.min.js"></script>
<script src="${path}/static/app/assets/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
<script src="${path}/static/app/assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="${path}/static/app/assets/pages/crypto-dash.init.js"></script>
<!-- App js -->
<script src="${path}/static/app/assets/js/app.js"></script>

<script>

    $(document).ready(function() {
        $("#boxscroll").niceScroll({cursorborder:"",cursorcolor:"#cecece",boxzoom:true});
        $("#boxscroll2").niceScroll({cursorborder:"",cursorcolor:"#cecece",boxzoom:true});
    });
    //获得

    $("tr:gt(0)").on('click',function(){
        //alert("sdf");
        //var integralauditno=$(this).children(".integralauditno").html();
        var integralauditno=$(this).attr("sid");
        $(".empId").val("");
        $(".empReviewer").val("");
        $(".intergralchange").html("");
        $(".auditopinion").html("");
        $(".audittype").val("");
        $(".changeint").val("");
        $.ajax({
            url:"/app/toAppFind",
            data:{integralauditno:integralauditno},
            type:"post",
            success:function(result){
                //alert(result.empId.empname)
                $("#shId").val(integralauditno);
                $(".empId").val(result.empId.empname);
                $(".empReviewer").val(result.empReviewer.empname);
                $(".intergralchange").html(result.intergralchange);
                $(".auditopinion").html(result.auditopinion);
                $(".audittype").val(result.audittype);
                $(".changeint").val(result.changeint);
            }
        })
        $('#model').modal('show');


        $(".disagree").on('click',function(){
            if(confirm("确定拒绝批准吗？")){
                var $id = $("#shId").val();
                $.ajax({
                    url:"/app/appDisagree",
                    data:{id:$id},
                    type:"post",
                    success:function (result) {
                        if(result=="y"){
                            //layer.msg();
                            alert("拒绝成功")
                           /* setTimeout(function () {*/
                                location.href="toAppnIndex";
                          /*  },1000)*/
                        }else{
                           // layer.msg("拒绝失败");
                            alert("拒绝失败")
                          /*  setTimeout(function () {*/
                                location.href="toAppnIndex";
                           /* },1000)*/
                        }
                    }
                })
            }
        })
    })

    $(".agree").on('click',function () {
       /* var empId = $(this).attr("empId"); //员工编号
        var intergralchange = $(this).attr("intergralchange"); //积分变动原因
        var changeint = $(this).attr("changeint"); //积分变动数量
        var integralType = $(this).attr("integralType"); //积分表变动所属类型
        var IntegralNo = $(this).attr("IntegralNo"); //积分表编号
        var integralauditno = $(this).attr("integralauditno");*/
        var $id = $("#shId").val();
        $.ajax({
            url:"/app/AppXZApproval_opinion",
            type:"post",
            data:{id:$id},
            success:function (result) {
                if(result=="y"){
                    //layer.msg();
                    alert("批准成功")
                    /* setTimeout(function () {*/
                    location.href="toAppnIndex";
                    /*  },1000)*/
                }else{
                    // layer.msg("拒绝失败");
                    alert("批准失败")
                    /*  setTimeout(function () {*/
                    location.href="toAppnIndex";
                    /* },1000)*/
                }
            }
        })



    })



</script>
<%--<script src="${path}/static/background/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
    $(function(){

    })
</script>--%>
</body>
</html>