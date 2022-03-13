<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--<!doctype html>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.87.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
          crossorigin="anonymous">
    <title>Member Dashboard</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/dashboard/">

    <%--Adding datatables css and js--%>
    <!--<link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">-->


    <!-- Bootstrap core CSS -->
    <!--<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">-->
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        body{
            background:#eee;
            margin-top:20px;
        }

        .panel {
            box-shadow: 0 2px 0 rgba(0,0,0,0.05);
            border-radius: 0;
            border: 0;
            margin-bottom: 24px;
        }

        .panel-dark.panel-colorful {
            background-color: #3b4146;
            border-color: #3b4146;
            color: #fff;
        }

        .panel-danger.panel-colorful {
            background-color: #f76c51;
            border-color: #f76c51;
            color: #fff;
        }

        .panel-primary.panel-colorful {
            background-color: #5fa2dd;
            border-color: #5fa2dd;
            color: #fff;
        }

        .panel-info.panel-colorful {
            background-color: #4ebcda;
            border-color: #4ebcda;
            color: #fff;
        }

        .panel-body {
            padding: 25px 20px;
        }

        .panel hr {
            border-color: rgba(0,0,0,0.1);
        }

        .mar-btm {
            margin-bottom: 15px;
        }

        h2, .h2 {
            font-size: 28px;
        }

        .small, small {
            font-size: 85%;
        }

        .text-sm {
            font-size: .9em;
        }

        .text-thin {
            font-weight: 300;
        }

        .text-semibold {
            font-weight: 600;
        }

        <!--Second Set Widget-->
            body{
                background:#eee;
            }

        .card-box {
            position: relative;
            color: #fff;
            padding: 20px 10px 40px;
            margin: 20px 0px;
        }
        .card-box:hover {
            text-decoration: none;
            color: #f1f1f1;
        }
        .card-box:hover .icon i {
            font-size: 100px;
            transition: 1s;
            -webkit-transition: 1s;
        }
        .card-box .inner {
            padding: 5px 10px 0 10px;
        }
        .card-box h3 {
            font-size: 27px;
            font-weight: bold;
            margin: 0 0 8px 0;
            white-space: nowrap;
            padding: 0;
            text-align: left;
        }
        .card-box p {
            font-size: 15px;
        }
        .card-box .icon {
            position: absolute;
            top: auto;
            bottom: 5px;
            right: 5px;
            z-index: 0;
            font-size: 72px;
            color: rgba(0, 0, 0, 0.15);
        }
        .card-box .card-box-footer {
            position: absolute;
            left: 0px;
            bottom: 0px;
            text-align: center;
            padding: 3px 0;
            color: rgba(255, 255, 255, 0.8);
            background: rgba(0, 0, 0, 0.1);
            width: 100%;
            text-decoration: none;
        }
        .card-box:hover .card-box-footer {
            background: rgba(0, 0, 0, 0.3);
        }
        .bg-blue {
            background-color: #00c0ef !important;
        }
        .bg-green {
            background-color: #00a65a !important;
        }
        .bg-orange {
            background-color: #f39c12 !important;
        }
        .bg-red {
            background-color: #d9534f !important;
        }

    </style>
<%--    <style>--%>
<%--        .bd-placeholder-img {--%>
<%--            font-size: 1.125rem;--%>
<%--            text-anchor: middle;--%>
<%--            -webkit-user-select: none;--%>
<%--            -moz-user-select: none;--%>
<%--            user-select: none;--%>
<%--        }--%>

<%--        @media (min-width: 768px) {--%>
<%--            .bd-placeholder-img-lg {--%>
<%--                font-size: 3.5rem;--%>
<%--            }--%>
<%--        }--%>
<%--    </style>--%>


    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="<c:url value="/css/dashboard.css" />">

    <!--Bootstrap Datatables Bootstrap 4 -->
    <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">-->
    <!--<link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">-->

    <!--Bootstrap Datatables Bootstrap 5 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap5.min.css">


</head>
<body>

<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">FCC YOUTH </a>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
    <div class="navbar-nav">
        <div class="nav-item text-nowrap">
            <a class="nav-link px-3" href="#">Sign out</a>
        </div>
    </div>
</header>

