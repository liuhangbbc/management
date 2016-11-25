<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

	<head>
	
		<!-- Basic -->
    	<meta charset="UTF-8" />

		<title>公共主页</title>
	 
		<!-- Mobile Metas -->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		
		<!-- Import google fonts -->
        <link href='http://fonts.useso.com/css?family=Titillium+Web' rel='stylesheet' type='text/css'>
        
		<!-- Favicon and touch icons -->
		<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="assets/ico/apple-touch-icon.png" />
		<link rel="apple-touch-icon" sizes="57x57" href="assets/ico/apple-touch-icon-57x57.png" />
		<link rel="apple-touch-icon" sizes="72x72" href="assets/ico/apple-touch-icon-72x72.png" />
		<link rel="apple-touch-icon" sizes="76x76" href="assets/ico/apple-touch-icon-76x76.png" />
		<link rel="apple-touch-icon" sizes="114x114" href="assets/ico/apple-touch-icon-114x114.png" />
		<link rel="apple-touch-icon" sizes="120x120" href="assets/ico/apple-touch-icon-120x120.png" />
		<link rel="apple-touch-icon" sizes="144x144" href="assets/ico/apple-touch-icon-144x144.png" />
		<link rel="apple-touch-icon" sizes="152x152" href="assets/ico/apple-touch-icon-152x152.png" />
		
	    <!-- start: CSS file-->
		
		<!-- Vendor CSS-->
		<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
		<link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		<link href="assets/vendor/css/pace.preloader.css" rel="stylesheet" />
		
		<!-- Plugins CSS-->
		<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet" />	
		<link href="assets/plugins/scrollbar/css/mCustomScrollbar.css" rel="stylesheet" />
		<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
		<link href="assets/plugins/magnific-popup/css/magnific-popup.css" rel="stylesheet" />
		<link href="assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet" />
		<link href="assets/plugins/jqvmap/jqvmap.css" rel="stylesheet" />
		
		<!-- Theme CSS -->
		<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />
		
		<!-- Page CSS -->		
		<link href="assets/css/style.css" rel="stylesheet" />
		<link href="assets/css/add-ons.min.css" rel="stylesheet" />
		
		<!-- end: CSS file-->	
	    
		
		<!-- Head Libs -->
		<script src="assets/plugins/modernizr/js/modernizr.js"></script>
		
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->		
		
	</head>
	
	<body>
	
		<!-- Start: Header -->
		<div class="navbar" role="navigation">
			<div class="container-fluid container-nav">
				<!-- Navbar Action -->
				<ul class="nav navbar-nav navbar-actions navbar-left">
					<li class="visible-md visible-lg"><a href="#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
					<li class="visible-xs visible-sm"><a href="#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>			
				</ul>
				<!-- Navbar Left -->
				<div class="navbar-left">
					<!-- Search Form -->					
					<form class="search navbar-form">
						<div class="input-group input-search">
							<input type="text" class="form-control bk-radius" name="q" id="q" placeholder="Search...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
							</span>
						</div>						
					</form>
				</div>
				<!-- Navbar Right -->
				<div class="navbar-right">					
					<!-- Notifications -->
					<ul class="notifications hidden-xs">						
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-tasks"></i>
								<span class="badge">10</span>
							</a>
							<ul class="dropdown-menu update-menu" role="menu">
								<li><a href="#"><i class="fa fa-database bk-fg-primary"></i> Database </a></li>
								<li><a href="#"><i class="fa fa-bar-chart-o bk-fg-primary"></i> Connection </a></li>
								<li><a href="#"><i class="fa fa-bell bk-fg-primary"></i> Notification </a></li>
								<li><a href="#"><i class="fa fa-envelope bk-fg-primary"></i> Message </a></li>
								<li><a href="#"><i class="fa fa-flash bk-fg-primary"></i> Traffic </a></li>
								<li><a href="#"><i class="fa fa-credit-card bk-fg-primary"></i> Invoices </a></li>
								<li><a href="#"><i class="fa fa-dollar bk-fg-primary"></i> Finances </a></li>
								<li><a href="#"><i class="fa fa-thumbs-o-up bk-fg-primary"></i> Orders </a></li>
								<li><a href="#"><i class="fa fa-folder bk-fg-primary"></i> Directories </a></li>
								<li><a href="#"><i class="fa fa-users bk-fg-primary"></i> Users </a></li>		
							</ul>
						</li>
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-envelope"></i>
								<span class="badge">5</span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-header">
									<strong>Messages</strong>
									<div class="progress progress-xs  progress-striped active">
										<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
											60%
										</div>
									</div>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="assets/img/avatar1.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>1 minute ago</small></span>							
									</a>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="assets/img/avatar2.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>3 minute ago</small></span>								
									</a>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="assets/img/avatar3.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>4 minute ago</small></span>								
									</a>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="assets/img/avatar4.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>30 minute ago</small></span>
									</a>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="assets/img/avatar5.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>1 hours ago</small></span>
									</a>
								</li>						
								<li class="dropdown-menu-footer text-center">
									<a href="page-inbox.html">View all messages</a>
								</li>	
							</ul>
						</li>
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-bell"></i>
								<span class="badge">3</span>
							</a>
							<ul class="dropdown-menu list-group">
								<li class="dropdown-menu-header">
									<strong>Notifications</strong>
									<div class="progress progress-xs  progress-striped active">
										<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
											60%
										</div>
									</div>
								</li>
								<li class="list-item">
									<a href="page-inbox.html">
										<div class="pull-left">
										   <i class="fa fa-envelope-o bk-fg-primary"></i>
										</div>
										<div class="media-body clearfix">
											<div>Unread Message</div>
											<h6>You have 10 unread message</h6>
										</div>								
									</a>
								</li>
								<li class="list-item">
									<a href="#">
										<div class="pull-left">
										   <i class="fa fa-cogs bk-fg-primary"></i>
										</div>
										<div class="media-body clearfix">
											<div>New Settings</div>
											<h6>There are new settings available</h6>
										</div>								
									</a>
								</li>
								<li class="list-item">
									<a href="#">
										<div class="pull-left">
										   <i class="fa fa-fire bk-fg-primary"></i>
										</div>
										<div class="media-body clearfix">
											<div>Update</div>
											<h6>There are new updates available</h6>
										</div>								
									</a>
								</li>
								<li class="list-item-last">
									<a href="#">
									  <h6>Unread notifications</h6>
									  <span class="badge">15</span>
									</a>
								</li>
							</ul>
						</li>
					</ul>
					<!-- End Notifications -->					
					<!-- Userbox -->
					<div class="userbox">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<figure class="profile-picture hidden-xs">
								<img src="assets/img/avatar.jpg" class="img-circle" alt="" />
							</figure>
							<div class="profile-info">
								<span class="name">John Smith Doe</span>
								<span class="role"><i class="fa fa-circle bk-fg-success"></i> Administrator</span>
							</div>			
							<i class="fa custom-caret"></i>
						</a>
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="dropdown-menu-header bk-bg-white bk-margin-top-15">						
									<div class="progress progress-xs  progress-striped active">
										<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
											60%
										</div>
									</div>							
								</li>	
								<li>
									<a href="page-profile.html"><i class="fa fa-user"></i> Profile</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-wrench"></i> Settings</a>
								</li>
								<li>
									<a href="page-invoice"><i class="fa fa-usd"></i> Payments</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-file"></i> File</a>
								</li>
								<li>
									<a href="page-login.html"><i class="fa fa-power-off"></i> Logout</a>
								</li>
							</ul>
						</div>						
					</div>
					<!-- End Userbox -->
				</div>
				<!-- End Navbar Right -->
			</div>		
		</div>
		<!-- End: Header -->
        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >免费网站模板</a></div>
		
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
									<li class="active">
										<a href="index.html">
											<i class="fa fa-laptop" aria-hidden="true"></i><span>Dashboard</span>
										</a>
									</li>
									<li>
										<a href="mailbox-inbox.html">
											<span class="pull-right label label-danger">235</span>
											<i class="fa fa-envelope" aria-hidden="true"></i><span>Mail</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-copy" aria-hidden="true"></i><span>Pages</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="page-profile.html"><span class="text"> Profile</span></a></li>
											<li><a href="page-activity.html"><span class="text"> Activity</span></a></li>
											<li><a href="page-timeline.html"><span class="text"> Timeline</span></a></li>
											<li><a href="page-invoice.html"><span class="text"> Invoice</span></a></li>
											<li><a href="page-pricing-tables.html"><span class="text"> Pricing Tables</span></a></li>
											<li><a href="page-login.html"><span class="text"> Login Page</span></a></li>
											<li><a href="page-register.html"><span class="text"> Register Page</span></a></li>
											<li><a href="page-recover-password.html"><span class="text"> Recover Password</span></a></li>
											<li><a href="page-lockscreen1.html"><span class="text"> Lock Screen 1</span></a></li>
											<li><a href="page-lockscreen2.html"><span class="text"> Lock Screen 2</span></a></li>
											<li><a href="page-404.html"><span class="text"> Page 404</span></a></li>
											<li><a href="page-500.html"><span class="text"> Page 500</span></a></li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-tasks" aria-hidden="true"></i><span>UI Elements</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="ui-basic-elements.html"><span class="text"> Basic Elements</span></a></li>
											<li><a href="ui-nestable-list.html"><span class="text"> Nestable</span></a></li>
											<li><a href="ui-buttons.html"><span class="text"> Buttons</span></a></li>
											<li><a href="ui-progress-bars.html"><span class="text"> Progress Bars</span></a></li>
											<li><a href="ui-sliders.html"><span class="text"> Sliders</span></a></li>
											<li><a href="ui-panels.html"><span class="text"> Panels</span></a></li>
											<li><a href="ui-tabs.html"><span class="text"> Tabs</span></a></li>
											<li><a href="ui-notifications.html"><span class="text"> Notifications</span></a></li>
											<li><a href="ui-modals.html"><span class="text"> Modals</span></a></li>
											<li><a href="ui-portlets.html"><span class="text"> Portlets</span></a></li>	
											<li><a href="ui-lightbox.html"><span class="text"> Lightbox</span></a></li>
											<li><a href="ui-carousels.html"><span class="text"> Carousels</span></a></li>
											<li><a href="ui-animation.html"><span class="text"> Animation</span></a></li>											
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-list-alt" aria-hidden="true"></i><span>Forms</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="form-elements.html"><span class="text"> Elements</span></a></li>
											<li><a href="form-wizard.html"><span class="text"> Wizard</span></a></li>
											<li><a href="form-validation.html"><span class="text"> Validation</span></a></li>
											<li><a href="form-dropzone.html"><span class="text"> Dropzone Upload</span></a></li>
											<li><a href="form-editors.html"><span class="text"> Editors</span></a></li>
											<li><a href="form-x-editable.html"><span class="text"> X-Editable</span></a></li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-table" aria-hidden="true"></i><span>Tables</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="table-basic.html"><span class="text"> Basic</span></a></li>
											<li><a href="table-advanced.html"><span class="text"> Advanced</span></a></li>
											<li><a href="table-responsive.html"><span class="text"> Responsive</span></a></li>
											<li><a href="table-editable.html"><span class="text"> Editable</span></a></li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-random" aria-hidden="true"></i><span>Visual Chart</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="chart-flot.html"><span class="text"> Flot Chart</span></a></li>
											<li><a href="chart-xchart.html"><span class="text"> xChart</span></a></li>
											<li><a href="chart-other.html"><span class="text"> Other</span></a></li>
										</ul>
									</li>									
									<li>
										<a href="widgets.html">
											<i class="fa fa-life-bouy" aria-hidden="true"></i><span>Widgets</span>
										</a>
									</li>
									<li>
										<a href="gallery.html">
											<i class="fa fa-picture-o" aria-hidden="true"></i><span>Gallery</span>
										</a>
									</li>
									<li>
										<a href="calendar.html">
											<i class="fa fa-calendar" aria-hidden="true"></i><span>Calendar</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-map-marker" aria-hidden="true"></i><span>Maps</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="map-basic.html"><span class="text"> Basic</span></a></li>
											<li><a href="map-vector.html"><span class="text"> Vector</span></a></li>
										</ul>
									</li>
									<li>
										<a href="typography.html">
											<i class="fa fa-font" aria-hidden="true"></i><span>Typography</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-bolt" aria-hidden="true"></i><span>Icons</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="icons-font-awesome.html"><span class="text"> Font Awesome</span></a></li>
											<li><a href="icons-weathericons.html"><span class="text"> Weather Icons</span></a></li>
											<li><a href="icons-glyphicons.html"><span class="text"> Glyphicons</span></a></li>
										</ul>
									</li>
								</ul>
							</nav>
						</div>
						<!-- End Sidebar Menu-->
					</div>
					<!-- Sidebar Footer-->
					<div class="sidebar-footer">					
						<div class="small-chart-visits">
							<div class="small-chart" id="sparklineLineVisits"></div>
							<div class="small-chart-info">
								<label>New Visits</label>
								<strong>70,79%</strong>
							</div>
							<script type="text/javascript">
								var sparklineLineVisitsData = [15, 16, 17, 19, 15, 25, 23, 35, 29, 15, 30, 45];
							</script>
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
								<li><a href="index.html"><i class="icon fa fa-home"></i>Home</a></li>
								<li class="active"><i class="fa fa-laptop"></i>Dashboard</li>
							</ol>						
						</div>
						<div class="pull-right">
							<h2>Dashboard</h2>
						</div>					
					</div>
					<!-- End Page Header -->
					<div class="row">
						<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
							<div class="panel bk-widget bk-border-off">
								<div class="panel-body text-left bk-bg-white bk-padding-top-10 bk-padding-bottom-10">
									<div class="row">
										<div class="col-xs-4 bk-vcenter text-center">
											<div class="small-chart-wrapper">
												<div class="small-chart" id="sparklineBarweeklystats"></div>										
												<script type="text/javascript">
													var sparklineBarweeklystatsData = [5, 6, 7, 2, 0, 4 , 2, 4, 2, 0, 4 , 2, 4, 2, 0, 4];
												</script>
											</div>
											<strong>Weekly stats</strong>
										</div>
										<div class="col-xs-8 text-left bk-vcenter text-center">
											<small>DOWNLOAD: 60%</small>
											<div class="progress light progress-xs  progress-striped active bk-margin-bottom-10">
												<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
													<span class="sr-only">60% Complete</span>
												</div>
											</div>
											<small>PROCESSED: 88%</small>
											<div class="progress light progress-xs  progress-striped active bk-margin-bottom-10">
												<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100" style="width: 88%;">
													<span class="sr-only">88% Complete</span>
												</div>
											</div>
											<small>SALE: 60%</small>
											<div class="progress light progress-xs  progress-striped active bk-margin-bottom-10">
												<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
													<span class="sr-only">60% Complete</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>						
						<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
							<div class="panel bk-widget bk-border-off">
								<div class="panel-body bk-bg-very-light-gray">
									<h4 class="bk-margin-off-bottom bk-docs-font-weight-300">TOTAL PROFIT</h4>
									<div class="clearfix  bk-padding-top-10">
										<div class="pull-right bk-margin-left-15">
											<i class="fa fa-dollar fa-3x"></i>
										</div>
										<h1 class="bk-margin-off-top pull-right">73,695</h1>
									</div>									
									<a><h6 class="text-right bk-padding-top-20 bk-margin-off">Withdraw</h6></a>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
							<div class="panel bk-widget bk-border-off">
								<div class="panel-body bk-bg-very-light-gray">									
									<h4 class="bk-margin-off-bottom bk-docs-font-weight-300">CONVERSIONS</h4>
									<div class="clearfix bk-padding-top-20">
										<div class="text-center">
											<i class="fa fa-random fa-3x bk-fg-warning"></i>
										</div>
									</div>
									<h4 class="text-right bk-padding-top-15 bk-margin-off">369</h4>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-12">
							<div class="panel">
								<div class="panel-body">
									<div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">							
										<div class="tabs tabs-bottom tabs-primary bk-margin-bottom-15 bk-margin-top-15">
											<div class="tab-content bk-bg-very-light-gray">
												<div id="adminCart" class="tab-pane active">
													<div class="row">
														<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
															<div id="adminChartUpdate" style="height:198px"></div>															
														</div>
													</div>
												</div>
												<div id="widget" class="tab-pane">
													<div class="row">
														<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
															<div class="panel bk-widget bk-border-off">
																<div class="bk-bg-white  bk-border-very-light-gray bk-fg-danger bk-ltr bk-padding-15 bk-radius">
																	<div class="row">
																		<div class="col-xs-4 text-left bk-vcenter bk-padding-off">
																			<span class="bk-round bk-icon bk-icon-2x bk-bg-danger bk-border-off">
																				<i class="fa fa-users fa-2x"></i>
																			</span>
																		</div>
																		<div class="col-xs-8 text-left bk-vcenter">
																			<h6 class="bk-margin-off">TOTAL USERS</h6>
																			<strong class="bk-margin-off">326,269</strong>
																		</div>
																	</div>
																	<div class="progress light progress-striped active bk-margin-off-bottom bk-margin-top-10 bk-noradius" style="height: 6px;">
																		<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
																			<span class="sr-only">90% Complete</span>
																		</div>
																	</div>
																	<div class="bk-margin-top-10">
																		<div class="row">
																			<div class="col-xs-6">
																				<small>Monthly: 6,269</small>
																			</div>
																			<div class="col-xs-6 text-right">
																				<a href="#" class="bk-fg-danger bk-fg-darken"><small>View details</small> <i class="fa fa-database"></i></a>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
															<div class="panel bk-widget bk-border-off">
																<div class="bk-bg-white bk-border-very-light-gray bk-fg-success bk-ltr bk-padding-15 bk-radius">
																	<div class="row">
																		<div class="col-xs-4 text-left bk-vcenter bk-padding-off">
																			<span class="bk-round bk-border-off bk-icon bk-icon-2x bk-bg-success">
																				<i class="fa fa-download fa-2x"></i>
																			</span>
																		</div>
																		<div class="col-xs-8 text-left bk-vcenter">
																			<h6 class="bk-margin-off">DOWNLOAD</h6>
																			<strong class="bk-margin-off">1,256</strong>
																		</div>
																	</div>
																	<div class="progress light progress-striped active bk-margin-off-bottom bk-margin-top-10 bk-noradius" style="height: 6px;">
																		<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
																			<span class="sr-only">80% Complete</span>
																		</div>
																	</div>
																	<div class="bk-margin-top-10">
																		<div class="row">
																			<div class="col-xs-6">
																				<small>Stock: 32,269</small>
																			</div>
																			<div class="col-xs-6 text-right">
																				<a href="#" class="bk-fg-success bk-fg-darken"><small>View details</small> <i class="fa fa-database"></i></a>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
															<div class="panel bk-widget bk-border-off">
																<div class="bk-bg-white  bk-border-very-light-gray bk-fg-warning bk-ltr bk-padding-15 bk-radius">
																	<div class="row">
																		<div class="col-xs-4 text-left bk-vcenter bk-padding-off">
																			<span class="bk-round bk-border-off bk-icon bk-icon-2x bk-bg-warning">
																				<i class="fa fa-shopping-cart fa-2x"></i>
																			</span>
																		</div>
																		<div class="col-xs-8 text-left bk-vcenter">
																			<h6 class="bk-margin-off">PURCHASE</h6>
																			<strong class="bk-margin-off">$526,369</strong>
																		</div>
																	</div>
																	<div class="progress light progress-striped active bk-margin-off-bottom bk-margin-top-10 bk-noradius" style="height: 6px;">
																		<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
																			<span class="sr-only">80% Complete</span>
																		</div>
																	</div>
																	<div class="bk-margin-top-10">
																		<div class="row">
																			<div class="col-xs-6">
																				<small>Top day: 11/25/2014</small>
																			</div>
																			<div class="col-xs-6 text-right">
																				<a href="#" class="bk-fg-warning bk-fg-darken"><small>View details</small> <i class="fa fa-database"></i></a>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>	
													</div>
													<div class="text-center">
														<p> Fire Admin Transaction Activity</p> 
													</div>
												</div>
											</div>
											<ul class="nav nav-tabs nav-right">
												<li class="active">
													<a href="#adminCart" data-toggle="tab"> Fire Admin</a>
												</li>
												<li>
													<a href="#widget" data-toggle="tab"> Widget Update</a>
												</li>
											</ul>
										</div>
									</div>
									
									<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">										
										<div class="text-center bk-margin-bottom-15 bk-margin-top-15">
											<canvas id="polarArea" height="215" width="215"></canvas>
										</div>
										<h4 class="text-center">Monthly Sales</h4>
									</div>
								</div>
							</div>
						</div>
					</div>				
					
					<div class="row">
						<div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h6><i class="fa fa-signal"></i>Server Usage</h6>									
									<div class="panel-actions">
										<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
										<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
									<p>You can update a chart periodically to get a real-time effect by using a timer to insert the new data in the plot and redraw it.</p>
								</div>
								<div class="panel-body">
									<div id="realtimeServerUsage" style="height:200px;"></div>
									<div class="bk-margin-top-10 bk-padding-right-10 pull-right">									
										<p>Time between updates: <input id="updateInterval" type="text" value="" style="text-align: right; width:5em" /> milliseconds</p>
									</div>
								</div>
							</div>
							
							<div class="panel">
								<div class="panel-heading panel-heading-transparent bk-border-off">
									<h6><strong>Market Inventory</strong></h6>
									<div class="panel-actions">
										<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
										<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="panel-body">
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
										<h4 class="bk-fg-warning">Best Seller</h4>
										<div id="piechart" style="height:280px"></div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
										<h4 class="bk-fg-warning">Marketplace Area</h4>
										<canvas id="radar" height="280" width="220"></canvas>	
									</div>
								</div>
							</div>
						</div>
						
						<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="panel">								
								<div class="panel-heading panel-heading-transparent">									
									<h6><strong>Chat room</strong></h6>
									<div class="panel-actions">
										<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
										<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="panel-body">
									<div class="bk-docs-scroll-hidden">
										<div class="bk-padding-left-20 bk-padding-right-20">
											<a class="bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
												<div class="pull-left bk-margin-top-10 bk-margin-right-10">
													<div class="bk-avatar">
														<img src="assets/img/avatar1.jpg" alt="" class="img-circle bk-img-60 bk-border-off" />
													</div>
												</div>
												<div class="bk-fg-inverse bk-margin-top-10">
													<strong class="bk-fg-primary"><div class="point point-success point-lg"></div>John Doe</strong>
													<span class="pull-right"><i class="fa fa-clock-o"></i><small> just now</small></span>
												</div>
												<p>
													Cum sociis natoque pen ibus Mauris pede arcuats moles tied Aliquam or Mauris pede arcuats
												</p>
											</a>									
											<hr class="bk-margin-off" />
										</div>
										<div class="bk-padding-left-20 bk-padding-right-20">
											<a class="bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
												<div class="pull-right bk-margin-top-10 bk-margin-left-10">
													<div class="bk-avatar">
														<img src="assets/img/avatar.jpg" alt="" class="img-circle bk-img-60 bk-border-off" />
													</div>
												</div>
												<div class="bk-fg-inverse bk-margin-top-10">
													<strong class="pull-right bk-fg-primary"><div class="point point-success point-lg"></div>Robert</strong>
													<span><i class="fa fa-clock-o"></i><small> 3' ago</small></span>
												</div>
												<p>
													Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget turpis pulvinar, tempor odio sed, adipiscing dolor.
												</p>
											</a>
											<hr class="bk-margin-off" />
										</div>
										<div class="bk-padding-left-20 bk-padding-right-20">
											<a class="bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
												<div class="pull-left bk-margin-top-10 bk-margin-right-10">
													<div class="bk-avatar">
														<img src="assets/img/avatar1.jpg" alt="" class="img-circle bk-img-60 bk-border-off" />
													</div>
												</div>
												<div class="bk-fg-inverse bk-margin-top-10">
													<strong class="bk-fg-primary"><div class="point point-success point-lg"></div>John Doe</strong>
													<span class="pull-right"><i class="fa fa-clock-o"></i><small> 6' ago</small></span>
												</div>
												<p>
													Cum sociis natoque pen ibus Mauris pede arcuats moles tied Aliquam or Mauris pede arcuats
												</p>
											</a>
											<hr class="bk-margin-off" />
										</div>
										<div class="bk-padding-left-20 bk-padding-right-20">
											<a class="bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
												<div class="pull-right bk-margin-top-10 bk-margin-left-10">
													<div class="bk-avatar">
														<img src="assets/img/avatar.jpg" alt="" class="img-circle bk-img-60 bk-border-off" />
													</div>
												</div>
												<div class="bk-fg-inverse bk-margin-top-10">
													<strong class="pull-right bk-fg-primary"><div class="point point-success point-lg"></div>Robert</strong>
													<span><i class="fa fa-clock-o"></i><small> 11' ago</small></span>
												</div>
												<p>
													Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget turpis pulvinar, tempor odio sed, adipiscing dolor.
												</p>
											</a>
											<hr class="bk-margin-off" />
										</div>
										<div class="bk-padding-left-20 bk-padding-right-20">
											<a class="bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
												<div class="pull-left bk-margin-top-10 bk-margin-right-10">
													<div class="bk-avatar">
														<img src="assets/img/avatar1.jpg" alt="" class="img-circle bk-img-60 bk-border-off" />
													</div>
												</div>
												<div class="bk-fg-inverse bk-margin-top-10">
													<strong class="bk-fg-primary"><div class="point point-success point-lg"></div>John Doe</strong>
													<span class="pull-right"><i class="fa fa-clock-o"></i><small> 6' ago</small></span>
												</div>
												<p>
													Cum sociis natoque pen ibus Mauris pede arcuats moles tied Aliquam or Mauris pede arcuats
												</p>
											</a>
											<hr class="bk-margin-off" />
										</div>
										<div class="bk-padding-left-20 bk-padding-right-20">
											<a class="bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
												<div class="pull-right bk-margin-top-10 bk-margin-left-10">
													<div class="bk-avatar">
														<img src="assets/img/avatar.jpg" alt="" class="img-circle bk-img-60 bk-border-off" />
													</div>
												</div>
												<div class="bk-fg-inverse bk-margin-top-10">
													<strong class="pull-right bk-fg-primary"><div class="point point-success point-lg"></div>Robert</strong>
													<span><i class="fa fa-clock-o"></i><small> 11' ago</small></span>
												</div>
												<p>
												   Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget turpis pulvinar, tempor odio sed, adipiscing dolor.
												</p>
											</a>
											<hr class="bk-margin-off" />
										</div>
										<div class="bk-padding-left-20 bk-padding-right-20">
											<a class="bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
												<div class="pull-left bk-margin-top-10 bk-margin-right-10">
													<div class="bk-avatar">
														<img src="assets/img/avatar1.jpg" alt="" class="img-circle bk-img-60 bk-border-off" />
													</div>
												</div>
												<div class="bk-fg-inverse bk-margin-top-10">
													<strong class="bk-fg-primary"><div class="point point-success point-lg"></div>John Doe</strong>
													<span class="pull-right"><i class="fa fa-clock-o"></i><small> 6' ago</small></span>
												</div>
												<p>
													Cum sociis natoque pen ibus Mauris pede arcuats moles tied Aliquam or Mauris pede arcuats
												</p>
											</a>
											<hr class="bk-margin-off" />
										</div>
										<div class="bk-padding-left-20 bk-padding-right-20">
											<a class="bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
												<div class="pull-right bk-margin-top-10 bk-margin-left-10">
													<div class="bk-avatar">
														<img src="assets/img/avatar.jpg" alt="" class="img-circle bk-img-60 bk-border-off" />
													</div>
												</div>
												<div class="bk-fg-inverse bk-margin-top-10">
													<strong class="pull-right bk-fg-primary"><div class="point point-success point-lg"></div>Robert</strong>
													<span><i class="fa fa-clock-o"></i><small> 11' ago</small></span>
												</div>
												<p>
													Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget turpis pulvinar, tempor odio sed, adipiscing dolor.
												</p>
											</a>
											<hr class="bk-margin-off" />
										</div>
										<div class="bk-padding-left-20 bk-padding-right-20">
											<a class="bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
												<div class="pull-left bk-margin-top-10 bk-margin-right-10">
													<div class="bk-avatar">
														<img src="assets/img/avatar1.jpg" alt="" class="img-circle bk-img-60 bk-border-off" />
													</div>
												</div>
												<div class="bk-fg-inverse bk-margin-top-10">
													<strong class="bk-fg-primary"><div class="point point-success point-lg"></div>John Doe</strong>
													<span class="pull-right"><i class="fa fa-clock-o"></i><small> 6' ago</small></span>
												</div>
												<p>
													Cum sociis natoque pen ibus Mauris pede arcuats moles tied Aliquam or Mauris pede arcuats
												</p>
											</a>
											<hr class="bk-margin-off" />
										</div>
										<div class="bk-padding-left-20 bk-padding-right-20">
											<a class="bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
												<div class="pull-right bk-margin-top-10 bk-margin-left-10">
													<div class="bk-avatar">
														<img src="assets/img/avatar.jpg" alt="" class="img-circle bk-img-60 bk-border-off" />
													</div>
												</div>
												<div class="bk-fg-inverse bk-margin-top-10">
													<strong class="pull-right bk-fg-primary"><div class="point point-success point-lg"></div>Robert</strong>
													<span><i class="fa fa-clock-o"></i><small> 11' ago</small></span>
												</div>
												<p>
													Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget turpis pulvinar, tempor odio sed, adipiscing dolor.
												</p>
											</a>
											<hr class="bk-margin-off" />
										</div>
										<div class="bk-padding-left-20 bk-padding-right-20">
											<a class="bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
												<div class="pull-left bk-margin-top-10 bk-margin-right-10">
													<div class="bk-avatar">
														<img src="assets/img/avatar1.jpg" alt="" class="img-circle bk-img-60 bk-border-off" />
													</div>
												</div>
												<div class="bk-fg-inverse bk-margin-top-10">
													<strong class="bk-fg-primary"><div class="point point-success point-lg"></div>John Doe</strong>
													<span class="pull-right"><i class="fa fa-clock-o"></i><small> 6' ago</small></span>
												</div>
												<p>
													Cum sociis natoque pen ibus Mauris pede arcuats moles tied Aliquam or Mauris pede arcuats
												</p>
											</a>
											<hr class="bk-margin-off" />
										</div>
										<div class="bk-padding-left-20 bk-padding-right-20">
											<a class="bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
												<div class="pull-right bk-margin-top-10 bk-margin-left-10">
													<div class="bk-avatar">
														<img src="assets/img/avatar.jpg" alt="" class="img-circle bk-img-60 bk-border-off" />
													</div>
												</div>
												<div class="bk-fg-inverse bk-margin-top-10">
													<strong class="pull-right bk-fg-primary"><div class="point point-success point-lg"></div>Robert</strong>
													<span><i class="fa fa-clock-o"></i><small> 11' ago</small></span>
												</div>
												<p>
													Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget turpis pulvinar, tempor odio sed, adipiscing dolor.
												</p>
											</a>										
											<hr class="bk-margin-off" />
										</div>
									</div>
									<div class="bk-bg-white bk-padding-top-15 bk-padding-bottom-15">
										<form role="form" action="javascript:">
											<div class="input-group">
												<input type="text" class="form-control bk-noradius" />
												  <span class="input-group-btn">
													<button class="btn btn-default bk-noradius" type="button"><i class="fa fa-send-o"></i></button>
												  </span>
											</div>
										</form>
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading bk-bg-white">									
									<h6><span class="label label-danger bk-margin-5">165</span>Friends</h6>
									<div class="panel-actions">
										<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
										<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="panel-body">									
									<a class="bk-bg-white bk-padding-off-top bk-padding-off-bottom">
										<div class="row">
											<div class="col-xs-3 bk-vcenter text-center bk-padding-10">
												<div class="bk-avatar">
													<img src="assets/img/avatar1.jpg" alt="" class="img-circle bk-img-40 bk-border-primary bk-border-2x bk-border-darken">
												</div>
											</div>
											<div class="col-xs-9 bk-vcenter">
												<h5 class="bk-fg-primary bk-fg-darken bk-margin-off-bottom">John Doe</h5>
												<p>
													Nullam vitae arcu in leo molestie hendrerit at quis sem.
												</p>
											</div>
										</div>
									</a>
									<hr class="bk-margin-off">
									<a class="bk-bg-white bk-padding-off-top bk-padding-off-bottom">
										<div class="row">
											<div class="col-xs-3 bk-vcenter text-center bk-padding-10">
												<div class="bk-avatar">
													<img src="assets/img/avatar2.jpg" alt="" class="img-circle bk-img-40 bk-border-warning bk-border-2x bk-border-darken">
												</div>
											</div>
											<div class="col-xs-9 bk-vcenter">
												<h5 class="bk-fg-warning bk-fg-darken bk-margin-off-bottom">John Doe</h5>
												<p>
													Nunc vitae porttitor purus.
												</p>
											</div>
										</div>
									</a>
									<hr class="bk-margin-off">
									<a class="bk-bg-white bk-padding-off-top bk-padding-off-bottom">
										<div class="row">
											<div class="col-xs-3 bk-vcenter text-center bk-padding-10">
												<div class="bk-avatar">
													<img src="assets/img/avatar2.jpg" alt="" class="img-circle bk-img-40 bk-border-danger bk-border-2x bk-border-darken">
												</div>
											</div>
											<div class="col-xs-9 bk-vcenter">
												<h5 class="bk-fg-danger bk-fg-darken bk-margin-off-bottom">John Doe</h5>
												<p>
													Morbi interdum posuere ultricies. Aliquam sit amet neque nisi.
												</p>
											</div>
										</div>
									</a>
									<hr class="bk-margin-off">
									<div class="panel-footer bk-bg-white">
										<div class="bk-padding-top-5 bk-padding-bottom-5 ">
											<div class="row">
												<div class="col-xs-6">
													<a href="#" class="bk-fg-textcolor"><small><i class="fa fa-angle-left"></i> PREVIOUS</small></a>
												</div>
												<div class="col-xs-6 text-right">
													<a href="#" class="bk-fg-textcolor"><small>NEXT <i class="fa fa-angle-right"></i></small></a>
												</div>
											</div>
										</div>
									</div>
								</div>								
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="panel panel-transparent">
								<div class="panel-heading bk-border-off">
									<h6><strong>My Profile</strong></h6>
									<div class="panel-actions">
										<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
										<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="panel-body">
									<div class="panel">
										<div class="panel-heading text-left bk-bg-primary bk-fg-white bk-padding-top-10 bk-padding-bottom-10">
											<div class="row">
												<div class="col-xs-4 bk-vcenter">
													<div class="bk-avatar">
														<img src="assets/img/avatar.jpg" alt="" class="img-circle bk-img-80 bk-border-white bk-border-3x" />
													</div>
												</div>
												<div class="col-xs-8 text-right bk-vcenter">
													<h4 class="bk-margin-off">John Doe</h4>
													<small>Management Director</small>
													<div class="bk-margin-top-10">
														<a href="page-profile.html" class="btn btn-default pull-right">View profile</a>
													</div>
												</div>
											</div>
										</div>
										<div class="bk-bg-white no-padding">
											<div class="todo-list">									
												<div class="header">Task</div>
												<ul id="todo-2" class="todo-list-tasks">
													<li>
														<label class="custom-checkbox-item pull-left">
															<input class="custom-checkbox" type="checkbox"/>
															<span class="custom-checkbox-mark"></span>
														</label>
														<span class="desc">Add slider home to creative template</span> 
													</li>
													<li>
														<label class="custom-checkbox-item pull-left">
															<input class="custom-checkbox" type="checkbox"/>
															<span class="custom-checkbox-mark"></span>
														</label>
														<span class="desc">Change portfolio image with new animation</span> 
													</li>
													<li>
														<label class="custom-checkbox-item pull-left">
															<input class="custom-checkbox" type="checkbox"/>
															<span class="custom-checkbox-mark"></span>
														</label>
														<span class="desc">Fixed JavaScript problem for index page</span> 
													</li>
												</ul>
												<div class="header">Completed</div>
												<ul class="completed"></ul>		
											</div>
										</div>					
										<div class="panel-footer bk-padding-top-10">
											<div class="row text-center">
												<a class="col-xs-4 bk-bg-very-light-gray bk-bg-darken bk-padding-top-10 bk-padding-bottom-10">
													<i class="fa fa-envelope"></i><small> Message</small>
												</a>
												<a class="col-xs-4 bk-bg-very-light-gray bk-bg-darken bk-padding-top-10 bk-padding-bottom-10">
													<i class="fa fa-comment-o"></i><small> Comment</small>
												</a>
												<a class="col-xs-4 bk-bg-very-light-gray bk-bg-darken bk-padding-top-10 bk-padding-bottom-10">
													<i class="fa fa-bell-o"></i><small> Notification</small>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div> 
						</div>
						
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="panel panel-transparent">
								<div class="panel-heading bk-border-off">
									<h6><strong>My Stats</strong></h6>
									<div class="panel-actions">
										<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
										<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="panel-body">
									<div class="panel bk-widget bk-border-off">
										<div class="panel-body bk-bg-very-light-gray">
											<div class="row bk-fg-gray">
												<div class="col-lg-5 col-md-6 col-sm-6 col-xs-6">
													<h3 class="bk-margin-off bk-docs-font-weight-300 bk-fg-primary">569</h3>
													Average Profile Visits
												</div>
												<div class="col-lg-7 col-md-6 col-sm-6 col-xs-6">
													<div class="small-chart-wrapper bk-padding-right-10">
														<div class="small-chart" id="sparklineLineProfileVisits" style="float:right"></div>
														<script type="text/javascript">
															var sparklineLineProfileVisitsData = [20, 30, 15, 40, 30, 45, 60, 40, 50, 32, 65, 70];
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
													<h3 class="bk-margin-off bk-docs-font-weight-300 bk-fg-primary">254</h3>
													Working Projects
												</div>
												<div class="col-lg-7 col-md-6 col-sm-6 col-xs-6">
													<div class="small-chart-wrapper">
														<div class="small-chart" id="sparklineLineProjects" style="float:right"></div>
														<script type="text/javascript">
															var sparklineLineProjectsData = [20, 30, 15, 40, 30, 45, 60, 40, 50, 32, 65, 70];
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
													<h3 class="bk-margin-off bk-docs-font-weight-300 bk-fg-primary">24</h3>
													Pending Tasks
												</div>
												<div class="col-lg-7 col-md-6 col-sm-6 col-xs-6">
													<div class="small-chart-wrapper bk-padding-right-30">
														<div class="small-chart" id="sparklineLineTasks" style="float:right"></div>
														<script type="text/javascript">
															var sparklineLineTasksData = [15, 16, 17, 19, 15, 25, 23, 35, 29, 15, 30, 45];
														</script>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>								
							</div>						
						</div>
					</div>
					
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="panel panel-transparent">
								<div class="panel-heading">
									<h6><strong>Global Stats</strong></h6>
									<div class="panel-actions">
										<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
										<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="panel-body">
									<div id="vector-map-world" style="height: 320px; width: 100%;" data-vector-map data-plugin-options='{ "map": "world_en" }'></div>							
								</div>
							</div>
							
							<div class="panel panel-transparent">
								<div class="panel-heading">
									<h6><strong>Company Schedule Activity</strong></h6>
									<div class="panel-actions">
										<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
										<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="panel-body">
									<div class="timelineProfile timeline-profile">
										<div class="timeline-body">
											<div class="timeline-title">
												<h5 class="text-uppercase">May 2014</h5>
											</div>
											<ol class="timeline-items">
												<li>
													<div class="timeline-box">
														<p class="text-muted">5 months ago.</p>
														<p>
															It's awesome when we find a good solution for our projects, Fire Admin is <span class="text-primary">#awesome</span>
														</p>
													</div>
												</li>
												<li>
													<div class="timeline-box">
														<p class="text-muted">5 months ago.</p>
														<p>
															What is your greatest projects for your Administrator?
														</p>
													</div>
												</li>
												<li>
													<div class="timeline-box">
														<p class="text-muted">5 months ago.</p>
														<p>
															Checkout! How cool is that!
														</p>
														<div class="img-timeline">
															<a class="img-thumbnail lightbox" href="assets/img/gallery/photo6.jpg" data-plugin-options='{ "type":"image" }'>
																<img class="img-responsive" width="215" src="assets/img/gallery/photo6.jpg">
																<span class="zoom">
																	<i class="fa fa-search"></i>
																</span>
															</a>
														</div>
													</div>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="panel">
								<div class="panel-heading panel-heading-transparent bk-border-off">
									<h6><strong>Employes Stats</strong></h6>
									<div class="panel-actions">
										<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
										<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="panel-body">
									<div class="table-responsive">	
										<table class="table table-striped table-bordered bootstrap-datatable datatable">
											<thead>
												<tr>
													<th>Employe</th>
													<th>Position</th>
													<th>Salary</th>
													<th>Status</th>
												</tr>
											</thead>   
											<tbody>								
												<tr>
													<td>Willson</td>
													<td>Developer</td>
													<td>2563$</td>
													<td>
														<span class="label label-warning">Pending</span>
													</td>
												</tr>
												<tr>
													<td>James</td>
													<td>SEO</td>
													<td>5000$</td>
													<td>
														<span class="label label-warning">Pending</span>
													</td>
												</tr>
												<tr>
													<td>Steven</td>
													<td>Photographer</td>
													<td>1269$</td>
													<td>
														<span class="label label-success">Success</span>
													</td>
												</tr>
												<tr>
													<td>Aselay</td>
													<td>Project manger</td>
													<td>6253$</td>
													<td>
														<span class="label label-danger">Failed</span>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							
							<div class="panel">
								<div class="panel-heading panel-heading-transparent bk-border-off">
									<h6><strong>Calendar</strong></h6>
									<div class="panel-actions">
										<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
										<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="panel-body">
									<div class="calendar calendar-small">
										<div id="calendar"></div>
									</div>
								</div>
							</div>							
						</div>
					</div>
				</div>
				<!-- End Main Page -->
				
				<!-- Footer -->
				<div id="footer">
					<ul>
						<li>
							<div class="title">Memory</div>
							<div class="bar">
								<div class="progress light progress-sm  progress-striped active">
									<div class="progress-bar progress-squared progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
										60%
									</div>
								</div>
							</div>			
							<div class="desc">4GB of 8GB</div>
						</li>
						<li>
							<div class="title">HDD</div>
							<div class="bar">
								<div class="progress light progress-sm  progress-striped active">
									<div class="progress-bar progress-squared progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
										40%
									</div>
								</div>
							</div>			
							<div class="desc">250GB of 1TB</div>
						</li>
						<li>
							<div class="title">SSD</div>
							<div class="bar">
								<div class="progress light progress-sm  progress-striped active">
									<div class="progress-bar progress-squared progress-bar-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%;">
										70%
									</div>
								</div>
							</div>			
							<div class="desc">700GB of 1TB</div>
						</li>
						<li>
							<div class="copyright">
								<p class="text-muted text-right">Fire <i class="fa fa-coffee"></i> Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></p>
							</div>
						</li>				
					</ul>	
				</div>
				<!-- End Footer -->
			
			</div>
		</div><!--/container-->
		
		
		<div class="clearfix"></div>		
		
		
		<!-- start: JavaScript-->
		
		<!-- Vendor JS-->				
		<script src="assets/vendor/js/jquery.min.js"></script>
		<script src="assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/vendor/skycons/js/skycons.js"></script>
		<script src="assets/vendor/js/pace.min.js"></script>
		
		<!-- Plugins JS-->
		<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
		<script src="assets/plugins/bootkit/js/bootkit.js"></script>
		<script src="assets/plugins/magnific-popup/js/magnific-popup.js"></script>
		<script src="assets/plugins/moment/js/moment.min.js"></script>	
		<script src="assets/plugins/fullcalendar/js/fullcalendar.js"></script>
		<script src="assets/plugins/flot/js/jquery.flot.min.js"></script>
		<script src="assets/plugins/flot/js/jquery.flot.pie.min.js"></script>
		<script src="assets/plugins/flot/js/jquery.flot.resize.min.js"></script>
		<script src="assets/plugins/flot/js/jquery.flot.stack.min.js"></script>
		<script src="assets/plugins/flot/js/jquery.flot.time.min.js"></script>
		<script src="assets/plugins/flot-tooltip/js/jquery.flot.tooltip.js"></script>
		<script src="assets/plugins/chart-master/js/Chart.js"></script>
		<script src="assets/plugins/jqvmap/jquery.vmap.js"></script>
		<script src="assets/plugins/jqvmap/data/jquery.vmap.sampledata.js"></script>
		<script src="assets/plugins/jqvmap/maps/jquery.vmap.world.js"></script>
		<script src="assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>
		
		<!-- Theme JS -->		
		<script src="assets/js/jquery.mmenu.min.js"></script>
		<script src="assets/js/core.min.js"></script>
		
		<!-- Pages JS -->
		<script src="assets/js/pages/index.js"></script>
		
		<!-- end: JavaScript-->
		
	</body>
	
</html>