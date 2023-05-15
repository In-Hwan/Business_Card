<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <title>DREAM</title>

  <link rel="canonical" href="https://www.creative-tim.com/product/black-dashboard"/>

  <meta name="keywords"
        content="creative tim, html dashboard, html css dashboard, web dashboard, bootstrap 4 dashboard, bootstrap 4, css3 dashboard, bootstrap 4 admin, black dashboard bootstrap 4 dashboard, frontend, responsive bootstrap 4 dashboard, black design, black dashboard bootstrap 4 dashboard">
  <meta name="description"
        content="Black Dashboard PRO is a beautiful Bootstrap 4 admin dashboard with a large number of components, designed to look beautiful, clean and organized. If you are looking for a tool to manage dates about your business, this dashboard is the thing for you.">

  <meta itemprop="name" content="Black Dashboard PRO by Creative Tim">
  <meta itemprop="description"
        content="Black Dashboard PRO is a beautiful Bootstrap 4 admin dashboard with a large number of components, designed to look beautiful, clean and organized. If you are looking for a tool to manage dates about your business, this dashboard is the thing for you.">
  <meta itemprop="image" content="https://s3.amazonaws.com/creativetim_bucket/products/93/opt_bd_thumbnail.jpg">

  <meta name="twitter:card" content="product">
  <meta name="twitter:site" content="@creativetim">
  <meta name="twitter:title" content="Black Dashboard PRO by Creative Tim">
  <meta name="twitter:description"
        content="Black Dashboard PRO is a beautiful Bootstrap 4 admin dashboard with a large number of components, designed to look beautiful, clean and organized. If you are looking for a tool to manage dates about your business, this dashboard is the thing for you.">
  <meta name="twitter:creator" content="@creativetim">
  <meta name="twitter:image" content="https://s3.amazonaws.com/creativetim_bucket/products/93/opt_bd_thumbnail.jpg">

  <meta property="fb:app_id" content="655968634437471">
  <meta property="og:title" content="Black Dashboard PRO by Creative Tim"/>
  <meta property="og:type" content="article"/>
  <meta property="og:url" content="http://demos.creative-tim.com/black-dashboard-pro/examples/dashboard.html"/>
  <meta property="og:image" content="https://s3.amazonaws.com/creativetim_bucket/products/93/opt_bd_thumbnail.jpg"/>
  <meta property="og:description"
        content="Black Dashboard PRO is a beautiful Bootstrap 4 admin dashboard with a large number of components, designed to look beautiful, clean and organized. If you are looking for a tool to manage dates about your business, this dashboard is the thing for you."/>
  <meta property="og:site_name" content="Creative Tim"/>

  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet"/>
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <%--  <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />--%>

  <%--  <link href="../assets/css/black-dashboard.min.css?v=1.1.1" rel="stylesheet" />--%>

  <%--  <link href="../assets/demo/demo.css" rel="stylesheet" />--%>
