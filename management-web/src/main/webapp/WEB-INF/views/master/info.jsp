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
var context = '<%=path%>
	';
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
				<div class="row profile">
					<div class="col-lg-4 col-md-5 col-sm-5">
						<div class="panel">
							<div class="panel-body">
								<div
									class="text-left bk-bg-white bk-padding-top-40 bk-padding-bottom-10">
									<div class="row">
										<div
											class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bk-vcenter text-center">
											<div class="bk-avatar">
												<img src="assets/img/avatar.jpg" alt=""
													class="img-circle bk-img-120 bk-border-light-gray bk-border-3x" />
											</div>
											<h4 class="bk-margin-top-10 bk-docs-font-weight-300">Jhon
												Smith</h4>
										</div>
										<hr class="bk-margin-off" />
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<a
												class="col-xs-4 bk-bg-white bk-fg-primary bk-padding-top-20 bk-padding-bottom-20 text-center">
												<i class="fa fa-facebook"></i>
											</a> <a
												class="col-xs-4 bk-bg-white bk-fg-success bk-padding-top-20 bk-padding-bottom-20 text-center">
												<i class="fa fa-twitter"></i>
											</a> <a
												class="col-xs-4 bk-bg-white bk-fg-danger bk-padding-top-20 bk-padding-bottom-20 text-center">
												<i class="fa fa-google-plus"></i>
											</a>
										</div>
										<div
											class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-left bk-vcenter text-center">
											<hr class="bk-margin-off" />
											<small>HTML: 60%</small>
											<div class="progress bk-margin-bottom-10"
												style="height: 8px;">
												<div class="progress thin progress-striped active">
													<div class="progress-bar progress-bar-primary"
														role="progressbar" aria-valuenow="60" aria-valuemin="0"
														aria-valuemax="100" style="width: 60%;">
														<span class="sr-only">60% Complete</span>
													</div>
												</div>
											</div>
											<small>CSS: 88%</small>
											<div class="progress bk-margin-bottom-10"
												style="height: 8px;">
												<div class="progress thin progress-striped active">
													<div class="progress-bar progress-bar-danger"
														role="progressbar" aria-valuenow="88" aria-valuemin="0"
														aria-valuemax="100" style="width: 88%;">
														<span class="sr-only">88% Complete</span>
													</div>
												</div>
											</div>
											<small>JS: 35%</small>
											<div class="progress bk-margin-off-bottom"
												style="height: 8px;">
												<div class="progress thin progress-striped active">
													<div class="progress-bar progress-bar-success"
														role="progressbar" aria-valuenow="35" aria-valuemin="0"
														aria-valuemax="100" style="width: 35%;">
														<span class="sr-only">35% Complete</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<hr class="bk-margin-off" />
								<div class="bk-ltr bk-bg-white">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="bk-widget bk-border-off bk-webkit-fix">
												<div
													class="bk-bg-white text-center bk-padding-top-20 bk-padding-bottom-10">
													<div class="row">
														<div class="text-left bk-padding-left-10">
															<h4 class="bk-margin-off">General Information</h4>
														</div>
													</div>
												</div>
												<div class="bs-example">
													<div id="carousel-example-generic3"
														class="carousel bk-carousel-fade slide"
														data-ride="carousel">
														<div class="carousel-inner">
															<div class="item">
																<a
																	class="panel-body bk-bg-white bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
																	<div
																		class="pull-left bk-margin-top-10 bk-margin-right-10">
																		<div
																			class="bk-round bk-bg-darken bk-border-off bk-icon bk-icon-default bk-bg-primary">
																			<i class="fa fa-thumbs-up"></i>
																		</div>
																	</div>
																	<h5
																		class="bk-fg-primary bk-fg-darken bk-margin-off-bottom">Position</h5>
																	<p>
																		<small>Staff Administrator</small>
																	</p>
																</a>
															</div>
															<div class="item active">
																<a
																	class="panel-body bk-bg-white bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
																	<div
																		class="pull-left bk-margin-top-10 bk-margin-right-10">
																		<div
																			class="bk-round bk-bg-darken bk-border-off bk-icon bk-icon-default bk-bg-info">
																			<i class="fa fa-building-o"></i>
																		</div>
																	</div>
																	<h5
																		class="bk-fg-info bk-fg-darken bk-margin-off-bottom">Company
																		Name</h5>
																	<p>
																		<small>AdminTemplate Inc.</small>
																	</p>
																</a>
															</div>
														</div>
														<a
															class="left carousel-control bk-carousel-control bk-carousel-control-white bk-carousel-hide-init"
															href="#carousel-example-generic3" role="button"
															data-slide="prev"> <span
															class="fa fa-angle-left icon-prev bk-bg-very-light-gray"></span>
														</a> <a
															class="right carousel-control bk-carousel-control bk-carousel-control-white bk-carousel-hide-init"
															href="#carousel-example-generic3" role="button"
															data-slide="next"> <span
															class="fa fa-angle-right icon-next"></span>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<hr class="bk-margin-off" />
								<div class="bk-ltr bk-bg-white">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div
												class="bk-bg-white text-center bk-padding-top-20 bk-padding-bottom-10">
												<div class="row">
													<div class="text-left bk-padding-left-10">
														<h4 class="bk-margin-off">Address</h4>
													</div>
												</div>
											</div>
											<div
												class="bk-bg-white bk-bg-lighten bk-padding-top-10 bk-padding-left-20">
												<div class="pull-left bk-margin-right-10">
													<div class="bk-round bk-bg-darken bk-border-off">
														<i class="fa fa-map-marker fa-2x bk-fg-danger"></i>
													</div>
												</div>
												<p class="text-left">
													<small>Blackstreet No. 256, 1256 California, USA</small>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="bk-ltr bk-padding-bottom-20 bk-padding-left-20">
									<div class="row">
										<div
											class="col-12-4 col-md-12 col-sm-12 col-xs-12 bk-bg-white bk-padding-top-10">
											<i class="fa fa-phone"></i> +25 2569 256
										</div>
										<div
											class="col-12-4 col-md-12 col-sm-12 col-xs-12 bk-bg-white bk-padding-top-10">
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

					<div class="col-lg-5 col-md-7 col-sm-7">
						<div class="panel">
							<div class="panel-body">
								<div class="tabs tabs-warning">
									<ul class="nav nav-tabs">
										<li class="active"><a href="#edit" data-toggle="tab">Edit</a>
										</li>
									</ul>
									<div class="tab-content">
										<div id="edit" class="tab-pane active">
											<form class="form-horizontal" method="get">
												<div
													class="bk-bg-white bk-padding-top-10 bk-padding-bottom-10">
													<h4>Personal Information</h4>
													<fieldset>
														<div class="form-group">
															<label for="profileFirstName">First Name</label> <input
																type="text" class="form-control" id="profileFirstName"
																placeholder="Enter your first name" />
														</div>
														<div class="form-group">
															<label for="profileLastName">Last Name</label> <input
																type="text" class="form-control" id="profileLastName"
																placeholder="Enter your last name" />
														</div>
														<div class="form-group">
															<label for="profileAddress">Address</label> <input
																type="text" class="form-control" id="profileAddress"
																placeholder="Enter your address" />
														</div>
														<div class="form-group">
															<label for="profileCompany">Company</label> <input
																type="text" class="form-control" id="profileCompany"
																placeholder="Enter your company name" />
														</div>
													</fieldset>
													<hr />
													<h4>About Yourself</h4>
													<fieldset>
														<div class="form-group">
															<label for="profileBio">Biographical Info</label>
															<textarea class="form-control" rows="5" id="profileBio"
																placeholder="Start typing"></textarea>
														</div>
														<div class="form-group">
															<div
																class="checkbox-custom checkbox-default bk-margin-bottom-10">
																<input type="checkbox" id="profilePublish"
																	name="profilePublish" value="profilePublish" /> <label
																	for="profilePublish"> Publish</label>
															</div>
														</div>
													</fieldset>
													<hr />
													<h4>Change Password</h4>
													<fieldset>
														<div class="form-group">
															<label for="profileNewPassword">New Password</label> <input
																type="text" class="form-control" id="profileNewPassword"
																placeholder="Type New Password" />
														</div>
														<div class="form-group">
															<label for="profileNewPasswordRepeat">Repeat New
																Password</label> <input type="text" class="form-control"
																id="profileNewPasswordRepeat"
																placeholder="Retype New Password" />
														</div>
													</fieldset>
													<div class="bk-bg-white">
														<div class="row">
															<div class="col-md-12">
																<div class="pull-right">
																	<button type="submit" class="btn btn-primary">Submit</button>
																	<button type="reset" class="btn btn-default">Reset</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-12">
						<h4>Weekly Stats</h4>
						<div class="panel bk-widget bk-border-off">
							<div class="panel-body bk-bg-very-light-gray">
								<div class="row bk-fg-gray">
									<div class="col-lg-5 col-md-6 col-sm-6 col-xs-6">
										<h3
											class="bk-margin-off bk-docs-font-weight-300 bk-fg-primary">$
											25,232</h3>
										EARNINGS
									</div>
									<div class="col-lg-7 col-md-6 col-sm-6 col-xs-6">
										<div class="small-chart-wrapper bk-padding-right-40">
											<div class="small-chart" id="sparklineLineEarnings"></div>
											<script type="text/javascript">
												var sparklineLineEarningsData = [
														15, 16, 17, 19, 15, 25,
														23, 35, 29, 15, 30, 45 ];
											</script>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel bk-widget bk-border-off">
							<div class="panel-body bk-bg-very-light-gray">
								<div class="row bk-fg-gray">
									<div class="col-lg-5 col-md-6 col-sm-6 col-xs-6">
										<h3
											class="bk-margin-off bk-docs-font-weight-300 bk-fg-primary">598</h3>
										SALE ITEMS
									</div>
									<div class="col-lg-7 col-md-6 col-sm-6 col-xs-6">
										<div class="small-chart-wrapper bk-padding-right-40">
											<div class="small-chart" id="sparklineLineSale"></div>
											<script type="text/javascript">
												var sparklineLineSaleData = [
														20, 30, 15, 40, 30, 45,
														60, 40, 50, 32, 65, 70 ];
											</script>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel bk-widget bk-border-off">
							<div class="panel-body bk-bg-very-light-gray">
								<div class="row bk-fg-gray">
									<div class="col-lg-5 col-md-6 col-sm-6 col-xs-6">
										<h3
											class="bk-margin-off bk-docs-font-weight-300 bk-fg-primary">1,958</h3>
										DOWNLOAD
									</div>
									<div class="col-lg-7 col-md-6 col-sm-6 col-xs-6">
										<div class="small-chart-wrapper bk-padding-right-40">
											<div class="small-chart" id="sparklineLineDownload"></div>
											<script type="text/javascript">
												var sparklineLineDownloadData = [
														19, 5, 25, 40, 35, 90,
														60, 70, 30, 15, 80, 90 ];
											</script>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading bk-bg-white">
								<h6>
									<span class="label label-danger bk-margin-5">165</span>Friends
								</h6>
								<div class="panel-actions">
									<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
									<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="panel-body bk-noradius">
								<a class="bk-bg-white bk-padding-off-top bk-padding-off-bottom">
									<div class="row">
										<div class="col-xs-3 bk-vcenter text-center bk-padding-10">
											<div class="bk-avatar">
												<img src="assets/img/avatar1.jpg" alt=""
													class="img-circle bk-img-40 bk-border-primary bk-border-2x bk-border-darken">
											</div>
										</div>
										<div class="col-xs-9 bk-vcenter">
											<h5 class="bk-fg-primary bk-fg-darken bk-margin-off-bottom">John
												Doe</h5>
											<p>Nullam vitae arcu in leo molestie hendrerit at quis
												sem.</p>
										</div>
									</div>
								</a>
								<hr class="bk-margin-off">
								<a class="bk-bg-white bk-padding-off-top bk-padding-off-bottom">
									<div class="row">
										<div class="col-xs-3 bk-vcenter text-center bk-padding-10">
											<div class="bk-avatar">
												<img src="assets/img/avatar2.jpg" alt=""
													class="img-circle bk-img-40 bk-border-warning bk-border-2x bk-border-darken">
											</div>
										</div>
										<div class="col-xs-9 bk-vcenter">
											<h5 class="bk-fg-warning bk-fg-darken bk-margin-off-bottom">John
												Doe</h5>
											<p>Nunc vitae porttitor purus.</p>
										</div>
									</div>
								</a>
								<hr class="bk-margin-off">
								<a class="bk-bg-white bk-padding-off-top bk-padding-off-bottom">
									<div class="row">
										<div class="col-xs-3 bk-vcenter text-center bk-padding-10">
											<div class="bk-avatar">
												<img src="assets/img/avatar2.jpg" alt=""
													class="img-circle bk-img-40 bk-border-danger bk-border-2x bk-border-darken">
											</div>
										</div>
										<div class="col-xs-9 bk-vcenter">
											<h5 class="bk-fg-danger bk-fg-darken bk-margin-off-bottom">John
												Doe</h5>
											<p>Morbi interdum posuere ultricies. Aliquam sit amet
												neque nisi.</p>
										</div>
									</div>
								</a>
								<hr class="bk-margin-off">
							</div>
							<div class="panel-footer bk-bg-white">
								<div class="bk-padding-top-5 bk-padding-bottom-5 ">
									<div class="row">
										<div class="col-xs-6">
											<a href="#" class="bk-fg-textcolor"><small><i
													class="fa fa-angle-left"></i> PREVIOUS</small></a>
										</div>
										<div class="col-xs-6 text-right">
											<a href="#" class="bk-fg-textcolor"><small>NEXT <i
													class="fa fa-angle-right"></i></small></a>
										</div>
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
			<!-- End Footer -->

		</div>
	</div>
	<!--/container-->


	<div class="clearfix"></div>

</body>

<%@ include file="/common/head-material_js.jsp"%>
</html>