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



    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">

    <%--  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">


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
    </style>


    <!-- Custom styles for this template -->
    <link href="<c:url value="/css/dashboard.css" />" rel="stylesheet">
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
                        <a class="nav-link" aria-current="page" href="#">
                            <span data-feather="home"></span>
                            Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="<spring:url value="/memberList"/>">
                            <span data-feather="users"></span>
                            Member List
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<spring:url value="/paymentList"/>">
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
                    <a href="<spring:url value='/memberList'/>">Member List</a>
                </li>
                <li class="breadcrumb-item active">View Member Details</li>
            </ol>

            <!-- Add New Member Details-->
            <div class="container rounded bg-light mt-5 mb-5">
                <div class="row">
                    <div class="col-md-3 border-right">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold"><!-- Add name Eg Edogaru--></span><span class="text-black-50"><!-- Add email here edogaru@mail.com.my--></span><span> </span></div>
                    </div>
                    <div class="col-md-5 border-right">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4 class="text-right">Member Details</h4>
                            </div>
                            <div class="row mt-2">
                                <div class="col-md-6"><label class="labels">Surname</label><input type="text" class="form-control" placeholder="surname" value="${user.surname}" readonly></div>
                                <!--<div class="col-md-6"><label class="labels">Surname</label><input type="text" class="form-control" value="" placeholder="surname" readonly></div> -->
                            </div>
                            <div class="row mt-2">
                                <div class="col-md-6"><label class="labels">First Name</label><input type="text" class="form-control" placeholder="first name" value="${user.firstName}" readonly></div>
                                <div class="col-md-6"><label class="labels">Other Name</label><input type="text" class="form-control" value="${user.otherName}" placeholder="other name" readonly></div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-md-6">
                                    <label class="labels" >Birth month</label>
                                    <select class="custom-select mr-sm-2" id="inlineFormCustomSelectM">
                                        <option disabled selected readonly>${user.id}</option>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label class="labels">Birth Day</label>
                                    <select class="custom-select mr-sm-2" id="inlineFormCustomSelectD">
                                        <option disabled selected readonly>${user.id}</option>
                                    </select>
                                </div>
                                <div class="col-md-12 mt-2"><label class="labels">Email</label><input type="text" class="form-control" placeholder="some-mail@something.com" value="${user.email}" readonly></div>
                                <div class="col-md-12 mt-2"><label class="labels">Phone Number</label><input type="text" class="form-control" placeholder="04XXXXXXXX, 02XXXXXXXX" value="${user.phoneNumber}" readonly></div>
                            </div>
                            <div class="mt-5 text-center"><a class="btn btn-danger profile-button" href="<spring:url value='/memberList/editUserDetails/${user.id}'/>"> Edit Member Details</a></div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center experience"><span></span><span class="border px-3 p-1 add-experience"><i class="fas fa-home"></i>&nbsp;Address</span></div><br>
                            <div class="row pl-3">
                                <div class="col-md-6"><label class="labels">Unit No(Optional)</label><input type="text" class="form-control" placeholder="10, 20, 35" value="${user.address.unitNumber}" readonly></div>
                                <div class="col-md-6 pr-5"><label class="labels">Street No</label><input type="text" class="form-control" value="${user.address.streetNo}" placeholder="Street No" readonly></div>
                            </div>
                            <div class="col-md-12 mt-2"><label class="labels">Street Name</label><input type="text" class="form-control" placeholder="Adelaide St, Elizabeth Rd" value="${user.address.streetName}" disabled></div>
                            <div class="col-md-12  mt-2"><label class="labels">Suburb</label><input type="text" class="form-control" placeholder="Bankstown, Oxley Park, Bardia" value="${user.address.city}" readonly></div>
                            <div class="col-md-12 mt-2"><label class="labels">Post Code</label><input type="text" class="form-control" placeholder="2760, 2547, 2000" value="${user.address.postalCode}" readonly></div>
                            <div class="row mt-2">
                                <div class="col-md-6"><label class="labels">State/Region</label><input type="text" class="form-control" placeholder="" value="${user.address.state}" readonly></div>
                                <div class="col-md-6"><label class="labels">Country</label><input type="text" class="form-control" value="${user.address.country}" placeholder="" readonly></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
<!-- End of Add New Member Details-->

</main>
</div>
</div>


<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
<script src="<c:url value="/js/dashboard.js" />"></script>
</body>
</html>
