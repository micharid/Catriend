<%@page import="java.util.List"%>
<%@page import="catriend.model.CatBoarderDTO"%>
<%@page import="catriend.model.UsersDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<CatBoarderDTO> CatBoarderHotList = (List<CatBoarderDTO>) request.getAttribute("CatBoarderHotList");
%>
<!DOCTYPE html>
<html>
<head>
<title>Cat'riend</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
</head>
<style>
#blue {
	background: #428BCA;
	margin-bottom: 20px;
}

h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-weight: 500;
	line-height: 1.1;
	color: inherit;
}
</style>

<body>
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<section id="about" class="container">
		<div class="row">
			<div class="col-md-3">
				<span class="glyphicon glyphicon-user"></span> <br>
				<h3>환 영</h3>
				고양이와 친구가 되고싶은 분들 환영 합니다.
			</div>
			<div class="col-md-3">
				<span class="glyphicon glyphicon-heart"></span> <br>
				<h3>사 랑</h3>
				우리 고양이 친구들 대부분이 유기묘입니다.사랑으로 보살펴주세요.

			</div>
			<div class="col-md-3">
				<span class="glyphicon glyphicon-film"></span> <br>
				<h3>추 억</h3>
				고양이친구들과의 추억을 다른분들에게 자랑해보세요.
			</div>
			<div class="col-md-3">
				<span class="glyphicon glyphicon-envelope"></span> <br>
				<h3>편 지</h3>
				언제들지 연락주세요.저희 캣 랜드에서는 집사분들의 의견에 귀 기울이겠습니다.
			</div>
		</div>

		<div id="blue" style="width: 1170px;">

			<center>
				<h3
					style="font-size: 20px; line-height: 1.428571429; color: #fff; padding: 10px;">관련
					영상</h3>
			</center>
		</div>
		<div class="container">
			<div class="row pad-set">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="just-txt-div">
						<iframe width="555" height="300"
							src="https://www.youtube.com/embed/jPf0X0QclXE" frameborder="0"
							allowfullscreen></iframe>
					</div>

				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="just-txt-div">
						<iframe style="width: 555px; height: 300px;"
							src="https://www.youtube.com/embed/Xz6yBbBRr8Y" frameborder="0"
							allowfullscreen></iframe>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="portfolio">
		<div class="container">
			<div class="row">
				<div id="blue" style="margin-top: 60px;">
					<center>
						<h3
							style="font-size: 20px; line-height: 1.428571429; color: #fff; padding: 10px;">후기
							게시판</h3>
					</center>
					<%
						if (CatBoarderHotList.size() == 0) {
					%>
					<div class="row" align="center">
						<br /> <img src="./resources/assets/img/notsign.png" alt="Not" /><span
							style="font-size: 1.3em;">등록된 글이 없습니다.</span> <br />
					</div>
					<%
						} else {
					%>

					<section id="portfolio">
						<div class="container">
							<div class="row">
								<%
									for (CatBoarderDTO dto : CatBoarderHotList) {
								%>

								<div class="col-md-4">
									<a href="catBoardView?cb_index=<%=dto.getCb_index()%>&nowPage=1">
										<div class="thumbnail">
											<div class="caption"><%=dto.getCb_title()%></div>
											<%
												if (dto.getCb_file() == null) {
											%>
											<img src="./resources/assets/img/notsign.png" width="100%"
												height="100%">
											<%
												} else {
											%>
											<img
												src="./resources/assets/img/boardImages/<%=dto.getCb_file()%>"
												width="100%" height="100%">
											<%
												}
											%>
										</div>
									</a>
								</div>
								<%
									}
									}
								%>
							</div>
						</div>
					</section>
				</div>
				<center>

					<a href="catBoardList" class="btn btn-primary btn-lg" role="button">후기
						게시판 바로가기</a>
				</center>
			</div>
	</section>

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