</head>
<body class="sidebar-mini ">
<div class="wrapper">
  <div class="navbar-minimize-fixed">
    <button class="minimize-sidebar btn btn-link btn-just-icon">
      <i class="tim-icons icon-align-center visible-on-sidebar-regular text-muted"></i>
      <i class="tim-icons icon-bullet-list-67 visible-on-sidebar-mini text-muted"></i>
    </button>
  </div>
  <div class="sidebar">

    <div class="sidebar-wrapper">
      <div class="logo">
        <%--        <a href="javascript:void(0)" class="simple-text logo-mini">--%>
        <%--          CT--%>
        <%--        </a>--%>
        <!-- 메인 페이지 로고 // 중앙 위치 -->
        <a href="SmartFarmMain.jsp" class="simple-text logo-normal">
          MainLogo // SmartFarm
        </a>
      </div>
      <ul class="nav">
        <li class="active">
          <a href="../examples/dashboard.html">
            <i class="tim-icons icon-chart-pie-36"></i>
            <p>Main</p>
          </a>
        </li>
        <!-- 왼쪽 사이브바 메인 액션 -->
        <li>
          <a data-toggle="collapse" href="#pagesExamples">
            <i class="tim-icons icon-image-02"></i>
            <p>
              page
              <b class="caret"></b>
            </p>
          </a>
          <div class="collapse" id="pagesExamples">
            <ul class="nav">
              <li>

                <a href="../examples/pages/pricing.html">
                  <span class="sidebar-mini-icon">P</span>
                  <span class="sidebar-normal"> Pricing </span>
                </a>
              </li>
              <li>
                <a href="../examples/pages/rtl.html">
                  <span class="sidebar-mini-icon">RS</span>
                  <span class="sidebar-normal"> RTL Support </span>
                </a>
              </li>
              <li>
                <a href="../examples/pages/timeline.html">
                  <span class="sidebar-mini-icon">T</span>
                  <span class="sidebar-normal"> Timeline </span>
                </a>
              </li>
              <li>
                <a href="../examples/pages/login.html">
                  <span class="sidebar-mini-icon">L</span>
                  <span class="sidebar-normal"> Login </span>
                </a>
              </li>
              <li>
                <a href="../examples/pages/register.html">
                  <span class="sidebar-mini-icon">R</span>
                  <span class="sidebar-normal"> Register </span>
                </a>
              </li>
              <li>
                <a href="../examples/pages/lock.html">
                  <span class="sidebar-mini-icon">LS</span>
                  <span class="sidebar-normal"> Lock Screen </span>
                </a>
              </li>
              <li>
                <a href="../examples/pages/user.html">
                  <span class="sidebar-mini-icon">UP</span>
                  <span class="sidebar-normal"> User Profile </span>
                </a>
              </li>
            </ul>
          </div>
        </li>

        <!-- 왼쪽 사이드바 모니터링 액션 --->
        <li>
          <a data-toggle="collapse" href="#componentsExamples">
            <i class="tim-icons icon-molecule-40"></i>
            <p>
              모니터링
              <b class="caret"></b>
            </p>
          </a>
          <div class="collapse" id="componentsExamples">
            <ul class="nav">
              <li>
                <a data-toggle="collapse" aria-expanded="false" href="#multicollapse">
                  <span class="sidebar-mini-icon">MLT</span>
                  <span class="sidebar-normal"> Multi Level Collapse
                                        <b class="caret"></b>
                                    </span>
                </a>
                <div class="collapse" id="multicollapse">
                  <ul class="nav">
                    <li>
                      <a>
                        <span class="sidebar-mini-icon">E</span>
                        <span class="sidebar-normal"> Example </span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li>
                <a href="../examples/components/buttons.html">
                  <span class="sidebar-mini-icon">B</span>
                  <span class="sidebar-normal"> Buttons </span>
                </a>
              </li>
              <li>
                <a href="../examples/components/grid.html">
                  <span class="sidebar-mini-icon">G</span>
                  <span class="sidebar-normal"> Grid System </span>
                </a>
              </li>
              <li>
                <a href="../examples/components/panels.html">
                  <span class="sidebar-mini-icon">P</span>
                  <span class="sidebar-normal"> Panels </span>
                </a>
              </li>
              <li>
                <a href="../examples/components/sweet-alert.html">
                  <span class="sidebar-mini-icon">SA</span>
                  <span class="sidebar-normal"> Sweet Alert </span>
                </a>
              </li>
              <li>
                <a href="../examples/components/notifications.html">
                  <span class="sidebar-mini-icon">N</span>
                  <span class="sidebar-normal"> Notifications </span>
                </a>
              </li>
              <li>
                <a href="../examples/components/icons.html">
                  <span class="sidebar-mini-icon">I</span>
                  <span class="sidebar-normal"> Icons </span>
                </a>
              </li>
              <li>
                <a href="../examples/components/typography.html">
                  <span class="sidebar-mini-icon">T</span>
                  <span class="sidebar-normal"> Typography </span>
                </a>
              </li>
            </ul>
          </div>
        </li>

        <!-- 왼쪽 사이브바 통계 액션 -->
        <li>
          <a data-toggle="collapse" href="#formsExamples">
            <i class="tim-icons icon-notes"></i>
            <p>
              통계
              <b class="caret"></b>
            </p>
          </a>
          <div class="collapse" id="formsExamples">
            <ul class="nav">
              <li>
                <a href="../examples/forms/regular.html">
                  <span class="sidebar-mini-icon">RF</span>
                  <span class="sidebar-normal"> Regular Forms </span>
                </a>
              </li>
              <li>
                <a href="../examples/forms/extended.html">
                  <span class="sidebar-mini-icon">EF</span>
                  <span class="sidebar-normal"> Extended Forms </span>
                </a>
              </li>
              <li>
                <a href="../examples/forms/validation.html">
                  <span class="sidebar-mini-icon">V</span>
                  <span class="sidebar-normal"> Validation Forms </span>
                </a>
              </li>
              <li>
                <a href="../examples/forms/wizard.html">
                  <span class="sidebar-mini-icon">W</span>
                  <span class="sidebar-normal"> Wizard </span>
                </a>
              </li>
            </ul>
          </div>
        </li>

        <!-- 왼쪽 사이드바 설정 액션 -->
        <li>
          <a data-toggle="collapse" href="#tablesExamples">
            <i class="tim-icons icon-puzzle-10"></i>
            <p>
              설정
              <b class="caret"></b>
            </p>
          </a>
          <div class="collapse" id="tablesExamples">
            <ul class="nav">
              <li>
                <a href="../examples/tables/regular.html">
                  <span class="sidebar-mini-icon">RT</span>
                  <span class="sidebar-normal"> Regular Tables </span>
                </a>
              </li>
              <li>
                <a href="../examples/tables/extended.html">
                  <span class="sidebar-mini-icon">ET</span>
                  <span class="sidebar-normal"> Extended Tables </span>
                </a>
              </li>
              <li>
                <a href="../examples/tables/datatables.net.html">
                  <span class="sidebar-mini-icon">DT</span>
                  <span class="sidebar-normal"> DataTables.net </span>
                </a>
              </li>
            </ul>
          </div>
        </li>
        <!-- 로그아웃 -->
        <li>
          <li><a href="logoutAction.jsp">로그아웃</a></li>
