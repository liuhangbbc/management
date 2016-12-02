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
								src="${master.headImage!=null?master.headImage:'../images/defult_user.jpg'}"
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
										<img src="../images/flags/CHINA.jpg"
											class="img-flags width-65" alt="" />
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
												<img
													src="${master.headImage!=null?master.headImage:'../images/defult_user.jpg'}"
													alt=""
													class="img-circle bk-img-120 bk-border-light-gray bk-border-3x" />
											</div>
											<h4 class="bk-margin-top-10 bk-docs-font-weight-300">${master.userName!=null?master.userName:'N/A'}</h4>
										</div>
										<hr class="bk-margin-off" />
										<div
											class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-left bk-vcenter text-center">
											<hr class="bk-margin-off" />
											<small class="margin-b-03 margin-t-03">个人信息完善情况</small>
											<div class="progress bk-margin-bottom-10 margin-t-03"
												style="height: 8px;">
												<div class="progress thin progress-striped active">
													<div class="progress-bar progress-bar-primary"
														role="progressbar" aria-valuenow="60" aria-valuemin="0"
														aria-valuemax="100" style="width: 60%;">
														<span class="sr-only">60% Complete</span>
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
														<h4 class="bk-margin-off">联系方式</h4>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="bk-ltr bk-padding-bottom-20 bk-padding-left-20">
									<div class="row">
										<div
											class="col-12-4 col-md-12 col-sm-12 col-xs-12 bk-bg-white bk-padding-top-10">
											<i class="fa fa-tablet margin-r-03"></i>
											${master.phone!=null?master.phone:'N/A'}
										</div>
										<div
											class="col-12-4 col-md-12 col-sm-12 col-xs-12 bk-bg-white bk-padding-top-10">
											<i class="fa fa-envelope margin-r-03"></i>
											${master.email!=null?master.email:'N/A'}
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
										<li class="active"><a href="#edit" data-toggle="tab">个人</a>
										</li>
									</ul>
									<div class="tab-content">
										<div id="edit" class="tab-pane active">
											<form class="form-horizontal" method="get">
												<div
													class="bk-bg-white bk-padding-top-10 bk-padding-bottom-10">
													<h4>个人信息</h4>
													<fieldset>
														<div class="form-group">
															<label for="profileFirstName">用户 id：</label>${master.id!=null?master.id:'N/A'}
														</div>
														<div class="form-group">
															<label for="profileLastName">标识号码：</label>${master.code!=null?master.code:'N/A'}
														</div>
														<div class="form-group">
															<label for="profileLastName">用户账号：</label>${master.account!=null?master.account:'N/A'}
														</div>
														<div class="form-group">
															<label for="profileLastName">用户名称：</label>${master.userName!=null?master.userName:'N/A'}
														</div>
														<div class="form-group">
															<label for="profileLastName">出生日期：</label>${master.birth!=null?master.birth:'保密'}
														</div>
														<div class="form-group">
															<label for="profileLastName">性别：</label>${master.sex==0?'保密': ''}${master.sex==1?'男': ''}${master.sex==2?'女': ''}
														</div>
														<div class="form-group">
															<label for="profileLastName">创建时间：</label>
															<fmt:formatDate
																value="${master.createTime!=null?master.createTime:'N/A'}"
																type="both" pattern="yyyy年MM月dd日  HH:mm:ss " />
														</div>
														<div class="form-group">
															<label for="profileLastName">上次登录时间：</label>${master.lastTime!=null?master.lastTime:'N/A'}
														</div>
														<div class="form-group">
															<label for="profileLastName">备注：</label>${master.remark!=null0?master.remark: 'N/A'}
													</fieldset>
													<hr class="bk-margin-off" />
													<h4>信息管理</h4>
													<div class="bk-bg-white">
														<div class="row">
															<div class="col-md-12">
																<div class="pull-center">
																	<button type="up-head" class="btn btn-primary">上传头像</button>
																	<button type="c-password" class="btn btn-success">修改密码</button>
																	<a type="c-info"
																		class="bk-margin-top-10 bk-margin-bottom-10 modal-with-form btn btn-info"
																		href="#modalInfoForm">修改个人信息</a>
																	<!-- Modal Form -->
																	<div id="modalInfoForm"
																		class="modal-block modal-block-primary mfp-hide">
																		<div class="panel panel-default">
																			<div class="panel-heading">
																				<h2 class="panel-title">修改个人信息</h2>
																			</div>
																			<div class="panel-body bk-noradius">
																				<form id="demo-form" class="form-horizontal mb-lg"
																					novalidate="novalidate">
																					<div class="form-group mt-lg">
																						<label class="col-sm-3 control-label">用户名</label>
																						<div class="col-sm-9">
																							<input type="text" name="name"
																								class="form-control"
																								placeholder="${master.userName!=null?master.userName:'N/A'}"
																								required />
																						</div>
																					</div>
																					<div class="form-group">
																						<label class="col-sm-3 control-label">手机号码</label>
																						<div class="col-sm-9">
																							<input type="email" name="email"
																								class="form-control"
																								placeholder="${master.phone!=null?master.phone:'N/A'}"
																								required />
																						</div>
																					</div>
																					<div class="form-group">
																						<label class="col-sm-3 control-label">电子邮箱</label>
																						<div class="col-sm-9">
																							<input type="email" name="email"
																								class="form-control"
																								placeholder="${master.email!=null?master.email:'N/A'}"
																								required />
																						</div>
																					</div>
																					<div class="form-group">
																						<label class="col-sm-3 control-label">性别</label>
																						<div class="col-sm-9">
																							<select id="select" name="select"
																								class="form-control" size="1">
																								<c:forEach var="type" items="${sexType}">
																									<c:if test="${type.index!=3}">
																										<option value="${type.index}">${type.name}</option>
																									</c:if>
																								</c:forEach>
																							</select>
																						</div>
																					</div>
																					<div class="form-group">
																						<label class="col-sm-3 control-label">出生日期</label>
																						<div class="col-sm-9">
																							<div class="input-group">
																								<span class="input-group-addon"> <i
																									class="fa fa-calendar"></i>
																								</span> <input type="text" data-plugin-datepicker
																									class="form-control" />
																							</div>
																						</div>
																					</div>
																				</form>
																			</div>
																			<div class="panel-footer">
																				<div class="row">
																					<div class="col-md-12 text-right">
																						<button class="btn btn-primary modal-confirm">确定</button>
																						<button class="btn btn-default modal-dismiss">取消</button>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
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
						<h4>数据信息</h4>
						<div class="panel bk-widget bk-border-off">
							<div class="panel-body bk-bg-very-light-gray">
								<div class="row bk-fg-gray">
									<div class="margin-r-10 margin-l-10">
										<h3
											class="bk-margin-off bk-docs-font-weight-300 bk-fg-primary">初始化中...</h3>
										等级
									</div>
								</div>
							</div>
						</div>
						<div class="panel bk-widget bk-border-off">
							<div class="panel-body bk-bg-very-light-gray">
								<div class="row bk-fg-gray">
									<div class="margin-r-10 margin-l-10">
										<h3
											class="bk-margin-off bk-docs-font-weight-300 bk-fg-primary">初始化中...</h3>
										职位
									</div>
								</div>
							</div>
						</div>
						<div class="panel bk-widget bk-border-off">
							<div class="panel-body bk-bg-very-light-gray">
								<div class="row bk-fg-gray">
									<div class="margin-r-10 margin-l-10">
										<h3
											class="bk-margin-off bk-docs-font-weight-300 bk-fg-primary">初始化中...</h3>
										操作
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
<!-- start: JavaScript-->
<!-- Pages JS -->
<script type="text/javascript">
var context = '<%=path%>';
</script>
<script src="../js/pages/page-master-info.js"></script>
<!-- end: JavaScript-->
</html>