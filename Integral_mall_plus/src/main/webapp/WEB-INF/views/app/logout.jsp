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
        <title>Annex - Responsive Bootstrap 4 Admin Dashboard</title>
        <meta content="Admin Dashboard" name="description" />
        <meta content="Mannatthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="/static/app/assets/images/favicon.ico">

        <link href="/static/app/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="/static/app/assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="/static/app/assets/css/style.css" rel="stylesheet" type="text/css">

    </head>


    <body>

        
        <!-- Begin page -->
        <div class="accountbg"></div>
        <div class="wrapper-page">

            <div class="card">
                <div class="card-body">

                    <h3 class="text-center mt-0 m-b-15">
                        <a href="index.html" class="logo logo-admin"><img src="/static/app/assets/images/logo.png" height="24" alt="logo"></a>
                    </h3>

                    <div class="p-3">
                        <div class="text-center">
                            <h5><i class="mdi mdi-lock mr-1 text-danger"></i>Logged Out</h5>
                            <p class="text-muted pt-2 font-14">Thank You For Used My Admin Template.</p>
                        </div>
                        <div class="form-group text-center row m-t-20">
                            <div class="col-12">
                                <a href="/app" class="btn btn-danger btn-block waves-effect waves-light text-white">Log In</a>
                            </div>
                        </div>
                    </div>  

                </div>
            </div>
        </div>



        <!-- jQuery  -->
        <script src="/static/app/assets/js/jquery.min.js"></script>
        <script src="/static/app/assets/js/popper.min.js"></script>
        <script src="/static/app/assets/js/bootstrap.min.js"></script>
        <script src="/static/app/assets/js/modernizr.min.js"></script>
        <script src="/static/app/assets/js/waves.js"></script>
        <script src="/static/app/assets/js/jquery.slimscroll.js"></script>
        <script src="/static/app/assets/js/jquery.nicescroll.js"></script>
        <script src="/static/app/assets/js/jquery.scrollTo.min.js"></script>

        <!-- App js -->
        <script src="/static/app/assets/js/app.js"></script>

    </body>
</html>