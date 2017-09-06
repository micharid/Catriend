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
	function checkWriteFrm(){
		var f = document.writeFrm;
		
		if(f.c_name.value == ""){alert("이름을 입력해주세요");f.c_name.focus();return false;}
		if(f.c_birthday.value == ""){alert("생일을 입력해주세요");f.c_birthday.focus();return false;}
		if(f.c_gender.value == ""){alert("성별을 입력해주세요");f.c_gender.focus();return false;}
		if(f.c_type.value == ""){alert("품종을 입력해주세요");f.c_type.focus();return false;}
		if(f.c_keyword.value == ""){alert("키워드를 입력해주세요");f.c_keyword.focus();return false;}
		if(f.c_grade.value == ""){alert("등급을 입력해주세요");f.c_grade.focus();return false;}
		return true;
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
				<li><a href="adminUserManagement"><i class="fa fa-user"></i>유저관리</a>
				</li>
				<li><a href="adminQnaManagement"><i class="fa fa-question "></i>질문관리</a>
				</li>
				<li><a href="adminFreeboardManagement"><i
						class="fa fa-list-alt "></i>자유게시판관리</a></li>
				<li><a href="adminReviewboardManagement"><i
						class="fa fa-list-alt "></i>후기게시판관리</a></li>
				<li><a href="adminCatManagement"><i class="fa fa-paw "></i>고양이관리</a>
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
						<div class="panel panel-default" style="width: 100%;">
							<div class="panel-heading"
								style="font-size: 1.5em; font-weight: 700;">
								<center>고양이 관리</center>
							</div>
							<div class="panel-body">
								<form name="writeFrm" method="post"
									onsubmit="return checkWriteFrm()" action="catWriteAction?sort=${sort}" enctype="multipart/form-data">
									<input type="hid den" name="sort" value="${sort}">
									<input type="hid den" name="order" value="${order}">
									<div class="form-group">
										<label>이름</label> <input class="form-control" type="text"
											name="c_name" placeholder="고양이 이름을 입력해주세요" />
									</div>
									<div class="form-group">
										<label>생일</label> <input class="form-control" type="date"
											name="c_birthday" />
									</div>
									<div class="form-group">
										<label>성별</label> <input class="form-control" type="text"
											name="c_gender" placeholder="고양이의 성별을 입력해주세여" />
									</div>
									<div class="form-group">
										<label>품종</label> <input class="form-control" type="text"
											name="c_type" placeholder="고양이의 종류를 입력해주세요" />
									</div>
									<div class="form-group">
										<label>키워드</label> <input class="form-control" type="text"
											name="c_keyword" placeholder="키워드는 한키워드 다음 ,(콤마)를 필히 붙혀주세요" />
									</div>
									<div class="form-group">
										<label>등급</label> <input class="form-control" type="text"
											name="c_grade" placeholder="고양이의 등급을 입력해주세요" />
									</div>
									<div class="form-group">
										<label>고양이 사진</label> <input class="form-control" type="file"
											name="c_file"/>
									</div>

									<button type="submit" class="btn btn-info">등록하기</button>
									<button class="btn btn-danger" type="button"
										onclick="javascript:history.go(-1)">취소하기</button>

								</form>
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
				<div class="col-lg-12">&copy; 2017 Cat'riend</div>
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
