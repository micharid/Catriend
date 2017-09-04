<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<a onclick="javascript:location.href='#';" style="cursor: pointer;">
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

				<div class="row">
					<div class="col-lg-12 ">
						<div class="panel panel-default" style="width:100%;">
								<div class="panel-heading" style="font-size:1.5em; font-weight:700;">
									<center>
										질문글 답변/관리
									</center>
								</div>
								<div class="panel-body">
									<table class="table table-hover table-bordered">
										<tr style="text-align:center;">
											<th style="width:5%;" class="text-center info">선택</th>
											<th style="width:5%;" class="text-center info">NO</th>
											<th style="width:60%" class="info">제목</th>
											<th style="width:10%" class="text-center info">아이디</th>
											<th style="width:10%" class="text-center info">답변여부</th>
											<th style="width:10%;" class="text-center info">작성일</th>
										</tr>
										
										<!--  게시판 반복 부분 s -->
										<c:forEach items="${adminqnalists}" var="row">
											<tr>
												<td class="text-center"><input type="checkbox" /></td>
												<td class="text-center">${totalRecordCount - row.rNum +1}</td>
												<td><a href="adminQnaView?q_index=${row.q_index}&nowPage=${nowPage}">${row.q_title}</a></td>
												<td class="text-center">${row.u_id}</td>
												<td class="text-center">
												<c:if test="${row.q_a_result == 1}">
													<sqan class="glyphicon glyphicon-ok"></sqan>
												</c:if>
												<c:if test="${row.q_a_result == 0}">
													<sqan class="glyphicon glyphicon-remove"></sqan>
												</c:if>
												</td>
												<td class="text-center">${row.q_date}</td>
											</tr>
										</c:forEach>
										<!-- 게시판 반복 부분 e  -->
										
									</table>
									<div class="pull-right" style="margin-top:-15px;">
										<button class="btn" type="submit" style="background-color:#00b3fe; color:white;" onclick="location.href='boardList'">삭제하기</button>
									</div>
									<div class="col-md-12 text-center">
										${pagingImg}
									</div>
								</div>
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
