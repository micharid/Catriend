<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>후기게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
</head>
<style>
.panel-default>.panel-heading {
	color: #428BCA;
	background-color: #428BCA;
	border-color: #dddddd;
}
</style>
<body>

	<!-- Fixed navbar -->
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<!-- *****************************************************************************************************************
	 CONTACT WRAP
	 ***************************************************************************************************************** -->
	<div class="row">
		<div class="container">
			<div class="row">

				<div class="col-lg-12">가로이미지 들어갈 부분</div>
				<div class="col-lg-4">
					<h2>새로운 글</h2>
					<ul class="list-group">

						<li class="list-group-item">공지사항<span class="badge">99</span></li>
						<li class="list-group-item active">자유게시판<span class="badge">5</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
					</ul>
				</div>
				<!-- 인기글 -->
				<div class="col-lg-4">
					<h2>인기 글</h2>
					<ul class="list-group">

						<li class="list-group-item">공지사항<span class="badge">99</span></li>
						<li class="list-group-item active">자유게시판<span class="badge">5</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
					</ul>
				</div>
				<!--  -->
				<div class="col-lg-4">
					<h2>인기 글</h2>
					<ul class="list-group">

						<li class="list-group-item">공지사항<span class="badge">99</span></li>
						<li class="list-group-item active">자유게시판<span class="badge">5</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
					</ul>
				</div>

				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 style="text-align: center; color: white;">게시판</h3>
						</div>
						<div class="panel-body">
							<ul class="nav nav-tabs">
								<li class=""><a href="freeBoardList">자유 게시판</a></li>
								<li class="active"><a href="#after">후기 게시판</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane fade active in" id="after">
									<div class="panel panel-default">
										<div class="panel-body">
											<div class="table-responsive">
												<form method="get">
													<input type="hidden" name="nowPage" value="1" />
													<table width="100%" style="text-align: center;">
														<tr>
															<td><select name="searchColumn">
																	<option value="title">제목</option>
																	<option value="name">작성자</option>
																	<option value="content">내용</option>
															</select> <input type="text" name="searchWord" /> <input
																type="submit" value="검색하기" /></td>
														</tr>

													</table>
												</form>
												<div class="row">
													<c:forEach items="${afterlists}" var="row">
														<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
															<a class="fh5co-card"
																href="catBoardView?cb_index=${row.cb_index}&nowPage=${nowPage}">
																<img src="./resources/assets/img/boardImages/${row.cb_file}"
																alt="Free HTML5 Bootstrap template"
																class="img-responsive">
																<div class="fh5co-card-body">
																	<h3>${row.cb_title}</h3>
																	<p>${row.cb_content }</p>
																</div>
															</a>
														</div>
													</c:forEach>
												</div>
											</div>
										</div>
										<center>
											<!-- 페이지 처리 -->
											${pagingImg}
										</center>
									</div>
								</div>
							</div>
							<div class="col-lg-12">가로이미지 들어갈 부분</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>


	<!-- *****************************************************************************************************************
	 FOOTER
	 ***************************************************************************************************************** -->

	<!-- bottom s -->
	<%@ include file="../../resources/common/layOutBottom.jsp"%>
	<!-- bottom e -->

	<script src="./resources/KapukAlas/js/jquery.js"></script>
	<script src="./resources/KapukAlas/js/bootstrap.min.js"></script>
	<!-- bottom s -->
	<%@ include file="../../resources/common/menuScript.jsp"%>
	<!-- bottom e -->
</body>
</html>