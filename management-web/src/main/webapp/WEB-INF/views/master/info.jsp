<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Basic -->
<meta charset="UTF-8" />
<title>综合管理</title>
<%@ include file="/common/head-base.jsp"%>
<%@ include file="/common/head-material_css.jsp"%>

<!-- start: JavaScript-->
<!-- Pages JS -->
<script type="text/javascript">
var context = '<%=path%>';
</script>
<script src="../js/pages/page-login.js"></script>
<!-- end: JavaScript-->
</head>

<body>

	<!-- Start: Header -->
	<div class="navbar" role="navigation">
		<div class="container-fluid container-nav">
			<!-- Navbar Action -->
			<ul class="nav navbar-nav navbar-actions navbar-left">
				<li class="visible-md visible-lg"><a href="#"
					id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
				<li class="visible-xs visible-sm"><a href="#" id="sidebar-menu"><i
						class="fa fa-navicon"></i></a></li>
			</ul>
			<!-- Navbar Left -->
			<div class="navbar-left">
				<!-- Search Form -->
				<form class="search navbar-form">
					<div class="input-group input-search">
						<input type="text" class="form-control bk-radius" name="q" id="q"
							placeholder="Search..."> <span class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
			</div>
			<!-- Navbar Right -->
			<div class="navbar-right">
				<!-- Notifications -->
				<ul class="notifications hidden-xs">
					<li><a href="#" class="dropdown-toggle notification-icon"
						data-toggle="dropdown"> <i class="fa fa-tasks"></i> <span
							class="badge">1</span>
					</a>
						<ul class="dropdown-menu update-menu" role="menu">
							<li><a href="#"><i class="fa fa-database bk-fg-primary"></i>
									Database </a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle notification-icon"
						data-toggle="dropdown"> <i class="fa fa-envelope"></i> <span
							class="badge">1</span>
					</a>
						<ul class="dropdown-menu">
							<li class="dropdown-menu-header"><strong>Messages</strong>
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-success"
										role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 60%;">60%</div>
								</div></li>
							<li class="avatar"><a href="page-inbox.html"> <img
									class="avatar" src="assets/img/avatar1.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										New message
									</div> <span><small>1 minute ago</small></span>
							</a></li>
							<li class="dropdown-menu-footer text-center"><a
								href="page-inbox.html">View all messages</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle notification-icon"
						data-toggle="dropdown"> <i class="fa fa-bell"></i> <span
							class="badge">1</span>
					</a>
						<ul class="dropdown-menu list-group">
							<li class="dropdown-menu-header"><strong>Notifications</strong>
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-danger"
										role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 60%;">60%</div>
								</div></li>
							<li class="list-item"><a href="page-inbox.html">
									<div class="pull-left">
										<i class="fa fa-envelope-o bk-fg-primary"></i>
									</div>
									<div class="media-body clearfix">
										<div>Unread Message</div>
										<h6>You have 10 unread message</h6>
									</div>
							</a></li>
							<li class="list-item-last"><a href="#">
									<h6>Unread notifications</h6> <span class="badge">15</span>
							</a></li>
						</ul></li>
				</ul>
				<!-- End Notifications -->
				<!-- Userbox -->
				<div class="userbox">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<figure class="profile-picture hidden-xs">
							<img
								src="${master.headImage?master.headImage:'../images/defult_user.jpg'}"
								class="img-circle" alt="" />
						</figure>
						<div class="profile-info">
							<span class="name">${master.userName!=null?master.userName:'N/A'}</span>
							<span class="role"><i
								class="fa fa-circle bk-fg-success  margin-r-03"></i>管理员</span>
						</div> <i class="fa custom-caret"></i>
					</a>
					<div class="dropdown-menu">
						<ul class="list-unstyled">
							<li class="dropdown-menu-header bk-bg-white bk-margin-top-15">
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-primary"
										role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 60%;">60%</div>
								</div>
							</li>
							<li><a href="page-profile.html"><i class="fa fa-user"></i>
									Profile</a></li>
							<li><a href="#"><i class="fa fa-wrench"></i> Settings</a></li>
							<li><a href="page-invoice"><i class="fa fa-usd"></i>
									Payments</a></li>
							<li><a href="#"><i class="fa fa-file"></i> File</a></li>
							<li><a href="page-login.html"><i class="fa fa-power-off"></i>
									Logout</a></li>
						</ul>
					</div>
				</div>
				<!-- End Userbox -->
			</div>
			<!-- End Navbar Right -->
		</div>
	</div>
	<!-- End: Header -->
	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">

			<!-- Sidebar -->
			<div class="sidebar">
				<div class="sidebar-collapse">
					<!-- Sidebar Header Logo-->
					<div class="sidebar-header">
						<img src="assets/img/logo.png" class="img-responsive" alt="" />
					</div>
					<!-- Sidebar Menu-->
					<div class="sidebar-menu">
						<nav id="menu" class="nav-main" role="navigation">
							<ul class="nav nav-sidebar">
								<div class="panel-body text-center">
									<div class="flag">
										<img src="assets/img/flags/USA.png" class="img-flags" alt="" />
									</div>
								</div>
								<li class="nav-parent nav-expanded active"><a> <i
										class="fa fa-tasks" aria-hidden="true"></i><span>综合管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a href="<%=path%>/master/info"><span
												class="text">个人信息</span></a></li>
										<li><a href="<%=path%>/manage/function"><span
												class="text">功能管理</span></a></li>
										<li><a href="<%=path%>/manage/role"><span
												class="text">角色管理</span></a></li>
									</ul></li>
							</ul>
						</nav>
					</div>
					<!-- End Sidebar Menu-->
				</div>
				<!-- Sidebar Footer-->
				<div class="sidebar-footer">
					<div class="small-chart-visits">
						<div class="small-chart" id="sparklineLineVisits"></div>
					</div>
					<ul class="sidebar-terms bk-margin-top-10">
						<li><a href="#">Terms</a></li>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Help</a></li>
						<li><a href="#">About</a></li>
					</ul>
				</div>
				<!-- End Sidebar Footer-->
			</div>
			<!-- End Sidebar -->

			<!-- Main Page -->
			<div class="main ">
				<!-- Page Header -->
				<div class="page-header">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li><a href="index.html"><i class="icon fa fa-home"></i>雨滴平台</a></li>
							<li class="active"><i class="fa fa-laptop"></i>综合管理</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>列表</h2>
					</div>
				</div>
				<!-- End Page Header -->
				<!-- rom start -->
				<div class="row">
					<div class="panel">
						<div class="panel-body">
							<div
								class="text-left bk-bg-white bk-padding-top-40 bk-padding-bottom-10">
								<div class="row">
									<div
										class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bk-vcenter text-center">
										<div class="bk-avatar">
											<img src="../images/defult_user.jpg" alt=""
												class="img-circle bk-img-120 bk-border-light-gray bk-border-3x">
										</div>
										<h4 class="bk-margin-top-10 bk-docs-font-weight-300">${master.userName!=null?master.userName:'N/A'}</h4>
									</div>
									<hr class="bk-margin-off">
								</div>
							</div>
							<hr class="bk-margin-off">
							<hr class="bk-margin-off">
							<div class="bk-ltr bk-bg-white">
								<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div
											class="bk-bg-white text-center bk-padding-top-20 bk-padding-bottom-10">
											<div class="row">
												<div class="text-left bk-padding-left-10">
													<h4 class="bk-margin-off">个人信息</h4>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="bk-ltr bk-padding-bottom-20 bk-padding-left-20">
								<div class="row">
									<div class="col-12-4 col-md-12 col-sm-12 col-xs-12 bk-bg-white bk-padding-top-10">
										<i class="fa fa-tablet"></i> +62 2569 2568 256
									</div>
									<div
										class="col-12-4 col-md-12 col-sm-12 col-xs-12 bk-bg-white bk-padding-top-10">
										<i class="fa fa-envelope"></i> jhonsmith@mail.com
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- rom end -->
			</div>
			<!-- End Main Page -->

			<!-- Footer -->
			<!-- <div id="footer">
				<ul>
					<li>
						<div class="title">Memory</div>
						<div class="bar">
							<div class="progress light progress-sm  progress-striped active">
								<div class="progress-bar progress-squared progress-bar-success"
									role="progressbar" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="100" style="width: 60%;">60%</div>
							</div>
						</div>
						<div class="desc">4GB of 8GB</div>
					</li>
					<li>
						<div class="title">HDD</div>
						<div class="bar">
							<div class="progress light progress-sm  progress-striped active">
								<div class="progress-bar progress-squared progress-bar-primary"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%;">40%</div>
							</div>
						</div>
						<div class="desc">250GB of 1TB</div>
					</li>
					<li>
						<div class="title">SSD</div>
						<div class="bar">
							<div class="progress light progress-sm  progress-striped active">
								<div class="progress-bar progress-squared progress-bar-warning"
									role="progressbar" aria-valuenow="70" aria-valuemin="0"
									aria-valuemax="100" style="width: 70%;">70%</div>
							</div>
						</div>
						<div class="desc">700GB of 1TB</div>
					</li>
					<li>
						<div class="copyright">
							<p class="text-muted text-right">
								Fire <i class="fa fa-coffee"></i> © 2016 Creative . All rights
								reserved | Design by <a href="http://www.raindrop.com/"
									target="_blank"> www.raindrop.com </a>
							</p>
						</div>
					</li>
				</ul>
			</div> -->
			<!-- End Footer -->

		</div>
	</div>
	<!--/container-->


	<div class="clearfix"></div>

</body>

<%@ include file="/common/head-material_js.jsp"%>
</html>