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
  </style>


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

      <ol class="breadcrumb breadcrumb-md">
        <li class="breadcrumb-item">
          <a href="<spring:url value='/'/>">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Member List</li>
      </ol>
<%--      <button class="btn btn-secondary btn-sm mb-3 ml-90%" style="border-radius:15px" type="button">--%>
<%--        <i class="fas fa-user px-1"></i>Add New Member</button>--%>
      <a class="btn btn-secondary btn-sm mb-3 ml-90%" style="border-radius:15px" href="<spring:url value="/memberList/addUserDetails"/>" type="button"><i class="fas fa-user px-1"></i>Add New Member</a>
      <div class="table-responsive" >
        <table class="table table-striped table-hover table-light" id="memberTable">
          <thead>
          <tr class="bg-primary">
            <th scope="col" >Surname</th>
            <th scope="col">First Name</th>
            <th scope="col">Other Name</th>
            <th scope="col">Phone Number</th>
            <th scope="col">Email</th>
            <th scope="col">Actions</th>
          </tr>
          </thead>
          <c:forEach items="${allUsers}" var="allUsers">
            <tr>
              <td>${allUsers.surname}</td>
              <td>${allUsers.firstName}</td>
              <td>${allUsers.otherName}</td>
              <td>${allUsers.phoneNumber}</td>
              <td>${allUsers.email}</td>
              <td>
                   <a class="btn btn-primary mr-3" style="border-radius:15px" href="<spring:url value="/memberList/viewUserDetails/${allUsers.id}"/>" type="button"><i class="fas fa-user-edit px-1"></i>Details</a>
                   <a class="btn btn-success " style="border-radius:15px" href="#" type="button"><i class="fas fa-money-bill-alt px-1"></i>Payment</a>

<%--                <button type="button" class="btn btn-primary btn-sm mr-3" style="border-radius:15px"><i class="fas fa-user-edit px-1"></i>Details</button>--%>
<%--                <button type="button" class="btn btn-success btn-sm" style="border-radius:15px"><i class="fas fa-money-bill-alt px-1"></i>Payment</button>--%>
              </td>
            </tr>
          </c:forEach>
        </table>
      </div>
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
    $('#memberTable').DataTable();
  } );
</script>

</body>
</html>