<%--          <a data-toggle="collapse" href="#mapsExamples">--%>
<%--            <i class="tim-icons icon-pin"></i>--%>
<%--            <p>--%>
<%--              Maps--%>
<%--              <b class="caret"></b>--%>
<%--            </p>--%>
<%--          </a>--%>
<%--          <div class="collapse" id="mapsExamples">--%>
<%--            <ul class="nav">--%>
<%--              <li>--%>
<%--                <a href="../examples/maps/google.html">--%>
<%--                  <span class="sidebar-mini-icon">GM</span>--%>
<%--                  <span class="sidebar-normal"> Google Maps </span>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--              <li>--%>
<%--                <a href="../examples/maps/fullscreen.html">--%>
<%--                  <span class="sidebar-mini-icon">FM</span>--%>
<%--                  <span class="sidebar-normal"> Full Screen Map </span>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--              <li>--%>
<%--                <a href="../examples/maps/vector.html">--%>
<%--                  <span class="sidebar-mini-icon">VM</span>--%>
<%--                  <span class="sidebar-normal"> Vector Map </span>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--            </ul>--%>
<%--          </div>--%>
<%--        </li>--%>
<%--        <li>--%>
<%--          <a href="../examples/widgets.html">--%>
<%--            <i class="tim-icons icon-settings"></i>--%>
<%--            <p>Widgets</p>--%>
<%--          </a>--%>
<%--        </li>--%>
        <li>
          <a href="../examples/charts.html">
            <i class="tim-icons icon-chart-bar-32"></i>
            <p>Charts</p>
          </a>
        </li>
        <li>
          <a href="../examples/calendar.html">
            <i class="tim-icons icon-time-alarm"></i>
            <p>Calendar</p>
          </a>
        </li>
      </ul>
    </div>
  </div>
  <div class="main-panel">

    <nav class="navbar navbar-expand-lg navbar-absolute navbar-transparent">
      <div class="container-fluid">
        <div class="navbar-wrapper">
          <div class="navbar-minimize d-inline">
            <button class="minimize-sidebar btn btn-link btn-just-icon" rel="tooltip"
                    data-original-title="Sidebar toggle" data-placement="right">
              <i class="tim-icons icon-align-center visible-on-sidebar-regular"></i>
              <i class="tim-icons icon-bullet-list-67 visible-on-sidebar-mini"></i>
            </button>
          </div>
          <div class="navbar-toggle d-inline">
            <button type="button" class="navbar-toggler">
              <span class="navbar-toggler-bar bar1"></span>
              <span class="navbar-toggler-bar bar2"></span>
              <span class="navbar-toggler-bar bar3"></span>
            </button>
          </div>
          <a class="navbar-brand" href="javascript:void(0)">Dashboard</a>
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation"
                aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-bar navbar-kebab"></span>
          <span class="navbar-toggler-bar navbar-kebab"></span>
          <span class="navbar-toggler-bar navbar-kebab"></span>
        </button>
        <div class="collapse navbar-collapse" id="navigation">
          <ul class="navbar-nav ml-auto">
            <li class="search-bar input-group">
              <button class="btn btn-link" id="search-button" data-toggle="modal"
                      data-target="#searchModal"><i class="tim-icons icon-zoom-split"></i>
                <span class="d-lg-none d-md-block">Search</span>
              </button>
            </li>
            <li class="dropdown nav-item">
              <a href="javascript:void(0)" class="dropdown-toggle nav-link" data-toggle="dropdown">
                <div class="notification d-none d-lg-block d-xl-block"></div>
                <i class="tim-icons icon-sound-wave"></i>
                <p class="d-lg-none">
                  Notifications
                </p>
              </a>
              <ul class="dropdown-menu dropdown-menu-right dropdown-navbar">
                <li class="nav-link">
                  <a href="#" class="nav-item dropdown-item">Mike John responded to your email</a>
                </li>
                <li class="nav-link">
                  <a href="javascript:void(0)" class="nav-item dropdown-item">You have 5 more
                    tasks</a>
                </li>
                <li class="nav-link">
                  <a href="javascript:void(0)" class="nav-item dropdown-item">Your friend Michael is
                    in town</a>
                </li>
                <li class="nav-link">
                  <a href="javascript:void(0)" class="nav-item dropdown-item">Another notification</a>
                </li>
                <li class="nav-link">
                  <a href="javascript:void(0)" class="nav-item dropdown-item">Another one</a>
                </li>
              </ul>
            </li>
            <li class="dropdown nav-item">
              <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                <div class="photo">
                  <img src="../assets/img/mike.jpg" alt="Profile Photo">
                </div>
                <b class="caret d-none d-lg-block d-xl-block"></b>
                <p class="d-lg-none">
                  Log out
                </p>
              </a>
              <ul class="dropdown-menu dropdown-navbar">
                <li class="nav-link">
                  <a href="javascript:void(0)" class="nav-item dropdown-item">Profile</a>
                </li>
                <li class="nav-link">
                  <a href="javascript:void(0)" class="nav-item dropdown-item">Settings</a>
                </li>
                <li class="dropdown-divider"></li>
                <li class="nav-link">
                  <a href="javascript:void(0)" class="nav-item dropdown-item">Log out</a>
                </li>
              </ul>
            </li>
            <li class="separator d-lg-none"></li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="modal modal-search fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModal"
         aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="SEARCH">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <i class="tim-icons icon-simple-remove"></i>
            </button>
          </div>
        </div>
      </div>
    </div>

    <div class="content">
      <div class="row">
        <div class="col-12">
          <div class="card card-chart">
            <div class="card-header">
              <div class="row">
                <div class="col-sm-6 text-left">
                  <h5 class="card-category">Total Shipments</h5>
                  <h2 class="card-title">Performance</h2>
                </div>
                <div class="col-sm-6">
                  <div class="btn-group btn-group-toggle float-right" data-toggle="buttons">
                    <label class="btn btn-sm btn-primary btn-simple active" id="0">
                      <input type="radio" name="options" checked>
                      <span class="d-none d-sm-block d-md-block d-lg-block d-xl-block">Accounts</span>
                      <span class="d-block d-sm-none">
<i class="tim-icons icon-single-02"></i>
</span>
                    </label>
                    <label class="btn btn-sm btn-primary btn-simple" id="1">
                      <input type="radio" class="d-none d-sm-none" name="options">
                      <span class="d-none d-sm-block d-md-block d-lg-block d-xl-block">Purchases</span>
                      <span class="d-block d-sm-none">
<i class="tim-icons icon-gift-2"></i>
</span>
                    </label>
                    <label class="btn btn-sm btn-primary btn-simple" id="2">
                      <input type="radio" class="d-none" name="options">
                      <span class="d-none d-sm-block d-md-block d-lg-block d-xl-block">Sessions</span>
                      <span class="d-block d-sm-none">
