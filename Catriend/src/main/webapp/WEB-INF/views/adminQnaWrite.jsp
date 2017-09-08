<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>관리자 페이지</title>

<style>
textarea {
	resize: none;
}
</style>

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
				<img src="./resources/assets/adminPageTemplate/img/logo2.png"
					width="100" height="76"
					onclick="javascript:location.href='mainPage';"
					style="cursor: pointer;" />
			</div>
			<ul class="nav navbar-nav navbar-right"
				style="padding-top: 10px; font-size: 1.4em;">
				<li><a onclick="javascript:location.href='logoutAction';"
					style="cursor: pointer;"> <font color="white"> <span
							class="glyphicon glyphicon-log-out"></span>&nbsp;로그아웃
					</font>
				</a></li>
			</ul>
		</div>
		<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">
				<li><a href="adminPageIndex"><i class="fa fa-home"></i>관리자홈으로</a>
				</li>
				<li><a href="adminUserManagement?order=u_name&sort=1&nowPage=1"><i class="fa fa-user"></i>유저관리</a></li>
				<li><a href="adminQnaManagement?order=q_answer&sort=1&nowPage=1"><i class="fa fa-question "></i>질문관리</a>	</li>
				<li><a href="adminFreeboardManagement?order=fb_index&sort=1&nowPage=1"><i class="fa fa-list-alt "></i>자유게시판관리</a></li>
				<li><a href="adminReviewboardManagement?order=cb_index&sort=1&nowPage=1"><i class="fa fa-list-alt "></i>후기게시판관리</a></li>
				<li><a href="adminCatManagement?order=c_index&sort=1&nowPage=1"><i class="fa fa-paw "></i>고양이관리</a></li>
			</ul>
		</div>

		</nav>
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-lg-12">
						<h2>관리자 페이지</h2>
					</div>
				</div>
				<hr />
				<div class="row">
					<div class="col-lg-12 ">
						<div class="alert alert-info">
							<strong>반갑습니다 관리자님, </strong> &nbsp;좋은하루되세요.^^
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12 ">
						<div class="panel panel-default" style="width: 100%;">
							<div class="panel-heading"
								style="font-size: 1.5em; font-weight: 700;">
								<center>질문글 답변/관리</center>
							</div>
							<div class="panel-body">
								<table class="table table-bordered">
									<tr>
										<td colspan="2" style="text-align: center; font-size: 1.3em;"><b>${dto.q_title}</b></td>
									</tr>
									<tr>
										<td style="text-align: center; width: 50%;">${dto.u_id}</td>
										<td style="text-align: center; width: 50%;">${dto.q_date}</td>
									</tr>
									<tr>
										<td colspan="2"><textarea class="form-control"
												id="content" rows="3" style="height: 500px;"></textarea></td>
									</tr>
								</table>
								<div class="text-center" style="margin-top: -15px;">
									<button class="btn" type="submit"
										style="background-color: #00b3fe; color: white;"
										onclick="location.href='adminQnaSuccess'">답변완료하기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="row">
				<div class="col-lg-12">&copy; 2017 Cat'riend</div>
			</div>
		</div>

		<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
		<!-- JQUERY SCRIPTS -->
		<script src="./resources/assets/adminPageTemplate/js/jquery-1.10.2.js"></script>
		<!-- BOOTSTRAP SCRIPTS -->
		<script src="./resources/assets/adminPageTemplate/js/bootstrap.min.js"></script>
		<!-- CUSTOM SCRIPTS -->
		<script src="./resources/assets/adminPageTemplate/js/custom.js"></script>
</body>
</html>
