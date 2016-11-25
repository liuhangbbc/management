<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- author : liuhangbbc -->
<meta charset="UTF-8" />
<title>平台用户登录</title>
<%@ include file="/common/head-base.jsp"%>
<%@ include file="/common/head-material.jsp"%>

<!-- Pages JS -->
<script src="../js/pages/page-login.js"></script>
</head>

<body>
	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">
			<!-- Main Page -->
			<div id="content" class="col-sm-12 full">
				<div class="row">
					<div class="login-box">
						<div class="panel">
							<div class="panel-body">
								<div class="header bk-margin-bottom-20 text-center">
									<img src="../images/logo.png" class="img-responsive" alt="" />
									<h4>管理平台账号登录</h4>
								</div>
								<div class="form-horizontal login">
									<div class="bk-padding-left-20 bk-padding-right-20">
										<div class="form-group">
											<label> 账号：</label>
											<div class="input-group input-group-icon">
												<input type="text" class="form-control bk-radius"
													id="account" placeholder="用户名或邮箱" /> <span
													class="input-group-addon"> <span class="icon">
														<i class="fa fa-user"></i>
												</span>
												</span>
											</div>
										</div>
										<div class="form-group">
											<label> 密码：</label>
											<div class="input-group input-group-icon">
												<input type="password" class="form-control bk-radius"
													id="password" placeholder="请输入密码" onkeydown="KeyDown();"/> <span
													class="input-group-addon" > <span class="icon">
														<i class="fa fa-key"></i>
												</span>
												</span>
											</div>
										</div>
										<div class="row bk-margin-top-20 bk-margin-bottom-10">
											<div class="col-sm-8">
												<div class="checkbox-custom checkbox-default">
													<input id="RememberMe" name="rememberme" type="checkbox" />
													<label for="RememberMe">记住我</label>
												</div>
											</div>
											<div class="col-sm-4 text-right">
												<button type="submit" class="btn btn-primary hidden-xs"
													onclick="checkLogin();">登录</button>
												<button type="submit"
													class="btn btn-primary btn-block btn-lg visible-xs bk-margin-top-20"
													onclick="checkLogin();">登录</button>
											</div>
										</div>
										<!-- 快速登录 还没有写过 以后尝试-->
										<!--<div class="text-with-hr">
											<span>or</span>
										</div>
										<div class="text-center bk-margin-top-10 bk-margin-bottom-30">
											<a class="btn btn-facebook bk-margin-bottom-15 bk-margin-5">快速登录<i
												class="fa fa-facebook"></i>
											</a> <a class="btn btn-twitter bk-margin-bottom-15 bk-margin-5">快速登录<i
												class="fa fa-twitter"></i>
											</a>
										</div>
										 
										<p class="text-center">
											还没有账号？ <a href="page-register.html">马上注册!</a>
										</p>-->
									</div>
								</div>
							</div>
						</div>
						<p class="text-center text-muted">
							© 2016 Creative . All rights reserved | Design by <a
								href="http://www.raindrop.com/" target="_blank">
								www.raindrop.com </a>
						</p>
					</div>
				</div>
			</div>
			<!-- End Main Page -->
		</div>
	</div>
	<!--/container-->
</body>
</html>