<i class="tim-icons icon-tap-02"></i>
</span>
                    </label>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="chart-area">
                <canvas id="chartBig1"></canvas>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="card card-stats">
            <div class="card-body">
              <div class="row">
                <div class="col-5">
                  <div class="info-icon text-center icon-warning">
                    <i class="tim-icons icon-chat-33"></i>
                  </div>
                </div>
                <div class="col-7">
                  <div class="numbers">
                    <p class="card-category">Number</p>
                    <h3 class="card-title">150GB</h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-footer">
              <hr>
              <div class="stats">
                <i class="tim-icons icon-refresh-01"></i> Update Now
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="card card-stats">
            <div class="card-body">
              <div class="row">
                <div class="col-5">
                  <div class="info-icon text-center icon-primary">
                    <i class="tim-icons icon-shape-star"></i>
                  </div>
                </div>
                <div class="col-7">
                  <div class="numbers">
                    <p class="card-category">Followers</p>
                    <h3 class="card-title">+45k</h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-footer">
              <hr>
              <div class="stats">
                <i class="tim-icons icon-sound-wave"></i> Last Research
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="card card-stats">
            <div class="card-body">
              <div class="row">
                <div class="col-5">
                  <div class="info-icon text-center icon-success">
                    <i class="tim-icons icon-single-02"></i>
                  </div>
                </div>
                <div class="col-7">
                  <div class="numbers">
                    <p class="card-category">Users</p>
                    <h3 class="card-title">150,000</h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-footer">
              <hr>
              <div class="stats">
                <i class="tim-icons icon-trophy"></i> Customers feedback
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="card card-stats">
            <div class="card-body">
              <div class="row">
                <div class="col-5">
                  <div class="info-icon text-center icon-danger">
                    <i class="tim-icons icon-molecule-40"></i>
                  </div>
                </div>
                <div class="col-7">
                  <div class="numbers">
                    <p class="card-category">Errors</p>
                    <h3 class="card-title">12</h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-footer">
              <hr>
              <div class="stats">
                <i class="tim-icons icon-watch-time"></i> In the last hours
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card card-chart">
            <div class="card-header">
              <h5 class="card-category">Total Shipments</h5>
              <h3 class="card-title"><i class="tim-icons icon-bell-55 text-primary"></i> 763,215</h3>
            </div>
            <div class="card-body">
              <div class="chart-area">
                <canvas id="chartLinePurple"></canvas>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card card-chart">
            <div class="card-header">
              <h5 class="card-category">Daily Sales</h5>
              <h3 class="card-title"><i class="tim-icons icon-delivery-fast text-info"></i> 3,500€</h3>
            </div>
            <div class="card-body">
              <div class="chart-area">
                <canvas id="CountryChart"></canvas>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card card-chart">
            <div class="card-header">
              <h5 class="card-category">Completed Tasks</h5>
              <h3 class="card-title"><i class="tim-icons icon-send text-success"></i> 12,100K</h3>
            </div>
            <div class="card-body">
              <div class="chart-area">
                <canvas id="chartLineGreen"></canvas>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-5">
          <div class="card card-tasks">
            <div class="card-header">
              <h6 class="title d-inline">Tasks(5)</h6>
              <p class="card-category d-inline">today</p>
              <div class="dropdown">
                <button type="button" class="btn btn-link dropdown-toggle btn-icon"
                        data-toggle="dropdown">
                  <i class="tim-icons icon-settings-gear-63"></i>
                </button>
                <div class="dropdown-menu dropdown-menu-right">
                  <a class="dropdown-item" href="#pablo">Action</a>
                  <a class="dropdown-item" href="#pablo">Another action</a>
                  <a class="dropdown-item" href="#pablo">Something else</a>
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="table-full-width table-responsive">
                <table class="table">
                  <tbody>
                  <tr>
                    <td>
                      <div class="form-check">
                        <label class="form-check-label">
                          <input class="form-check-input" type="checkbox" value="">
                          <span class="form-check-sign">
<span class="check"></span>
 </span>
                        </label>
                      </div>
                    </td>
                    <td>
                      <p class="title">Update the Documentation</p>
                      <p class="text-muted">Dwuamish Head, Seattle, WA 8:47 AM</p>
                    </td>
                    <td class="td-actions text-right">
                      <button type="button" rel="tooltip" title="" class="btn btn-link"
                              data-original-title="Edit Task">
                        <i class="tim-icons icon-pencil"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <div class="form-check">
                        <label class="form-check-label">
                          <input class="form-check-input" type="checkbox" value="" checked="">
                          <span class="form-check-sign">
<span class="check"></span>
</span>
                        </label>
                      </div>
                    </td>
                    <td>
                      <p class="title">GDPR Compliance</p>
                      <p class="text-muted">The GDPR is a regulation that requires businesses to
                        protect the personal data and privacy of Europe citizens for
                        transactions that occur within EU member states.</p>
                    </td>
                    <td class="td-actions text-right">
                      <button type="button" rel="tooltip" title="" class="btn btn-link"
                              data-original-title="Edit Task">
                        <i class="tim-icons icon-pencil"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <div class="form-check">
                        <label class="form-check-label">
                          <input class="form-check-input" type="checkbox" value="">
                          <span class="form-check-sign">