<div class="container-fluid">
    <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light bg-gradient sidebar collapse">
            <div class="position-sticky pt-3">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="<spring:url value="/"/>">
                            <span data-feather="home"></span>
                            Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<spring:url value="/memberList"/>">
                            <span data-feather="users"></span>
                            Member List
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="<spring:url value="/paymentList"/>">
                            <span data-feather="dollar-sign"></span>
                            Payments
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="message-square"></span>
                            Message Centre
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="bar-chart-2"></span>
                            Reports
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="life-buoy"></span>
                            About
                        </a>
                    </li>
                </ul>

                <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                    <span>Saved reports</span>
                    <a class="link-secondary" href="#" aria-label="Add a new report">
                        <span data-feather="bookmark"></span>
                    </a>
                </h6>
                <ul class="nav flex-column mb-2">
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="inbox"></span>
                            Current month
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="inbox"></span>
                            Last quarter
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="inbox"></span>
                            Yearly report
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="archive"></span>
                            Archived report
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Dashboard</h1>
                <div class="btn-toolbar mb-2 mb-md-0">
                    <div class="btn-group me-2">
                        <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
                        <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
                    </div>
                    <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
                        <span data-feather="calendar"></span>
                        This week
                    </button>
                </div>
            </div>

            <ol class="breadcrumb breadcrumb-md bg-white">
                <li class="breadcrumb-item">
                    <a href="<spring:url value='/'/>">Dashboard</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="<spring:url value='/paymentList'/>">Transaction History</a>
                </li>
                <li class="breadcrumb-item active">Member Transaction details</li>
            </ol>
            <a class="btn btn-secondary btn-sm mb-3 ml-90%" style="border-radius:15px" href="<spring:url value="#"/>" type="button"><i class="fas fa-user px-1"></i>Add New Payment</a>
            <br>
            <br>
            <p class="h3 text-center text-muted">${userPaymentDetails.user.surname}, ${userPaymentDetails.user.firstName} ${userPaymentDetails.user.otherName}</p>
            <p class="h5 text-center text-muted">${userPaymentDetails.user.phoneNumber}</p>
            <p class="h6 text-center text-muted">${userPaymentDetails.user.email}</p>
            <br>
            <br>
            <!--Beginning of widget-->
            <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
            <div class="container bootstrap snippets bootdey">
                <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="panel panel-info panel-colorful">
                            <div class="panel-body text-center">
                                <p class="text-uppercase mar-btm text-sm">Total Payments(YTD)</p>
                                <i class="fa fa-dollar fa-5x"></i>
                                <hr>
                                <p class="h2 text-thin">7,428</p>
                                <small><span class="text-semibold"><i class="fa fa-dollar fa-fw"></i> 22,675</span> Total Earning</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="panel panel-primary panel-colorful">
                            <div class="panel-body text-center">
                                <p class="text-uppercase mar-btm text-sm">Last Transaction</p>
                                <i class="fa fa-shopping-cart fa-5x"></i>
                                <hr>
                                <p class="h2 text-thin">$12</p>
                                <small><span class="text-semibold"><i class="fa fa-shopping-cart fa-fw"></i> $12</span> 20th October 2021</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="panel panel-danger panel-colorful">
                            <div class="panel-body text-center">
                                <p class="text-uppercase mar-btm text-sm">Upcoming Events</p>
                                <i class="fa fa-comment fa-5x"></i>
                                <hr>
                                <p class="h2 text-thin">Birthday</p>
                                <small><span class="text-semibold"><i class="fa fa-unlock-alt fa-fw"></i> 154</span> 12th December</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="panel panel-dark panel-colorful">
                            <div class="panel-body text-center">
                                <p class="text-uppercase mar-btm text-sm">Total attendance(YTD)</p>
                                <i class="fa fa-users fa-5x"></i>
                                <hr>
                                <p class="h2 text-thin">13</p>
                                <small><span class="text-semibold">7%</span> Last week</small>
                            </div>
                        </div>
                        </div>
                    </div>
<%--                </div>--%>
            </div>
            <!--End of widget-->
            <br>
            <br>
            <!-- table heading -->
            <p class="h3 text-center text-muted">Transaction History</p>

            <!--Beginning of table-->
            <div class="table-responsive" >
                <table class="table table-striped table-hover table-light" id="paymentTable">
                    <thead>
                    <tr class="bg-primary">
                        <th scope="col" >Type</th>
                        <th scope="col">Amount</th>
                        <th scope="col">balance</th>
                        <th scope="col">PayedTo</th>
                        <th scope="col">Time</th>
                        <th scope="col">Date</th>
                    </tr>
                    </thead>
                    <c:forEach items="${userPaymentDetails.userPayment}" var="userPaymentDetails">
                        <tr>
                            <td>${userPaymentDetails.type}</td>
                            <td>${userPaymentDetails.amount}</td>
                            <td>${userPaymentDetails.balance}</td>
                            <td>${userPaymentDetails.payedTo}</td>
                            <td>${userPaymentDetails.timeStamp}</td>
                            <td>${userPaymentDetails.transactionDate}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <!--End of table-->
        </main>
    </div>
</div>

<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
<script src="<c:url value="/js/dashboard.js" />"></script>
<!--JQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<!--Data tables -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready( function () {
        $('#paymentTable').DataTable();
    } );
</script>

</body>
</html>


