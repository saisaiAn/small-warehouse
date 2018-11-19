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

    <link rel="shortcut icon" href="${path}/static/app/assets/images/favicon.ico">
        <link rel="shortcut icon" href="${path}/static/app/assets/images/favicon.ico">

    <link href="${path}/static/app/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${path}/static/app/assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="${path}/static/app/assets/css/style.css" rel="stylesheet" type="text/css">
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
                <a href="#" class="logo"><i class="mdi mdi-assistant"></i> Annex</a>
                <!-- <a href="index.html" class="logo"><img src="assets/images/logo.png" height="24" alt="logo"></a> -->
            </div>
        </div>
                <!-- LOGO -->
                <div class="topbar-left">
                    <div class="text-center">
                        <a href="#" class="logo"><i class="mdi mdi-assistant"></i> Annex</a>
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
                                    <div class="notify-icon"><img src="${path}/static/app/assets/images/users/avatar-2.jpg" alt="user-img" class="img-fluid rounded-circle" /> </div>
                                    <p class="notify-details"><b>Charles M. Jones</b><small class="text-muted">Dummy text of the printing and typesetting industry.</small></p>
                                </a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon"><img src="${path}/static/app/assets/images/users/avatar-2.jpg" alt="user-img" class="img-fluid rounded-circle" /> </div>
                                            <p class="notify-details"><b>Charles M. Jones</b><small class="text-muted">Dummy text of the printing and typesetting industry.</small></p>
                                        </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon"><img src="${path}/static/app/assets/images/users/avatar-3.jpg" alt="user-img" class="img-fluid rounded-circle" /> </div>
                                    <p class="notify-details"><b>Thomas J. Mimms</b><small class="text-muted">You have 87 unread messages</small></p>
                                </a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon"><img src="${path}/static/app/assets/images/users/avatar-3.jpg" alt="user-img" class="img-fluid rounded-circle" /> </div>
                                            <p class="notify-details"><b>Thomas J. Mimms</b><small class="text-muted">You have 87 unread messages</small></p>
                                        </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon"><img src="${path}/static/app/assets/images/users/avatar-4.jpg" alt="user-img" class="img-fluid rounded-circle" /> </div>
                                    <p class="notify-details"><b>Luis M. Konrad</b><small class="text-muted">It is a long established fact that a reader will</small></p>
                                </a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon"><img src="${path}/static/app/assets/images/users/avatar-4.jpg" alt="user-img" class="img-fluid rounded-circle" /> </div>
                                            <p class="notify-details"><b>Luis M. Konrad</b><small class="text-muted">It is a long established fact that a reader will</small></p>
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

            <div class="page-content-wrapper ">

                <div class="container-fluid">

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="page-title-box">
                                <div class="btn-group float-right">
                                    <ol class="breadcrumb hide-phone p-0 m-0">
                                        <li class="breadcrumb-item"><a href="#">Annex</a></li>
                                        <li class="breadcrumb-item active">Settings</li>
                                    </ol>
                                </div>
                                <h4 class="page-title">Settings</h4>
                            </div>
                        </div>
                    </div>
                    <!-- end page title end breadcrumb -->
                    <div class="row">
                        <div class="col-md-4 col-xl-2">
                            <div class="card m-b-30">
                                <div class="card-body">
                                    <div class=" text-center">
                                        <img src="${path}/static/app/assets/images/users/avatar-1.jpg" alt="" class="rounded-circle img-thumbnail w-50">
                                        <h4 class="font-16">${appEmp.empname}</h4>
                                        <a href="" class="text-muted font-14">${appEmp.empphone}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 col-xl-5">
                            <div class="card bg-white m-b-30">
                                <div class="card-body">
                                    <div class="general-label">
                                        <form role="form" action="/app/appMaster" method="post">
                                            <input type="hidden" name="empno" value="${appEmp.empno}">
                                            <div class="form-group">
                                                <label for="exampleInputName1">用户名</label>
                                                <input type="text" class="form-control" id="exampleInputName1" value="${appEmp.empname}" disabled="disabled">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPhone">电话</label>
                                                <input type="Phone" class="form-control" name="empphone" id="exampleInputPhone" value="${appEmp.empphone}">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">密码</label>
                                                <input type="password" class="form-control" name="password" id="exampleInputPassword1" value="${appEmp.password}">
                                            </div>
                                            <button type="submit" class="btn btn-primary" >保存</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="page-title-box">
                                        <div class="btn-group float-right">
                                            <ol class="breadcrumb hide-phone p-0 m-0">
                                                <li class="breadcrumb-item"><a href="#">Annex</a></li>
                                                <li class="breadcrumb-item active">Settings</li>
                                            </ol>
                                        </div>
                                        <h4 class="page-title">Settings</h4>
                                    </div>
                                </div>
                            </div>
                            <!-- end page title end breadcrumb -->
                            <div class="row">
                                <div class="col-md-4 col-xl-2">
                                    <div class="card m-b-30">
                                        <div class="card-body">
                                            <div class=" text-center">
                                                <img src="${path}/static/app/assets/images/users/avatar-1.jpg" alt="" class="rounded-circle img-thumbnail w-50">
                                                <h4 class="font-16">${appEmp.empname}</h4>
                                                <a href="" class="text-muted font-14">${appEmp.empphone}</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-xl-5">
                                    <div class="card bg-white m-b-30">
                                        <div class="card-body">
                                            <div class="general-label">
                                                <form role="form" action="/app/appMaster" method="post">
                                                    <input type="hidden" name="empno" value="${appEmp.empno}">
                                                    <div class="form-group">
                                                        <label for="exampleInputName1">用户名</label>
                                                        <input type="text" class="form-control" id="exampleInputName1" value="${appEmp.empname}" disabled="disabled">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputPhone">电话</label>
                                                        <input type="Phone" class="form-control" name="empphone" id="exampleInputPhone" value="${appEmp.empphone}">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputPassword1">密码</label>
                                                        <input type="password" class="form-control" name="password" id="exampleInputPassword1" value="${appEmp.password}">
                                                    </div>
                                                    <button type="submit" class="btn btn-primary" >保存</button>
                                                </form>
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

<!-- App js -->
<script src="${path}/static/app/assets/js/app.js"></script>
        <!-- App js -->
        <script src="${path}/static/app/assets/js/app.js"></script>

</body>
</html>