<span class="check"></span>
</span>
                        </label>
                      </div>
                    </td>
                    <td>
                      <p class="title">Solve the issues</p>
                      <p class="text-muted">Fifty percent of all respondents said they would be
                        more likely to shop at a company </p>
                    </td>
                    <td class="td-actions text-right">
                      <button type="button" rel="tooltip" title="" class="btn btn-link"
                              data-original-title="Edit Task">
                        <i class="tim-icons icon-pencil"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <div class="form-check">
                        <label class="form-check-label">
                          <input class="form-check-input" type="checkbox" value="">
                          <span class="form-check-sign">
<span class="check"></span>
</span>
                        </label>
                      </div>
                    </td>
                    <td>
                      <p class="title">Release v2.0.0</p>
                      <p class="text-muted">Ra Ave SW, Seattle, WA 98116, SUA 11:19 AM</p>
                    </td>
                    <td class="td-actions text-right">
                      <button type="button" rel="tooltip" title="" class="btn btn-link"
                              data-original-title="Edit Task">
                        <i class="tim-icons icon-pencil"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <div class="form-check">
                        <label class="form-check-label">
                          <input class="form-check-input" type="checkbox" value="">
                          <span class="form-check-sign">
<span class="check"></span>
</span>
                        </label>
                      </div>
                    </td>
                    <td>
                      <p class="title">Export the processed files</p>
                      <p class="text-muted">The report also shows that consumers will not easily
                        forgive a company once a breach exposing their personal data
                        occurs. </p>
                    </td>
                    <td class="td-actions text-right">
                      <button type="button" rel="tooltip" title="" class="btn btn-link"
                              data-original-title="Edit Task">
                        <i class="tim-icons icon-pencil"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <div class="form-check">
                        <label class="form-check-label">
                          <input class="form-check-input" type="checkbox" value="">
                          <span class="form-check-sign">
