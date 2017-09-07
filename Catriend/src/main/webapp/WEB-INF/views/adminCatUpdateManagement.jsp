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
   function check() {
      var f = document.Frm;

      if (confirm(" 유저를 삭제 하시겠습니까? \n\n 삭제를 하시면 모든 정보가 DB에서 사라집니다. \n\n 이점 유의해주시길 바랍니다.") == true) {
         return true;
      }

      return false;
   }
</script>

<style>
input {
	width: 50%;
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
					onclick="javascript:location.href='adminPageIndex';"
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
				<li><a href="adminCatManagement?order=c_index&sort=1"><i
						class="fa fa-paw "></i>고양이관리</a></li>
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
						<div class="panel panel-default">
							<div class="panel-heading"
								style="font-size: 1.5em; font-weight: 700;">
								<center>고양이 관리</center>
							</div>
							<div class="panel-body">
								<form action="catUpdateAction">
									<p>
										<input type="hidden" value="${dto.c_index }" name="c_index" />
									</p>
									<table class="table table-bordered">
										<tr class="text-center">
											<td colspan="2">
												<p style="font-size: 1.4em;">
													<b>고양이 친구 프로필</b>
												</p>
											</td>
										</tr>
										<tr>
											<td style="width: 50%;" class="text-right">이름 :
												${dto.c_name}</td>
											<td><input type="text" value="${dto.c_name}"
												name="c_name" /></td>
										</tr>
										<tr>
											<td class="text-right">종류 : ${dto.c_type}</td>
											<td><input type="text" value="${dto.c_type}"
												name="c_type" /></td>
										</tr>
										<tr>
											<td class="text-right">생일 : ${dto.c_birthday}</td>
											<td><input type="date" value="${dto.c_birthday}"
												name="c_birthday" /></td>
										</tr>
										<tr>
											<td class="text-right">성별 : ${dto.c_gender}</td>
											<td><input type="text" value="${dto.c_gender}"
												name="c_gender" /></td>
										</tr>
										<tr>
											<td class="text-right">성별 : ${dto.c_gender}</td>
											<td><input type="text" value="${dto.c_gender}"
												name="c_gender" /></td>
										</tr>
										<tr>
											<td class="text-right">등급 : ${dto.c_grade}</td>
											<td><input type="text" value="${dto.c_grade}"
												name="c_grade" /></td>
										</tr>
										<tr>
											<td class="text-right">건강상태 : ${dto.c_health}</td>
											<td><input type="text" value="${dto.c_health}"
												name="c_health" /></td>
										</tr>
										<tr>
											<td class="text-right">키워드 : ${dto.c_keyword}</td>
											<td><input type="text" value="${dto.c_keyword}"
												name="c_keyword" /></td>
										</tr>
										<tr>
											<td class="text-right">세부사항 : ${dto.c_detail}</td>
											<td><input type="text" value="${dto.c_detail}"
												name="c_detail" /></td>
										</tr>
										<tr>
											<td class="text-right">보낸 날 : ${dto.c_sday}</td>
											<td><input type="date" value="${dto.c_sday}"
												name="c_sday" /></td>
										</tr>
										<tr>
											<td class="text-right">받은 날 : ${dto.c_eday}</td>
											<td><input type="date" value="${dto.c_eday}"
												name="c_eday" /></td>
										</tr>
									</table>
									<div class="panel panel-footer text-center">
										<input type="submit" value="수정하기" style="width: 100%;" />
									</div>
								</form>
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