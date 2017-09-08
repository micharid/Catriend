<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>관리자 페이지</title>
<script>
	function check_all() {
		for (i = 0; i < Frm.select.length; i++) {
			Frm.select[i].checked = true;
		}
	}

	function uncheck_all() {
		for (i = 0; i < Frm.select.length; i++) {
			Frm.select[i].checked = false;
		}
	}

	var check = function(obj) {
		var isCatChk = false;
		for (var i = 0; i < obj.select.length; i++) {
			if (obj.select[i].checked == true) {
				isCatChk = true;
				break;
			}
		}
		if (isCatChk == false) {
			alert("고양이 한마리 이상이 선택되어야 삭제가 가능합니다.");
			return false;
		}
		confirm("고양이를 삭제 하시겠습니까? \n\n 삭제를 하시면 모든 정보가 DB에서 사라집니다. \n\n 이점 유의해주시길 바랍니다.");
	}
</script>
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
		<!-- /. NAV TOP  -->
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
								<center>고양이 관리</center>
							</div>
							<form name="Frm" action="catsDeletes"
								onsubmit="return check(this)">
								<div class="panel-body">
									<table class="table table-hover table-bordered">
										<tr>
											<th style="width: 5%;" class="text-center">선택</th>
											<th width="10%" class="text-center"><a
												href="adminCatManagement?order=c_index&sort=${sort}&nowPage=0">고양이
													고유 번호</a></th>
											<th class="text-center"><a
												href="adminCatManagement?order=c_name&sort=${sort}&nowPage=0">이름</a></th>
											<th style="width: 15%;" class="text-center"><a
												href="adminCatManagement?order=c_gender&sort=${sort}&nowPage=0">성별</a></th>
											<th style="width: 15%;" class="text-center"><a
												href="adminCatManagement?order=c_birthday&sort=${sort}&nowPage=0">생일</a></th>
											<th style="width: 15%" class="text-center"><a
												href="adminCatManagement?order=c_type&sort=${sort}&nowPage=0">고양이종류</a></th>
										</tr>

										<c:forEach items="${admincatlists}" var="row">
											<c:choose>
												<c:when test="${row.c_state eq 1}">
													<tr>
												</c:when>
												<c:otherwise>
													<tr style="background-color: gray;">
												</c:otherwise>
											</c:choose>

											<td class="text-center"><input type="checkbox"
												value="${row.c_index}" name="select" /></td>
											<td class="text-center">${row.c_index}</td>
											<td class="text-center"><a
												href="adminCatViewManagement?c_index=${row.c_index}&nowPage=${nowPage}">${row.c_name}</a></td>
											<td class="text-center">${row.c_gender}</td>
											<td class="text-center">${row.c_birthday}</td>
											<td class="text-center">${row.c_type}</td>
											</tr>
										</c:forEach>
										<!--게시판 반복 부분 e-->

									</table>

									<div class="com-md-12 pull-right" style="margin-top: -15px;">
										<input class="btn btn-primary" type="button"
											style="color: white;" value="전체선택" onclick="check_all();"/ >
										<input class="btn btn-primary" type="button"
											style="color: white;" value="전체해제" onclick="uncheck_all();"/ >
										<button class="btn btn-success" type="button"
											style="color: white;"
											onclick="location.href='catWrite?sort=${sort}&order=${order}'">추가하기</button>
										<input class="btn" type="submit"
											style="background-color: #00b3fe; color: white;" value="삭제하기" />
									</div>

									<div class="col-md-12 text-center" style="margin-top: 10px;">
										${pagingImg}</div>
								</div>
							</form>
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