<span class="check"></span>
</span>
                        </label>
                      </div>
                    </td>
                    <td>
                      <p class="title">Arival at export process</p>
                      <p class="text-muted">Capitol Hill, Seattle, WA 12:34 AM</p>
                    </td>
                    <td class="td-actions text-right">
                      <button type="button" rel="tooltip" title="" class="btn btn-link"
                              data-original-title="Edit Task">
                        <i class="tim-icons icon-pencil"></i>
                      </button>
                    </td>
                  </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-7">
          <div class="card">
            <div class="card-header">
              <div class="tools float-right">
                <div class="dropdown">
                  <button type="button" class="btn btn-link dropdown-toggle btn-icon"
                          data-toggle="dropdown">
                    <i class="tim-icons icon-settings-gear-63"></i>
                  </button>
                  <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#pablo">Action</a>
                    <a class="dropdown-item" href="#pablo">Another action</a>
                    <a class="dropdown-item" href="#pablo">Something else</a>
                    <a class="dropdown-item text-danger" href="#pablo">Remove Data</a>
                  </div>
                </div>
              </div>
              <h5 class="card-title">Management Table</h5>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table">
                  <thead class="text-primary">
                  <tr>
                    <th class="text-center">
                      #
                    </th>
                    <th>
                      Name
                    </th>
                    <th>
                      Job Position
                    </th>
                    <th>
                      Milestone
                    </th>
                    <th class="text-right">
                      Salary
                    </th>
                    <th class="text-right">
                      Actions
                    </th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td class="text-center">
                      <div class="photo">
                        <img src="../assets/img/tania.jpg" alt="photo">
                      </div>
                    </td>
                    <td>
                      Tania Mike
                    </td>
                    <td>
                      Develop
                    </td>
                    <td class="text-center">
                      <div class="progress-container progress-sm">
                        <div class="progress">
                          <span class="progress-value">25%</span>
                          <div class="progress-bar" role="progressbar" aria-valuenow="60"
                               aria-valuemin="0" aria-valuemax="100"
                               style="width: 25%;"></div>
                        </div>
                      </div>
                    </td>
                    <td class="text-right">
                      € 99,225
                    </td>
                    <td class="text-right">
                      <button type="button" rel="tooltip"
                              class="btn btn-success btn-link btn-icon btn-sm btn-simple"
                              data-original-title="Tooltip on top" title="Refresh">
                        <i class="tim-icons icon-refresh-01"></i>
                      </button>
                      <button type="button" rel="tooltip"
                              class="btn btn-danger btn-link btn-icon btn-sm btn-simple"
                              data-original-title="Tooltip on top" title="Delete">
                        <i class="tim-icons icon-simple-remove"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td class="text-center">
                      <div class="photo">
                        <img src="../assets/img/robi.jpg" alt="photo">
                      </div>
                    </td>
                    <td>
                      John Doe
                    </td>
                    <td>
                      CEO
                    </td>
                    <td class="text-center">
                      <div class="progress-container progress-sm">
                        <div class="progress">
                          <span class="progress-value">77%</span>
                          <div class="progress-bar" role="progressbar" aria-valuenow="60"
                               aria-valuemin="0" aria-valuemax="100"
                               style="width: 77%;"></div>
                        </div>
                      </div>
                    </td>
                    <td class="text-right">
                      € 89,241
                    </td>
                    <td class="text-right">
                      <button type="button" rel="tooltip"
                              class="btn btn-success btn-link btn-sm btn-icon btn-simple"
                              data-original-title="Tooltip on top" title="Refresh">
                        <i class="tim-icons icon-refresh-01"></i>
                      </button>
                      <button type="button" rel="tooltip"
                              class="btn btn-danger btn-link btn-sm btn-icon btn-simple"
                              data-original-title="Tooltip on top" title="Delete">
                        <i class="tim-icons icon-simple-remove"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td class="text-center">
                      <div class="photo">
                        <img src="../assets/img/lora.jpg" alt="photo">
                      </div>
                    </td>
                    <td>
                      Alexa Mike
                    </td>
                    <td>
                      Design
                    </td>
                    <td class="text-center">
                      <div class="progress-container progress-sm">
                        <div class="progress">
                          <span class="progress-value">41%</span>
                          <div class="progress-bar" role="progressbar" aria-valuenow="60"
                               aria-valuemin="0" aria-valuemax="100"
                               style="width: 41%;"></div>
                        </div>
                      </div>
                    </td>
                    <td class="text-right">
                      € 92,144
                    </td>
                    <td class="text-right">
                      <button type="button" rel="tooltip"
                              class="btn btn-success btn-link btn-icon btn-sm btn-simple"
                              data-original-title="Tooltip on top" title="Refresh">
                        <i class="tim-icons icon-refresh-01"></i>
                      </button>
                      <button type="button" rel="tooltip"
                              class="btn btn-danger btn-link btn-icon btn-sm btn-simple"
                              data-original-title="Tooltip on top" title="Delete">
                        <i class="tim-icons icon-simple-remove"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td class="text-center">
                      <div class="photo">
                        <img src="../assets/img/jana.jpg" alt="photo">
                      </div>
                    </td>
                    <td>
                      Jana Monday
                    </td>
                    <td>
                      Marketing
                    </td>
                    <td class="text-center">
                      <div class="progress-container progress-sm">
                        <div class="progress">
                          <span class="progress-value">50%</span>
                          <div class="progress-bar" role="progressbar" aria-valuenow="60"
                               aria-valuemin="0" aria-valuemax="100"
                               style="width: 50%;"></div>
                        </div>
                      </div>
                    </td>
                    <td class="text-right">
                      € 49,990
                    </td>
                    <td class="text-right">
                      <button type="button" rel="tooltip"
                              class="btn btn-success btn-link btn-sm btn-icon"
                              data-original-title="Tooltip on top" title="Refresh">
                        <i class="tim-icons icon-refresh-01"></i>
                      </button>
                      <button type="button" rel="tooltip"
                              class="btn btn-danger btn-link btn-sm btn-icon"
                              data-original-title="Tooltip on top" title="Delete">
                        <i class="tim-icons icon-simple-remove"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td class="text-center">
                      <div class="photo">
                        <img src="../assets/img/mike.jpg" alt="photo">
                      </div>
                    </td>
                    <td>
                      Paul Dickens
                    </td>
                    <td>
                      Develop
                    </td>
                    <td class="text-center">
                      <div class="progress-container progress-sm">
                        <div class="progress">
                          <span class="progress-value">100%</span>
                          <div class="progress-bar" role="progressbar" aria-valuenow="60"
                               aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="text-right">
                      € 69,201
                    </td>
                    <td class="text-right">
                      <button type="button" rel="tooltip"
                              class="btn btn-success btn-link btn-sm  btn-icon"
                              data-original-title="Tooltip on top" title="Refresh">
                        <i class="tim-icons icon-refresh-01"></i>
                      </button>
                      <button type="button" rel="tooltip"
                              class="btn btn-danger btn-link btn-sm btn-icon"
                              data-original-title="Tooltip on top" title="Delete">
                        <i class="tim-icons icon-simple-remove"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td class="text-center">
                      <div class="photo">
                        <img src="../assets/img/emilyz.jpg" alt="photo">
                      </div>
                    </td>
                    <td>
                      Manuela Rico
                    </td>
                    <td>
                      Manager
                    </td>
                    <td class="text-center">
                      <div class="progress-container progress-sm">
                        <div class="progress">
                          <span class="progress-value">15%</span>
                          <div class="progress-bar" role="progressbar" aria-valuenow="60"
                               aria-valuemin="0" aria-valuemax="100"
                               style="width: 15%;"></div>
                        </div>
                      </div>
                    </td>
                    <td class="text-right">
                      € 99,201
                    </td>
                    <td class="text-right">
                      <button type="button" rel="tooltip"
                              class="btn btn-success btn-link btn-sm btn-icon"
                              data-original-title="Tooltip on top" title="Refresh">
                        <i class="tim-icons icon-refresh-01"></i>
                      </button>
                      <button type="button" rel="tooltip"
                              class="btn btn-danger btn-link btn-sm btn-icon"
                              data-original-title="Tooltip on top" title="Delete">
                        <i class="tim-icons icon-simple-remove"></i>
                      </button>
                    </td>
                  </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header">
              <h4 class="card-title">Global Sales by Top Locations</h4>
              <p class="card-category">All products that were shipped</p>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-6">
                  <div class="table-responsive">
                    <table class="table">
                      <tbody>
                      <tr>
                        <td>
                          <div class="flag">
                            <img src="../assets/img/US.png" alt="flag">
                          </div>
                        </td>
                        <td>USA</td>
                        <td class="text-right">
                          2.920
                        </td>
                        <td class="text-right">
                          53.23%
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <div class="flag">
                            <img src="../assets/img/DE.png" alt="flag">
                          </div>
                        </td>
                        <td>Germany</td>
                        <td class="text-right">
                          1.300
                        </td>
                        <td class="text-right">
                          20.43%
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <div class="flag">
                            <img src="../assets/img/AU.png" alt="flag">
                          </div>
                        </td>
                        <td>Australia</td>
                        <td class="text-right">
                          760
                        </td>
                        <td class="text-right">
                          10.35%
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <div class="flag">
                            <img src="../assets/img/GB.png" alt="flag">
                          </div>
                        </td>
                        <td>United Kingdom</td>
                        <td class="text-right">
                          690
                        </td>
                        <td class="text-right">
                          7.87%
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <div class="flag">
                            <img src="../assets/img/RO.png" alt="flag">
                          </div>
                        </td>
                        <td>Romania</td>
                        <td class="text-right">
                          600
                        </td>
                        <td class="text-right">
                          5.94%
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <div class="flag">
                            <img src="../assets/img/BR.png" alt="flag">
                          </div>
                        </td>
                        <td>Brasil</td>
                        <td class="text-right">
                          550
                        </td>
                        <td class="text-right">
                          4.34%
                        </td>
                      </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
                <div class="col-md-6 ml-auto mr-auto">
                  <div id="worldMap" style="height: 300px;"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="footer">
      <div class="container-fluid">
        <ul class="nav">
          <li class="nav-item">
            <a href="javascript:void(0)" class="nav-link">
              Creative Tim
            </a>
          </li>
          <li class="nav-item">
            <a href="javascript:void(0)" class="nav-link">
              About Us
            </a>
          </li>
          <li class="nav-item">
            <a href="javascript:void(0)" class="nav-link">
              Blog
            </a>
          </li>
        </ul>
        <div class="copyright">
          ©
          <script>
            document.write(new Date().getFullYear())
          </script>
          made with <i class="tim-icons icon-heart-2"></i> by
          <a href="javascript:void(0)" target="_blank">Creative Tim</a> for a better web.
        </div>
      </div>
    </footer>
  </div>
