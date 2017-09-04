<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>관리자 페이지</title>
<!-- BOOTSTRAP STYLES-->
<link href="./resources/assets/adminPageTemplate/css/bootstrap.css"
	rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="./resources/assets/adminPageTemplate/css/font-awesome.css"
	rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="./resources/assets/adminPageTemplate/css/custom.css"
	rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
</head>
<body>
	


	<div id="wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-header">
		<img src="./resources/assets/adminPageTemplate/img/logo2.png" width="100" height="76" onclick="javascript:location.href='adminPageIndex';"	style="cursor: pointer;" />
		</div>
		<ul class="nav navbar-nav navbar-right"	style="padding-top:10px; font-size: 1.4em;">
			<li>
				<a onclick="javascript:location.href='logoutAction';" style="cursor: pointer;">
					<font color="white">
						<span class="glyphicon glyphicon-log-out"></span>&nbsp;로그아웃
					</font>
				</a>
			</li>
		</ul>
		</div>
		<!-- /. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">
				<li>
					<a href="adminPageIndex"><i class="fa fa-home"></i>관리자홈으로</a>
				</li>
				<li>
					<a href="adminUserManagement"><i class="fa fa-user"></i>유저관리</a>
				</li>
				<li>
					<a href="adminQnaManagement"><i class="fa fa-question "></i>질문관리</a>
				</li>
				<li>
					<a href="adminFreeboardManagement"><i class="fa fa-list-alt "></i>자유게시판관리</a>
				</li>
				<li>
					<a href="adminReviewboardManagement"><i class="fa fa-list-alt "></i>후기게시판관리</a>
				</li>
				<li>
					<a href="adminCatManagement"><i class="fa fa-paw "></i>고양이관리</a>
				</li>
			</ul>
		</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-lg-12">
						<h2>관리자 페이지</h2>
					</div>
				</div>
				<!-- /. ROW  -->
				<hr />
				<div class="row">
					<div class="col-lg-12 ">
						<div class="alert alert-info">
							<strong>반갑습니다 관리자님, </strong> &nbsp;좋은하루되세요.^^
						</div>
					</div>
				</div>



				<div class="row text-center">

					<div class="col-md-3">
						<div>
							<div class="panel panel-default">
								<a href="adminUserManagement" style="color:#428bca; text-decoration: none;">
									<div class="panel-body text-center" style="cursor: pointer">
										<div class="img1">
											<img class="center-block" src="./resources/assets/adminPageTemplate/img/adminuser.png" style="width: 110px ! important; height: 110px ! important;">
										</div>
										<p style="font-size: 1.2em">유저관리</p>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="panel panel-default">
							<a href="adminQnaManagement" style="color:#428bca; text-decoration: none;">
								<div class="panel-body text-center" style="cursor: pointer">
									<div class="img2">
										<img class="center-block" src="./resources/assets/adminPageTemplate/img/adminqna.png" style="width: 110px ! important; height: 110px ! important;">
									</div>
									<p style="font-size: 1.2em">질문관리</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-3">
						<div class="panel panel-default">
							<a href="adminFreeboardManagement" style="color:#428bca; text-decoration: none;">
								<div class="panel-body text-center" style="cursor: pointer">
									<div class="img3">
										<img class="center-block" src="./resources/assets/adminPageTemplate/img/adminfreeboard2.png" style="width: 110px ! important; height: 110px ! important;">
									</div>
									<p style="font-size: 1.2em">자유게시판관리</p>
								</div>
							</a>
						</div>
					</div>
					
					<div class="col-md-3">
						<div class="panel panel-default">
							<a href="adminReviewboardManagement" style="color:#428bca; text-decoration: none;">
								<div class="panel-body text-center" style="cursor:pointer;">
									<div class="img4"><img class="center-block" src="./resources/assets/adminPageTemplate/img/adminreviewboard.png" style="width: 110px ! important; height: 110px ! important;"></div>
									<p style="font-size: 1.2em">후기게시판관리</p>
								</div>
							</a>
						</div>
					</div>
					
					<div class="col-md-3">
						<div class="panel panel-default">
							<a href="adminReviewboardManagement" style="color:#428bca; text-decoration: none;">
								<div class="panel-body text-center" style="cursor:pointer;">
									<div class="img5"><img class="center-block" src="./resources/assets/adminPageTemplate/img/admincat.png" style="width: 110px ! important; height: 110px ! important;"></div>
									<p style="font-size: 1.2em">고양이 관리</p>
								</div>
							</a>
						</div>
					</div>
				</div>

				<!-- /. ROW  -->
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
		<div class="footer">


			<div class="row">
				<div class="col-lg-12">
					&copy; 2017 Cat'riend
				</div>
			</div>
		</div>


		<!-- /. WRAPPER  -->
		<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
		<!-- JQUERY SCRIPTS -->
		<script src="./resources/assets/adminPageTemplate/js/jquery-1.10.2.js"></script>
		<!-- BOOTSTRAP SCRIPTS -->
		<script src="./resources/assets/adminPageTemplate/js/bootstrap.min.js"></script>
		<!-- CUSTOM SCRIPTS -->
		<script src="./resources/assets/adminPageTemplate/js/custom.js"></script>
</body>
</html>
