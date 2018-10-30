<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Annex - Responsive Bootstrap 4 Admin Dashboard</title>
        <meta content="Admin Dashboard" name="description" />
        <meta content="Mannatthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="/static/app/assets/images/favicon.ico">

        <link href="/static/app/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="/static/app/assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="/static/app/assets/css/style.css" rel="stylesheet" type="text/css">

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
                        <a href="index.html" class="logo"><i class="mdi mdi-assistant"></i> Annex</a>
                        <!-- <a href="index.html" class="logo"><img src="assets/images/logo.png" height="24" alt="logo"></a> -->
                    </div>
                </div>

                <div class="sidebar-inner slimscrollleft">

                    <div id="sidebar-menu">
                        <ul>

                            <li>
                                <a href="index.html" class="waves-effect"><i class="mdi mdi-airplay"></i><span> Dashboard</span></a>
                            </li>
                            <li>
                                <a href="exchange.jsp" class="waves-effect"><i class="mdi mdi-swap-horizontal"></i><span> Exchange </span></a>
                            </li>
                            <li>
                                <a href="mywallet.html" class="waves-effect"><i class="mdi mdi-wallet"></i><span> My Wallet </span></a>
                            </li>                            
                            <li>
                                <a href="calendar.jsp" class="waves-effect"><i class="mdi mdi-calendar-clock"></i><span> Calendar </span></a>
                            </li>
                            <li>
                                <a href="news.html" class="waves-effect"><i class="mdi mdi-chart-areaspline"></i><span> News </span></a>
                            </li>
                            <li>
                                <a href="ico.jsp" class="waves-effect"><i class="mdi mdi-biohazard"></i><span> ICO List </span></a>
                            </li>                            
                            <li>
                                <a href="setting.html" class="waves-effect"><i class="mdi mdi-settings"></i><span> Settings </span></a>
                            </li>                            
                            <li>
                                <a href="login.html" class="waves-effect"><i class="mdi mdi-ungroup"></i><span> Log in </span></a>
                            </li>
                            <li>
                                <a href="logout.html" class="waves-effect"><i class="mdi mdi-power"></i><span> Logout </span></a>
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
                                <!-- language-->
                                <li class="list-inline-item dropdown notification-list hide-phone">
                                    <a class="nav-link dropdown-toggle arrow-none waves-effect text-white" data-toggle="dropdown" href="#" role="button"
                                        aria-haspopup="false" aria-expanded="false">
                                        English <img src="/static/app/assets/images/flags/us_flag.jpg" class="ml-2" height="16" alt=""/>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right language-switch">
                                        <a class="dropdown-item" href="#"><img src="/static/app/assets/images/flags/italy_flag.jpg" alt="" height="16"/><span> Italian </span></a>
                                        <a class="dropdown-item" href="#"><img src="/static/app/assets/images/flags/french_flag.jpg" alt="" height="16"/><span> French </span></a>
                                        <a class="dropdown-item" href="#"><img src="/static/app/assets/images/flags/spain_flag.jpg" alt="" height="16"/><span> Spanish </span></a>
                                        <a class="dropdown-item" href="#"><img src="/static/app/assets/images/flags/russia_flag.jpg" alt="" height="16"/><span> Russian </span></a>
                                    </div>
                                </li>
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
                                            <h4 class="page-title">New Coin ICO</h4>
                                        </div>
                                    </div>
                                </div>
                                <!-- end page title end breadcrumb -->
                                <div class="row">
                                    <div class="col-md-12 col-xl-12">
                                        <div class="card m-b-30">                                
                                            <div class="card-body new-user">
                                                <h5 class="header-title mb-4 mt-0">ICO Coin List</h5>
                                                <div class="table-responsive">
                                                    <table class="table table-hover mb-0">
                                                        <thead>
                                                            <tr>
                                                                <th class="border-top-0">Logo</th>
                                                                <th class="border-top-0">Coin name</th>
                                                                <th class="border-top-0">ICOscale</th>
                                                                <th class="border-top-0">Total</th>                                    
                                                                <th class="border-top-0">Currency</th>
                                                                <th class="border-top-0">Link</th>
                                                                <th class="border-top-0">End Time</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                        <img src="/static/app/assets/images/coins/dash.png" alt="" style="width:30px">
                                                                </td><td>
                                                                    <a href="javascript:void(0);">Dashcoin</a>
                                                                </td>
                                                                
                                                                <td>7,500,421</td>
                                                                <td>10,000,000</td>                                   
                                                                <td>$ , BTC</td>
                                                                <td>
                                                                    <ul class="list-unstyled list-inline">
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-bitcoin text-primary"></i></a></li>                                                    
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-medium text-danger"></i></a></li>
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-twitter text-info"></i></a></li>
                                                                    </ul>
                                                                </td>
                                                                <td>
                                                                        <div data-role="countdown" data-hours="90" style="width:70px;"></div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                        <img src="/static/app/assets/images/coins/btc.png" alt="" style="width:30px">
                                                                </td><td>
                                                                    <a href="javascript:void(0);">Bitcoin</a>
                                                                </td>
                                                                
                                                                <td>8,700,421</td>
                                                                <td>12,000,000</td>                                   
                                                                <td> BTC</td>
                                                                <td>
                                                                    <ul class="list-unstyled list-inline">
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-bitcoin text-primary"></i></a></li>                                                    
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-medium text-danger"></i></a></li>
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-twitter text-info"></i></a></li>
                                                                    </ul>
                                                                </td>
                                                                <td>
                                                                        <div data-role="countdown" data-hours="120" style="width:70px"></div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                        <img src="/static/app/assets/images/coins/lite.png" alt="" style="width:30px">
                                                                </td><td>
                                                                    <a href="javascript:void(0);">Ripple</a>
                                                                </td>
                                                                
                                                                <td>17,900,532</td>
                                                                <td>120,000,000</td>                                   
                                                                <td>$ , ETH</td>
                                                                <td>
                                                                    <ul class="list-unstyled list-inline">
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-bitcoin text-primary"></i></a></li>                                                    
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-medium text-danger"></i></a></li>
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-twitter text-info"></i></a></li>
                                                                    </ul>
                                                                </td>
                                                                <td>
                                                                        <div data-role="countdown" data-hours="200" style="width:70px"></div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                        <img src="/static/app/assets/images/coins/eth.png" alt="" style="width:30px">
                                                                </td><td>
                                                                    <a href="javascript:void(0);">Ethereum</a>
                                                                </td>
                                                                
                                                                <td>99,500,421</td>
                                                                <td>100,000,000</td>                                   
                                                                <td>ETH , BTC</td>
                                                                <td>
                                                                    <ul class="list-unstyled list-inline">
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-bitcoin text-primary"></i></a></li>                                                    
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-medium text-danger"></i></a></li>
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-twitter text-info"></i></a></li>
                                                                    </ul>
                                                                </td>
                                                                <td>
                                                                        <div data-role="countdown" data-hours="300" style="width:70px"></div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                        <img src="/static/app/assets/images/coins/dash.png" alt="" style="width:30px">
                                                                </td><td>
                                                                    <a href="javascript:void(0);">Dashcoin</a>
                                                                </td>
                                                                
                                                                <td>500,421</td>
                                                                <td>9,000,000</td>                                   
                                                                <td>$ , BTC , ETH</td>
                                                                <td>
                                                                    <ul class="list-unstyled list-inline">
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-bitcoin text-primary"></i></a></li>                                                    
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-medium text-danger"></i></a></li>
                                                                        <li class="list-inline-item"><a href="#"><i class="fa fa-twitter text-info"></i></a></li>
                                                                    </ul>
                                                                </td>
                                                                <td>
                                                                        <div data-role="countdown" data-hours="500" style="width:70px"></div>
                                                                </td>
                                                            </tr>
                                                            
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

                <footer class="footer">
                    © 2018 Annex by Mannatthemes. 更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a>
                </footer>

            </div>
            <!-- End Right content here -->

        </div>
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

        <script src="/static/app/assets/plugins/metro/metro.js"></script>

        <!-- App js -->
        <script src="/static/app/assets/js/app.js"></script>

    </body>
</html>