</div>
<div class="fixed-plugin">
  <div class="dropdown show-dropdown">
    <a href="#" data-toggle="dropdown">
      <i class="fa fa-cog fa-2x"> </i>
    </a>
    <ul class="dropdown-menu">
      <li class="header-title"> Sidebar Background</li>
      <li class="adjustments-line">
        <a href="javascript:void(0)" class="switch-trigger background-color">
          <div class="badge-colors text-center">
            <span class="badge filter badge-primary active" data-color="primary"></span>
            <span class="badge filter badge-info" data-color="blue"></span>
            <span class="badge filter badge-success" data-color="green"></span>
            <span class="badge filter badge-warning" data-color="orange"></span>
            <span class="badge filter badge-danger" data-color="red"></span>
          </div>
          <div class="clearfix"></div>
        </a>
      </li>
      <li class="header-title">
        Sidebar Mini
      </li>
      <li class="adjustments-line">
        <div class="togglebutton switch-sidebar-mini">
          <span class="label-switch">OFF</span>
          <input type="checkbox" name="checkbox" checked class="bootstrap-switch" data-on-label=""
                 data-off-label=""/>
          <span class="label-switch label-right">ON</span>
        </div>
        <div class="togglebutton switch-change-color mt-3">
          <span class="label-switch">LIGHT MODE</span>
          <input type="checkbox" name="checkbox" checked class="bootstrap-switch" data-on-label=""
                 data-off-label=""/>
          <span class="label-switch label-right">DARK MODE</span>
        </div>
      </li>
      <li class="button-container mt-4">
        <a href="../docs/1.0/getting-started/introduction.html" class="btn btn-default btn-block btn-round">
          Documentation
        </a>
      </li>
      <li class="header-title">Thank you for 95 shares!</li>
      <li class="button-container text-center">
        <button id="twitter" class="btn btn-round btn-info"><i class="fab fa-twitter"></i> &middot; 45</button>
        <button id="facebook" class="btn btn-round btn-info"><i class="fab fa-facebook-f"></i> &middot; 50
        </button>
        <br>
        <br>
        <a class="github-button" href="https://github.com/creativetimofficial/ct-black-dashboard-pro"
           data-icon="octicon-star" data-size="large" data-show-count="true"
           aria-label="Star ntkme/github-buttons on GitHub">Star</a>
      </li>
    </ul>
  </div>
</div>

<script src="../assets/js/core/jquery.min.js"></script>
<script src="../assets/js/core/popper.min.js"></script>
<script src="../assets/js/core/bootstrap.min.js"></script>
<script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<script src="../assets/js/plugins/moment.min.js"></script>

<script src="../assets/js/plugins/bootstrap-switch.js"></script>

<script src="../assets/js/plugins/sweetalert2.min.js"></script>

<script src="../assets/js/plugins/jquery.tablesorter.js"></script>

<script src="../assets/js/plugins/jquery.validate.min.js"></script>

<script src="../assets/js/plugins/jquery.bootstrap-wizard.js"></script>

<script src="../assets/js/plugins/bootstrap-selectpicker.js"></script>

<script src="../assets/js/plugins/bootstrap-datetimepicker.js"></script>

<script src="../assets/js/plugins/jquery.dataTables.min.js"></script>

<script src="../assets/js/plugins/bootstrap-tagsinput.js"></script>

<script src="../assets/js/plugins/jasny-bootstrap.min.js"></script>

<script src="../assets/js/plugins/fullcalendar/fullcalendar.min.js"></script>
<script src="../assets/js/plugins/fullcalendar/daygrid.min.js"></script>
<script src="../assets/js/plugins/fullcalendar/timegrid.min.js"></script>
<script src="../assets/js/plugins/fullcalendar/interaction.min.js"></script>

<script src="../assets/js/plugins/jquery-jvectormap.js"></script>

<script src="../assets/js/plugins/nouislider.min.js"></script>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDGat1sgDZ-3y6fFe6HD7QUziVC6jlJNog"></script>

<script src="../assets/js/plugins/chartjs.min.js"></script>

<script src="../assets/js/plugins/bootstrap-notify.js"></script>

<script src="../assets/js/black-dashboard.min.js?v=1.1.1"></script>

<script src="../assets/demo/demo.js"></script>

<script src="../assets/demo/jquery.sharrre.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-46172202-12"></script>
<script>
  window.dataLayer = window.dataLayer || [];

  function gtag() {
    dataLayer.push(arguments);
  }

  gtag('js', new Date());

  gtag('config', 'UA-46172202-12');
