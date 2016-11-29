<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- Basic -->
<meta charset="UTF-8" />

<title>页面错误_500</title>
<%@ include file="/common/head-base.jsp"%>
<%@ include file="/common/head-material_css.jsp"%>
<!-- Pages JS -->
<script src="../js/pages/page-404.js"></script>
</head>
<body>
	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">
			<!-- Main Page -->
			<div id="content" class="col-sm-12 full">
				<div class="row box-error">
					<div class="col-lg-12 col-md-12 col-xs-12">
						<div class="text-center">
							<h1>500</h1>
							<h2>Unauthorized ...</h2>
							<p>You need to login first to see this page.</p>
							<a href="javascript: history.go(-1)">
								<button type="button" class="btn btn-danger">
									<i class="fa fa-chevron-left"></i> Go Back
								</button>
							</a> <a href="page-login.html">
								<button type="button" class="btn btn-danger">
									<i class="fa fa-lock"></i> Login
								</button>
							</a> <a href="page-profile.html">
								<button type="button" class="btn btn-danger">
									<i class="fa fa-envelope"></i> Contact Admin
								</button>
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- End Main Page -->

		</div>
	</div>
	<!--/container-->
</body>
<%@ include file="/common/head-material_js.jsp"%>
</html>