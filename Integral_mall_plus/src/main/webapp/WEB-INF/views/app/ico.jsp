<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>员工管理</title>
        <meta content="Admin Dashboard" name="description" />
        <meta content="Mannatthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="${path}/static/app/assets/images/favicon.ico">

        <link href="${path}/static/app/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="${path}/static/app/assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="${path}/static/app/assets/css/style.css" rel="stylesheet" type="text/css">

    </head>


    <body class="fixed-left">

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
                        <a href="${path}/app/toAppnIndex" class="logo"><img src="${path}/static/app/assets/images/logo.png" height="24" alt="logo"> 乐兑</a>
                    </div>
                </div>

                <div class="sidebar-inner slimscrollleft">

                    <div id="sidebar-menu">
                        <ul>

                            <li>
                                <a href="${path}/app/toAppnIndex" class="waves-effect"><i class="mdi mdi-airplay"></i><span> 首页</span></a>
                            </li>
                            <li>
                                <a href="${path}/app/toAppico" class="waves-effect"><i class="mdi mdi-face-profile"></i><span> 员工管理</span></a>
                            </li>
                            <li>
                                <a href="${path}/app/toAppSetting" class="waves-effect"><i class="mdi mdi-settings"></i><span> 个人设置</span></a>
                            </li>
                            <li>
                                <a href="${path}/app/app" class="waves-effect"><i class="mdi mdi-ungroup"></i><span> 登录 </span></a>
                            </li>
                            <li>
                                <a href="${path}/app/toAppLogout" class="waves-effect"><i class="mdi mdi-power"></i><span> 注销 </span></a>
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

                            </ul>

                            <ul class="list-inline menu-left mb-0">
                                <li class="float-left">
                                    <button class="button-menu-mobile open-left waves-light waves-effect">
                                        <i class="mdi mdi-menu"></i>
                                    </button>
                                </li>
                            </ul>

                            <div class="clearfix"></div>

                        </nav>

                    </div>
                    <!-- Top Bar End -->

                    <div class="page-content-wrapper ">

                        <div class="container-fluid">

                            <div class="row">
                                    <div class="col-sm-12">
                                        <div class="page-title-box">
                                            <div class="btn-group float-right">
                                                <ol class="breadcrumb hide-phone p-0 m-0">
                                                    <li class="breadcrumb-item"><a href="#">Annex</a></li>
                                                    <li class="breadcrumb-item active">Landing</li>
                                                </ol>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end page title end breadcrumb -->
                                <div class="row">
                                    <div class="col-md-12 col-xl-12">
                                        <div class="card m-b-30">                                
                                            <div class="card-body new-user">
                                                <h5 class="header-title mb-4 mt-0">员工信息一览</h5>
                                                <div class="table-responsive">
                                                    <table class="table table-hover mb-0" style="margin-top: 10px;">
                                                        <thead>
                                                            <tr>
                                                                <th class="border-top-0">员工姓名</th>
                                                                <th class="border-top-0">部门</th>
                                                                <th class="border-top-0">职位</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach items="${emplist}" var="emp">
                                                            <tr empno="${emp.empno}" class="Emptr">
                                                                <td>
                                                                        ${emp.empname}
                                                                </td>
                                                                <td>${emp.departmentId.depaname}</td>
                                                                <td> <c:if test="${emp.position==1}">普通员工</c:if>
                                                                    <c:if test="${emp.position==2}">经理</c:if>
                                                                    <c:if test="${emp.position==3}">综合部经理</c:if>
                                                                    <c:if test="${emp.position==4}">校长</c:if></td>
                                                            </tr>
                                                        </c:forEach>
                                                        </tbody>
                                                    </table>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>     

                        </div><!-- container -->

                    </div> <!-- Page content Wrapper -->

                </div> <!-- content -->



            </div>
            <!-- End Right content here -->

        </div>
        <!-- END wrapper -->

        <div class="modal fade" id="model" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span></button>
                        <h4 class="modal-title" id="exampleModalLabel">详情</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group"  style="width: 90%; display: inline-block; float: left;margin:5%;">
                                <label for="recipient-name" class="control-label">员工姓名</label>
                                <input type="text" class="form-control empname"  id="recipient-name" disabled="disabled" value="">
                            </div>
                            <div class="form-group"  style="width: 40%; display: inline-block; float: left;margin:0 5%;">
                                <label for="recipient-name" class="control-label">所属部门</label>
                                <input type="text" class="form-control depaname" disabled="disabled">
                            </div>
                            <div class="form-group" style="width: 40%; display: inline-block; float: left;margin:0 5%;">
                                <label for="recipient-name" class="control-label">职位</label>
                                <input type="text" class="form-control position" disabled="disabled">
                            </div>
                            <div class="form-group"style="width: 90%; display: inline-block; float: left;margin:0 5%;">
                                <label for="message-text" class="control-label">入职日期</label>
                                <input type="text" class="form-control positivedates" disabled="disabled">
                            </div>
                            <div class="form-group" style="width: 40%; display: inline-block; float: left;margin:0 5%;">
                                <label for="recipient-name" class="control-label" disabled="disabled">剩余积分</label>
                                <input type="text" class="form-control remainingpoints" disabled="disabled">
                            </div>

                            <div class="form-group" style="width: 40%; display: inline-block; float: left;margin:0 5%;">
                                <label for="recipient-name" class="control-label">总积分</label>
                                <input type="text" class="form-control totalintegral" disabled="disabled">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <input type="hidden" id="shId">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>

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
        <script src="${path}/static/app/assets/plugins/metro/metro.js"></script>
        <!-- App js -->
        <script src="${path}/static/app/assets/js/app.js"></script>

        <script type="text/javascript">
            $(function(){
                $(".Emptr").click(function(){
                   // alert();
                    $(".empname").val("");
                    $(".depaname").val("");
                    $(".position").html("");
                    $(".positivedates").html("");
                    $(".remainingpoints").val("");
                    $(".totalintegral").val("");
                    $.ajax({
                        url:"${path}/app/findEmpById",
                        data:{empno:$(this).attr("empno")},
                        type:"post",
                        success:function(result){
                            //alert(result.empId.empname)
                            $(".empname").val(result.empname);
                            $(".depaname").val(result.departmentId.depaname);
                            if (result.position==1) {
                                $(".position").val('普通员工');
                            }
                            if (result.position==2) {
                                $(".position").val('经理');
                            }
                            if (result.position==3) {
                                $(".position").val('综合部经理');
                            }
                            if (result.position==4) {
                                $(".position").val('校长');
                            }
                            function getMoth(str){
                                var oDate = new Date(str),
                                    oMonth = oDate.getMonth()+1,
                                    oDay = oDate.getDate(),
                                    oTime = getzf(oMonth) +'-'+ getzf(oDay);//最后拼接时间
                                return oTime;
                            };
                            var date=new Date(result.positivedates);
                            $(".positivedates").val(date.getFullYear()+"-"+eval(date.getMonth()+1)+"-"+date.getDate());
                            $(".remainingpoints").val(result.integralId.remainingpoints);
                            $(".totalintegral").val(result.integralId.totalintegral);
                        }
                    })
                    $('#model').modal('show');
                })
            })
        </script>
    </body>
</html>