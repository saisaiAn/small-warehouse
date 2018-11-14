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

        <link rel="shortcut icon" href="/static/app/assets/images/favicon.ico">

        <!-- jvectormap -->
        <link href="/static/app/assets/plugins/jvectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet">

        <link href="/static/app/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="/static/app/assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="/static/app/assets/css/style.css" rel="stylesheet" type="text/css">
       <script src="/static/background/assets/layer/layer.js" type="text/javascript"></script>

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
                            <input type="text" class="form-control empId" id="recipient-name" disabled="disabled" value="">
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
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary">同意</button>
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
                        <a href="/toAppnIndex" class="logo"><i class="mdi mdi-assistant"></i> Annex</a>
                        <!-- <a href="index.html" class="logo"><img src="assets/images/logo.png" height="24" alt="logo"></a> -->
                    </div>
                </div>


                <div class="sidebar-inner slimscrollleft">

                    <div id="sidebar-menu">
                        <ul>
                            <li>
                                <a href="/toAppnIndex" class="waves-effect"><i class="mdi mdi-airplay"></i><span> 首页</span></a>
                            </li>


                            <li>
                                <a href="/toAppSetting" class="waves-effect"><i class="mdi mdi-settings"></i><span> 个人设置</span></a>
                            </li>                            
                            <li>
                                <a href="/app" class="waves-effect"><i class="mdi mdi-ungroup"></i><span> 登录 </span></a>
                            </li>
                            <li>
                                <a href="/toAppLogout" class="waves-effect"><i class="mdi mdi-power"></i><span> 注销 </span></a>
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
                                    <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button"
                                       aria-haspopup="false" aria-expanded="false">
                                        <i class="ti-email noti-icon"></i>
                                        <span class="badge badge-danger noti-icon-badge">5</span>
                                    </a>

                                    <div class="dropdown-menu dropdown-menu-right dropdown-arrow dropdown-menu-lg">
                                        <!-- item-->
                                        <div class="dropdown-item noti-title">
                                            <h5><span class="badge badge-danger float-right">745</span>Messages</h5>
                                        </div>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon"><img src="/static/app/assets/images/users/avatar-2.jpg" alt="user-img" class="img-fluid rounded-circle" /> </div>
                                            <p class="notify-details"><b>Charles M. Jones</b><small class="text-muted">Dummy text of the printing and typesetting industry.</small></p>
                                        </a>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon"><img src="/static/app/assets/images/users/avatar-3.jpg" alt="user-img" class="img-fluid rounded-circle" /> </div>
                                            <p class="notify-details"><b>Thomas J. Mimms</b><small class="text-muted">You have 87 unread messages</small></p>
                                        </a>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon"><img src="/static/app/assets/images/users/avatar-4.jpg" alt="user-img" class="img-fluid rounded-circle" /> </div>
                                            <p class="notify-details"><b>Luis M. Konrad</b><small class="text-muted">It is a long established fact that a reader will</small></p>
                                        </a>

                                        <!-- All-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            View All
                                        </a>

                                    </div>
                                </li>

                                                                <li class="list-inline-item dropdown notification-list">
                                                                    <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button"
                                                                       aria-haspopup="false" aria-expanded="false">
                                                                        <i class="ti-bell noti-icon"></i>
                                                                        <span class="badge badge-success noti-icon-badge">23</span>
                                                                    </a>
                                                                    <div class="dropdown-menu dropdown-menu-right dropdown-arrow dropdown-menu-lg">
                                                                        <!-- item-->
                                                                        <div class="dropdown-item noti-title">
                                                                            <h5><span class="badge badge-danger float-right">87</span>Notification</h5>
                                                                        </div>

                                                                        <!-- item-->
                                                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                                            <div class="notify-icon bg-primary"><i class="mdi mdi-cart-outline"></i></div>
                                                                            <p class="notify-details"><b>Your order is placed</b><small class="text-muted">Dummy text of the printing and typesetting industry.</small></p>
                                                                        </a>

                                                                        <!-- item-->
                                                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                                            <div class="notify-icon bg-success"><i class="mdi mdi-message"></i></div>
                                                                            <p class="notify-details"><b>New Message received</b><small class="text-muted">You have 87 unread messages</small></p>
                                                                        </a>

                                                                        <!-- item-->
                                                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                                            <div class="notify-icon bg-warning"><i class="mdi mdi-martini"></i></div>
                                                                            <p class="notify-details"><b>Your item is shipped</b><small class="text-muted">It is a long established fact that a reader will</small></p>
                                                                        </a>

                                                                        <!-- All-->
                                                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                                            View All
                                                                        </a>

                                                                    </div>
                                                                </li>

                                                                <li class="list-inline-item dropdown notification-list">
                                                                    <a class="nav-link dropdown-toggle arrow-none waves-effect nav-user" data-toggle="dropdown" href="#" role="button"
                                                                       aria-haspopup="false" aria-expanded="false">
                                                                        <img src="/static/app/assets/images/users/avatar-1.jpg" alt="user" class="rounded-circle">
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

                                                                                    <ul class="list-inline menu-left mb-0">
                                                                                        <li class="float-left">
                                                                                            <button class="button-menu-mobile open-left waves-light waves-effect">
                                                                                                <i class="mdi mdi-menu"></i>
                                                                                            </button>
                                                                                        </li>
                                                                                        <li class="hide-phone app-search">
                                                                                            <form role="search" class="">
                                                                                                <input type="text" placeholder="Search..." class="form-control">
                                                                                                <a href=""><i class="fa fa-search"></i></a>
                                                                                            </form>
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
                                                                                            <tr>
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
        <script src="/static/app/assets/js/jquery.min.js"></script>
        <script src="/static/app/assets/js/popper.min.js"></script>
        <script src="/static/app/assets/js/bootstrap.min.js"></script>
        <script src="/static/app/assets/js/modernizr.min.js"></script>
        <script src="/static/app/assets/js/detect.js"></script>
        <script src="/static/app/assets/js/fastclick.js"></script>
        <script src="/static/app/assets/js/jquery.slimscroll.js"></script>
        <script src="/static/app/assets/js/jquery.blockUI.js"></script>
        <script src="/static/app/assets/js/waves.js"></script>
        <script src="/static/app/assets/js/jquery.nicescroll.js"></script>
        <script src="/static/app/assets/js/jquery.scrollTo.min.js"></script>

        <!--Morris Chart-->
        <script src="/static/app/assets/plugins/flot-chart/jquery.flot.min.js"></script>
        <script src="/static/app/assets/plugins/flot-chart/jquery.flot.time.js"></script>
        <script src="/static/app/assets/plugins/flot-chart/curvedLines.js"></script>
        <script src="/static/app/assets/plugins/flot-chart/jquery.flot.pie.js"></script>
        <script src="/static/app/assets/plugins/morris/morris.min.js"></script>
        <script src="/static/app/assets/plugins/raphael/raphael-min.js"></script>
        <script src="/static/app/assets/plugins/jquery-sparkline/jquery.sparkline.min.js"></script>
        
        <script src="/static/app/assets/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
        <script src="/static/app/assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>


        <script src="/static/app/assets/pages/crypto-dash.init.js"></script>

        <!-- App js -->
        <script src="/static/app/assets/js/app.js"></script>
        <script>
             
            $(document).ready(function() {        
            $("#boxscroll").niceScroll({cursorborder:"",cursorcolor:"#cecece",boxzoom:true});
            $("#boxscroll2").niceScroll({cursorborder:"",cursorcolor:"#cecece",boxzoom:true}); 
            });
            //获得

            $("tr").on('click',function(){
                //alert("sdf");
                var integralauditno=$(this).children(".integralauditno").html();
               // alert(integralauditno);
                $.ajax({
                    url:"/toAppFind",
                    data:{integralauditno:integralauditno},
                    type:"post",
                    success:function(result){
                        $(".empId").val(result.empId.empname);
                        $(".empReviewer").val(result.empReviewer.empname);
                        $(".intergralchange").html(result.intergralchange);
                        $(".auditopinion").html(result.auditopinion);
                        $(".audittype").val(result.audittype);
                        $(".changeint").val(result.changeint);
                    }
                })
                $('#model').modal('show');
            })

        </script>


    </body>
</html>