</script>
<script>
  $(document).ready(function () {


    $('#facebook').sharrre({
      share: {
        facebook: true
      },
      enableHover: false,
      enableTracking: false,
      enableCounter: false,
      click: function (api, options) {
        api.simulateClick();
        api.openPopup('facebook');
      },
      template: '<i class="fab fa-facebook-f"></i> Facebook',
      url: 'https://demos.creative-tim.com/black-dashboard-pro/examples/dashboard.html'
    });

    $('#google').sharrre({
      share: {
        googlePlus: true
      },
      enableCounter: false,
      enableHover: false,
      enableTracking: true,
      click: function (api, options) {
        api.simulateClick();
        api.openPopup('googlePlus');
      },
      template: '<i class="fab fa-google-plus"></i> Google',
      url: 'https://demos.creative-tim.com/black-dashboard-pro/examples/dashboard.html'
    });

    $('#twitter').sharrre({
      share: {
        twitter: true
      },
      enableHover: false,
      enableTracking: false,
      enableCounter: false,
      buttons: {
        twitter: {
          via: 'CreativeTim'
        }
      },
      click: function (api, options) {
        api.simulateClick();
        api.openPopup('twitter');
      },
      template: '<i class="fab fa-twitter"></i> Twitter',
      url: 'https://demos.creative-tim.com/black-dashboard-pro/examples/dashboard.html'
    });


    // Facebook Pixel Code Don't Delete
    !function (f, b, e, v, n, t, s) {
      if (f.fbq) return;
      n = f.fbq = function () {
        n.callMethod ?
                n.callMethod.apply(n, arguments) : n.queue.push(arguments)
      };
      if (!f._fbq) f._fbq = n;
      n.push = n;
      n.loaded = !0;
      n.version = '2.0';
      n.queue = [];
      t = b.createElement(e);
      t.async = !0;
      t.src = v;
      s = b.getElementsByTagName(e)[0];
      s.parentNode.insertBefore(t, s)
    }(window,
            document, 'script', '//connect.facebook.net/en_US/fbevents.js');

    try {
      fbq('init', '111649226022273');
      fbq('track', "PageView");

    } catch (err) {
      console.log('Facebook Track Error:', err);
    }


    //
    //
    //

  });
</script>
<noscript>
  <img height="1" width="1" style="display:none"
       src="https://www.facebook.com/tr?id=111649226022273&ev=PageView&noscript=1"/>
</noscript>
<script>
  $(document).ready(function () {
    $().ready(function () {
      $sidebar = $('.sidebar');
      $navbar = $('.navbar');
      $main_panel = $('.main-panel');

      $full_page = $('.full-page');

      $sidebar_responsive = $('body > .navbar-collapse');
      sidebar_mini_active = true;
      white_color = false;

      window_width = $(window).width();

      fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();


      $('.fixed-plugin a').click(function (event) {
        if ($(this).hasClass('switch-trigger')) {
          if (event.stopPropagation) {
            event.stopPropagation();
          } else if (window.event) {
            window.event.cancelBubble = true;
          }
        }
      });

      $('.fixed-plugin .background-color span').click(function () {
        $(this).siblings().removeClass('active');
        $(this).addClass('active');

        var new_color = $(this).data('color');

        if ($sidebar.length != 0) {
          $sidebar.attr('data', new_color);
        }

        if ($main_panel.length != 0) {
          $main_panel.attr('data', new_color);
        }

        if ($full_page.length != 0) {
          $full_page.attr('filter-color', new_color);
        }

        if ($sidebar_responsive.length != 0) {
          $sidebar_responsive.attr('data', new_color);
        }
      });

      $('.switch-sidebar-mini input').on("switchChange.bootstrapSwitch", function () {
        var $btn = $(this);

        if (sidebar_mini_active == true) {
          $('body').removeClass('sidebar-mini');
          sidebar_mini_active = false;
          blackDashboard.showSidebarMessage('Sidebar mini deactivated...');
        } else {
          $('body').addClass('sidebar-mini');
          sidebar_mini_active = true;
          blackDashboard.showSidebarMessage('Sidebar mini activated...');
        }

        // we simulate the window Resize so the charts will get updated in realtime.
        var simulateWindowResize = setInterval(function () {
          window.dispatchEvent(new Event('resize'));
        }, 180);

        // we stop the simulation of Window Resize after the animations are completed
        setTimeout(function () {
          clearInterval(simulateWindowResize);
        }, 1000);
      });

      $('.switch-change-color input').on("switchChange.bootstrapSwitch", function () {
        var $btn = $(this);

        if (white_color == true) {

          $('body').addClass('change-background');
          setTimeout(function () {
            $('body').removeClass('change-background');
            $('body').removeClass('white-content');
          }, 900);
          white_color = false;
        } else {

          $('body').addClass('change-background');
          setTimeout(function () {
            $('body').removeClass('change-background');
            $('body').addClass('white-content');
          }, 900);

          white_color = true;
        }


      });

      $('.light-badge').click(function () {
        $('body').addClass('white-content');
      });

      $('.dark-badge').click(function () {
        $('body').removeClass('white-content');
      });
    });
  });
</script>
<script>
  $(document).ready(function () {
    // Javascript method's body can be found in assets/js/demos.js
    demo.initDashboardPageCharts();

    demo.initVectorMap();

  });
</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816"
        integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw=="
        data-cf-beacon='{"rayId":"7bfd923f1dd7835a","version":"2023.3.0","r":1,"token":"1b7cbb72744b40c580f8633c6b62637e","si":100}'
        crossorigin="anonymous"></script>
</body>
</html>
