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
                                <a href="ico.jsp" class="waves-effect"><i class="mdi mdi-biohazard"></i><span> ICO Landing </span></a>
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
                                                <li class="breadcrumb-item active">Wallet</li>
                                            </ol>
                                        </div>
                                        <h4 class="page-title">My Wallet</h4>
                                    </div>
                                </div>
                            </div>
                            <!-- end page title end breadcrumb -->
                            <div class="row">
                                <div class="col-md-4 col-xl-2">
                                    <div class="card m-b-30">
                                        <div class="card-body">                                           
                                            <div class=" text-center">                        
                                                <img src="/static/app/assets/images/users/avatar-1.jpg" alt="" class="rounded-circle img-thumbnail w-50">
                                                <h4 class="font-16">Steven Meyers</h4>
                                                <a href="" class="text-muted font-14">StevenMeyers@gmail.com</a>
                                                <ul class="list-unstyled list-inline mb-0 mt-3">
                                                    <li class="list-inline-item"><a href="#"><i class="ti-facebook text-primary"></i></a></li>                                                    
                                                    <li class="list-inline-item"><a href="#"><i class="ti-linkedin text-danger"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i class="ti-twitter-alt text-info"></i></a></li>
                                                </ul>
                                                <a href="" class="btn btn-primary btn-sm mt-2">Wallet Lock</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>    
                                <div class="col-md-8 col-xl-6">
                                    <div class="tab-2 m-b-30">
                                        <ul class="nav nav-tabs">
                                            <li class="nav-item">
                                                <a class="nav-link active" href="#home-2" data-toggle="tab" aria-expanded="false">Bitcoin</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#profile-2" data-toggle="tab" aria-expanded="false">Dashcoin</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#about-2" data-toggle="tab" aria-expanded="false">Ethereum</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#contact-2" data-toggle="tab" aria-expanded="false">Litecoin</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content bg-white">
                                            <div class="tab-pane active home-text p-4 text-center" id="home-2">
                                                <img src="/static/app/assets/images/coins/btc.png" alt="">
                                                <h1 class="mt-2">3.18424000 <small>BTC</small></h1>
                                                <h6>$ 33277.36605044718</h6>
                                                <a href="#" class="btn btn-primary mt-3">Send</a>
                                                <a href="#" class="btn btn-primary mt-3">Receive</a>
                                            </div>
                                            <div class="tab-pane p-4 text-center" id="profile-2">
                                                <img src="/static/app/assets/images/coins/dash.png" alt="">
                                                <h1 class="mt-2">2.99424000 <small>DASH</small></h1>
                                                <h6>$ 277.36605044718</h6>
                                                <a href="#" class="btn btn-primary mt-3">Send</a>
                                                <a href="#" class="btn btn-primary mt-3">Receive</a>
                                            </div>
                                            <div class="tab-pane p-4 text-center" id="about-2">
                                                <img src="/static/app/assets/images/coins/eth.png" alt="">
                                                <h1 class="mt-2">1.17424000 <small>ETH</small></h1>
                                                <h6>$ 77.36605044718</h6>
                                                <a href="#" class="btn btn-primary mt-3">Send</a>
                                                <a href="#" class="btn btn-primary mt-3">Receive</a>
                                            </div>
                                            <div class="tab-pane p-4 text-center" id="contact-2">
                                                <img src="/static/app/assets/images/coins/lite.png" alt="">
                                                <h1 class="mt-2">5.00024000 <small>LTC</small></h1>
                                                <h6>$ 57.36605044718</h6>
                                                <a href="#" class="btn btn-primary mt-3">Send</a>
                                                <a href="#" class="btn btn-primary mt-3">Receive</a>
                                            </div>
                                        </div>
                                    </div>                    
                                </div>
                                <div class="col-md-12 col-xl-4">
                                    <div class="card m-b-30">
                                        <div class="card-body" >
                                            <h4 class="mt-0 header-title">Currency Cacculater</h4>                                            
                                            <div class="calculator-block" style="height:210px">                        
                                                <div class="calculator-body">                                                      
                                                    <!-- <!--<script src="https://www.cryptonator.com/ui/js/widget/calc_widget.js"></script>--> --> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>    
                            </div> <!-- end row -->

                            <div class="row">
                                <div class="col-md-12 col-xl-6">
                                    <div class="card m-b-30">
                                        <div class="card-body">
                                            <h4 class="mt-0 header-title">Buy BTC</h4>                                            
                                            <form class="form-horizontal" role="form">
                                                <div class="form-group mb-0 row">
                                                    <div class="col-md-12">
                                                        <div class="input-group mt-3">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text bg-light" id="basic-addon1">Amount</span>
                                                            </div>
                                                            <input type="text" class="form-control" placeholder="123" aria-label="123" aria-describedby="basic-addon1">
                                                            <div class="input-group-append">
                                                                <span class="input-group-text bg-light" id="basic-addon2">BTC</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="input-group mt-3">
                                                            <div class="input-group-prepend">
                                                                    <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Price</button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Last Trade Price</a>
                                                                    <a class="dropdown-item" href="#">Last Buy Price</a>
                                                                    <a class="dropdown-item" href="#">Last Sell Price</a>
                                                                </div>
                                                            </div>
                                                            <input type="email" id="example-input2-group3" name="example-input2-group3" class="form-control" placeholder="$ 24,00">
                                                            <div class="input-group-append">
                                                                <span class="input-group-text bg-light" id="basic-addon4">$ Dollor</span>
                                                            </div>
                                                                
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="input-group mt-3">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text bg-light" id="basic-addon5">Total</span>
                                                            </div>
                                                            <input type="text" class="form-control" placeholder="123" aria-label="123" aria-describedby="basic-addon1">
                                                            <div class="input-group-append">
                                                                <span class="input-group-text bg-light" id="basic-addon6">$ Dollor</span>
                                                            </div>
                                                        </div>                                                        
                                                    </div>
                                                    <div class="col-md-3 mt-3 ml-auto">
                                                        <a href="#" class="btn btn-success btn-block">Buy Coins</a>
                                                    </div>
                                                </div> <!--end row-->           
                                            </form>     
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-12 col-xl-6">
                                    <div class="card m-b-30">
                                        <div class="card-body">
                                            <h4 class="mt-0 header-title">Sell BTC</h4>                                            
                                            <form class="form-horizontal" role="form">
                                                <div class="form-group mb-0 row">
                                                    <div class="col-md-12">
                                                        <div class="input-group mt-3">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text bg-light" id="basic-addon7">Amount</span>
                                                            </div>
                                                            <input type="text" class="form-control" placeholder="123" aria-label="123" aria-describedby="basic-addon1">
                                                            <div class="input-group-append">
                                                                <span class="input-group-text bg-light" id="basic-addon8">BTC</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="input-group mt-3">
                                                            <div class="input-group-prepend">
                                                                <button type="button" class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Price
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Last Trade Price</a>
                                                                    <a class="dropdown-item" href="#">Last Buy Price</a>
                                                                    <a class="dropdown-item" href="#">Last Sell Price</a>
                                                                </div>
                                                            </div>
                                                            <input type="email" id="example-input2-group3" name="example-input2-group3" class="form-control" placeholder="$ 24,00">
                                                            <div class="input-group-append">
                                                                <span class="input-group-text bg-light" id="basic-addon9">$ Dollor</span>
                                                            </div>
                                                                
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="input-group mt-3">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text bg-light" id="basic-addon10">Total</span>
                                                            </div>
                                                            <input type="text" class="form-control" placeholder="123" aria-label="123" aria-describedby="basic-addon1">
                                                            <div class="input-group-append">
                                                                <span class="input-group-text bg-light" id="basic-addon11">$ Dollor</span>
                                                            </div>
                                                        </div>                                                        
                                                    </div>
                                                    <div class="col-md-3 mt-3 ml-auto">
                                                        <a href="#" class="btn btn-danger btn-block">Sell Coins</a>
                                                    </div>
                                                </div> <!--end row-->           
                                            </form>     
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end row --> 
                            <div class="row">
                                <div class="col-md-12 col-xl-6">
                                    <div class="mini-stat clearfix bg-white">
                                        <h4 class="mt-0 header-title">24 Hour Volume</h4> 
                                        <div class="row align-items-center">
                                            <div class="col-4 mt-1">
                                                <img src="/static/app/assets/images/coins/btc.png" alt="" class="rounded-curcle">
                                            </div>
                                            <div class="col-4">
                                                <h4 class="counter text-dark m-0 pb-1">$ 11852 <small class="text-success font-14"><i class="mdi mdi-arrow-up"></i> 5.45%</small></h4>
                                                <small class="text-muted">Today High</small>
                                            </div>
                                            <div class="col-4">
                                                <h4 class="counter text-dark m-0 pb-1">$ 10582 <small class="text-danger font-14"><i class="mdi mdi-arrow-down"></i> -3.15%</small></h4>
                                                <small class="text-muted">Today Low</small>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-md-6 col-xl-3">
                                    <div class="mini-stat clearfix bg-white">
                                        <div class="row align-items-center">
                                            <div class="col-4">
                                                <img src="/static/app/assets/images/coins/lite.png" alt="" class="rounded-curcle">
                                            </div>
                                            <div class="col-6 ml-auto text-center">
                                                <h2>$ 9055</h2>
                                                <small class="text-muted">USD Deposit</small>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xl-3">
                                    <div class="mini-stat clearfix bg-white">
                                        <div class="row align-items-center">
                                            <div class="col-4">
                                                <img src="/static/app/assets/images/coins/dollar.png" alt="" class="rounded-curcle">
                                            </div>
                                            <div class="col-6 ml-auto text-center">
                                                <h2>$ 20533</h2>
                                                <small class="text-muted">Total Deposit</small>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end row -->

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

        <!-- App js -->
        <script src="/static/app/assets/js/app.js"></script>

    </body>
</html>