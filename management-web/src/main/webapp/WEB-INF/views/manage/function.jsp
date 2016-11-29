<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Basic -->
<meta charset="UTF-8" />
<title>综合管理</title>
<%@ include file="/common/head-base.jsp"%>
<%@ include file="/common/head-material.jsp"%>

<!-- start: JavaScript-->
<!-- Pages JS -->
<script src="../js/pages/page-login.js"></script>
<script src="../js/pages/index.js"></script>
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
							<img src="assets/img/avatar.jpg" class="img-circle" alt="" />
						</figure>
						<div class="profile-info">
							<span class="name">John Smith Doe</span> <span class="role"><i
								class="fa fa-circle bk-fg-success"></i> Administrator</span>
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
										<li class="active opened"><a href="userInfo"><span
												class="text">个人信息</span></a></li>
										<li><a href="pwoerManage"><span class="text">功能管理</span></a></li>
										<li><a href="adminManage"><span class="text">角色管理</span></a></li>
									</ul></li>
							</ul>
						</nav>
					</div>
					<!-- End Sidebar Menu-->
				</div>
				<!-- Sidebar Footer-->
				<div class="sidebar-footer">
					<div class="small-chart-visits"></div>
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
						<h2>Dashboard</h2>
					</div>
				</div>
				<!-- End Page Header -->
				<!-- rom start -->
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-default bk-bg-white">
							<div class="panel-heading bk-bg-white">
								<h6>
									<i class="fa fa-table red"></i><span class="break"></span>Default
								</h6>
								<div class="panel-actions">
									<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
									<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-sm-6">
										<div class="bk-margin-bottom-10">
											<button id="addToTable" class="btn btn-info">
												Add <i class="fa fa-plus"></i>
											</button>
										</div>
									</div>
								</div>
								<div id="datatable-editable_wrapper"
									class="dataTables_wrapper no-footer">
									<div class="row datatables-header form-inline">
										<div class="col-sm-12 col-md-6">
											<div class="dataTables_length" id="datatable-editable_length">
												<label><div class="select2-container"
														id="s2id_autogen1">
														<a href="javascript:void(0)" class="select2-choice"
															tabindex="-1"> <span class="select2-chosen"
															id="select2-chosen-2">10</span><abbr
															class="select2-search-choice-close"></abbr> <span
															class="select2-arrow" role="presentation"><b
																role="presentation"></b></span></a><label for="s2id_autogen2"
															class="select2-offscreen"></label><input
															class="select2-focusser select2-offscreen" type="text"
															aria-haspopup="true" role="button"
															aria-labelledby="select2-chosen-2" id="s2id_autogen2">
														<div class="select2-drop select2-display-none">
															<div
																class="select2-search select2-search-hidden select2-offscreen">
																<label for="s2id_autogen2_search"
																	class="select2-offscreen"></label> <input type="text"
																	autocomplete="off" autocorrect="off"
																	autocapitalize="off" spellcheck="false"
																	class="select2-input" role="combobox"
																	aria-expanded="true" aria-autocomplete="list"
																	aria-owns="select2-results-2" id="s2id_autogen2_search"
																	placeholder="">
															</div>
															<ul class="select2-results" role="listbox"
																id="select2-results-2">
															</ul>
														</div>
													</div> <select name="datatable-editable_length"
													aria-controls="datatable-editable"
													class="select2-offscreen" tabindex="-1" title=""><option
															value="10">10</option>
														<option value="25">25</option>
														<option value="50">50</option>
														<option value="100">100</option></select> records per page</label>
											</div>
										</div>
										<div class="col-sm-12 col-md-6">
											<div id="datatable-editable_filter" class="dataTables_filter">
												<label><input type="search" class="form-control"
													placeholder="Search" aria-controls="datatable-editable"></label>
											</div>
										</div>
									</div>
									<div class="table-responsive">
										<table
											class="table table-bordered table-striped mb-none dataTable no-footer"
											id="datatable-editable" role="grid"
											aria-describedby="datatable-editable_info">
											<thead>
												<tr role="row">
													<th class="sorting_asc" tabindex="0"
														aria-controls="datatable-editable" rowspan="1" colspan="1"
														aria-sort="ascending"
														aria-label="Template: activate to sort column ascending"
														style="width: 118px;">Template</th>
													<th class="sorting" tabindex="0"
														aria-controls="datatable-editable" rowspan="1" colspan="1"
														aria-label="Browser: activate to sort column ascending"
														style="width: 191px;">Browser</th>
													<th class="sorting" tabindex="0"
														aria-controls="datatable-editable" rowspan="1" colspan="1"
														aria-label="Platform(s): activate to sort column ascending"
														style="width: 242px;">Platform(s)</th>
													<th class="sorting_disabled" rowspan="1" colspan="1"
														aria-label="Actions" style="width: 91px;">Actions</th>
												</tr>
											</thead>
											<tbody>

























































												<tr class="gradeA odd" role="row">
													<td class="sorting_1">Drupal</td>
													<td>Safari 2.0</td>
													<td>Embedded devices</td>
													<td class="actions"><a href="#"
														class="hidden on-editing save-row"><i
															class="fa fa-save"></i></a> <a href="#"
														class="hidden on-editing cancel-row"><i
															class="fa fa-times"></i></a> <a href="#"
														class="on-default edit-row"><i class="fa fa-pencil"></i></a>
														<a href="#" class="on-default remove-row"><i
															class="fa fa-trash-o"></i></a></td>
												</tr>
												<tr class="gradeA even" role="row">
													<td class="sorting_1">Drupal</td>
													<td>Safari 2.0</td>
													<td>Embedded devices</td>
													<td class="actions"><a href="#"
														class="hidden on-editing save-row"><i
															class="fa fa-save"></i></a> <a href="#"
														class="hidden on-editing cancel-row"><i
															class="fa fa-times"></i></a> <a href="#"
														class="on-default edit-row"><i class="fa fa-pencil"></i></a>
														<a href="#" class="on-default remove-row"><i
															class="fa fa-trash-o"></i></a></td>
												</tr>
												<tr class="gradeX odd" role="row">
													<td class="sorting_1">Drupal</td>
													<td>Safari 2.0</td>
													<td>Embedded devices</td>
													<td class="actions"><a href="#"
														class="hidden on-editing save-row"><i
															class="fa fa-save"></i></a> <a href="#"
														class="hidden on-editing cancel-row"><i
															class="fa fa-times"></i></a> <a href="#"
														class="on-default edit-row"><i class="fa fa-pencil"></i></a>
														<a href="#" class="on-default remove-row"><i
															class="fa fa-trash-o"></i></a></td>
												</tr>
												<tr class="gradeX even" role="row">
													<td class="sorting_1">Drupal</td>
													<td>Safari 2.0</td>
													<td>Text only</td>
													<td class="actions"><a href="#"
														class="hidden on-editing save-row"><i
															class="fa fa-save"></i></a> <a href="#"
														class="hidden on-editing cancel-row"><i
															class="fa fa-times"></i></a> <a href="#"
														class="on-default edit-row"><i class="fa fa-pencil"></i></a>
														<a href="#" class="on-default remove-row"><i
															class="fa fa-trash-o"></i></a></td>
												</tr>
												<tr class="gradeX odd" role="row">
													<td class="sorting_1">Drupal</td>
													<td>Safari 2.0</td>
													<td>Text only</td>
													<td class="actions"><a href="#"
														class="hidden on-editing save-row"><i
															class="fa fa-save"></i></a> <a href="#"
														class="hidden on-editing cancel-row"><i
															class="fa fa-times"></i></a> <a href="#"
														class="on-default edit-row"><i class="fa fa-pencil"></i></a>
														<a href="#" class="on-default remove-row"><i
															class="fa fa-trash-o"></i></a></td>
												</tr>
												<tr class="gradeC even" role="row">
													<td class="sorting_1">Drupal</td>
													<td>Safari 2.0</td>
													<td>Windows Mobile 6</td>
													<td class="actions"><a href="#"
														class="hidden on-editing save-row"><i
															class="fa fa-save"></i></a> <a href="#"
														class="hidden on-editing cancel-row"><i
															class="fa fa-times"></i></a> <a href="#"
														class="on-default edit-row"><i class="fa fa-pencil"></i></a>
														<a href="#" class="on-default remove-row"><i
															class="fa fa-trash-o"></i></a></td>
												</tr>
												<tr class="gradeC odd" role="row">
													<td class="sorting_1">Drupal</td>
													<td>Safari 2.0</td>
													<td>PSP</td>
													<td class="actions"><a href="#"
														class="hidden on-editing save-row"><i
															class="fa fa-save"></i></a> <a href="#"
														class="hidden on-editing cancel-row"><i
															class="fa fa-times"></i></a> <a href="#"
														class="on-default edit-row"><i class="fa fa-pencil"></i></a>
														<a href="#" class="on-default remove-row"><i
															class="fa fa-trash-o"></i></a></td>
												</tr>
												<tr class="gradeA even" role="row">
													<td class="sorting_1">Jigoshop</td>
													<td>Safari 1.2</td>
													<td>OSX.3</td>
													<td class="actions"><a href="#"
														class="hidden on-editing save-row"><i
															class="fa fa-save"></i></a> <a href="#"
														class="hidden on-editing cancel-row"><i
															class="fa fa-times"></i></a> <a href="#"
														class="on-default edit-row"><i class="fa fa-pencil"></i></a>
														<a href="#" class="on-default remove-row"><i
															class="fa fa-trash-o"></i></a></td>
												</tr>
												<tr class="gradeA odd" role="row">
													<td class="sorting_1">Jigoshop</td>
													<td>Safari 1.3</td>
													<td>OSX.3</td>
													<td class="actions"><a href="#"
														class="hidden on-editing save-row"><i
															class="fa fa-save"></i></a> <a href="#"
														class="hidden on-editing cancel-row"><i
															class="fa fa-times"></i></a> <a href="#"
														class="on-default edit-row"><i class="fa fa-pencil"></i></a>
														<a href="#" class="on-default remove-row"><i
															class="fa fa-trash-o"></i></a></td>
												</tr>
												<tr class="gradeA even" role="row">
													<td class="sorting_1">Jigoshop</td>
													<td>Safari 2.0</td>
													<td>OSX.4+</td>
													<td class="actions"><a href="#"
														class="hidden on-editing save-row"><i
															class="fa fa-save"></i></a> <a href="#"
														class="hidden on-editing cancel-row"><i
															class="fa fa-times"></i></a> <a href="#"
														class="on-default edit-row"><i class="fa fa-pencil"></i></a>
														<a href="#" class="on-default remove-row"><i
															class="fa fa-trash-o"></i></a></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="row datatables-footer">
										<div class="col-sm-12 col-md-6">
											<div class="dataTables_info" id="datatable-editable_info"
												role="status" aria-live="polite">Showing 1 to 10 of 57
												entries</div>
										</div>
										<div class="col-sm-12 col-md-6">
											<div class="dataTables_paginate paging_bs_normal"
												id="datatable-editable_paginate">
												<ul class="pagination">
													<li class="prev disabled"><a href="#"><span
															class="fa fa-chevron-left"></span></a></li>
													<li class="active"><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#">5</a></li>
													<li class="next"><a href="#"><span
															class="fa fa-chevron-right"></span></a></li>
												</ul>
											</div>
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
			<div id="footer">
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
			</div>
			<!-- End Footer -->

		</div>
	</div>
	<!--/container-->


	<div class="clearfix"></div>

</body>

</html>