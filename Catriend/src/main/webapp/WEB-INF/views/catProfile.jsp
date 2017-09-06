<%@page import="catriend.model.CatsDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	CatsDTO catdto = (CatsDTO) request.getAttribute("dto");
	int checkResult = Integer.parseInt(request.getAttribute("checkResult").toString());
%>
<!DOCTYPE html>
<html>
<head>
<title>고양이 프로필</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
</head>

<style>
textarea {
	display: block;
	width: 100%;
	height: 42px;
	padding: 4px 0 0 6px;
	border: 0;
	background: white;
	font-size: 15px;
	color: #24272B;
	vertical-align: top;
	-webkit-appearance: none;
}

.panel-heading {
	padding: 1px;
}

#blue {
	background: #428BCA;
	margin-bottom: 20px;
}

hr {
	height: 2px;
	color: #777777;
	background-color: #777777;
	border: none;
}
</style>

<script>
	var isValidate = function(obj) {
		if (obj.textAreaComment.value == "") {
			alert("댓글내용을 입력하세요");
			obj.textAreaComment.focus();
			return false;
		}
	}
</script>

<body>

	<!-- Fixed navbar -->
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<!-- *****************************************************************************************************************
	 BLUE WRAP
	 ***************************************************************************************************************** -->



	<!-- *****************************************************************************************************************
	 BLOG CONTENT
	 ***************************************************************************************************************** -->

	<div class="container mtb">
		<div class="row">
			<div id="blue" style="margin-top: 60px;">

				<center>
					<h3
						style="font-size: 20px; line-height: 1.428571429; color: #fff; padding: 10px;">Cat
						Profile</h3>
				</center>

				<!-- /container -->
			</div>

			<!-- SINGLE POST -->
			<div class="col-lg-8" style="margin: 15px 0 0 0;">
				<!-- Blog Post 1 -->
				<div align="center">
					<!-- s -->
					<img src="./resources/assets/img/catP/${dto.c_index}.jpg"
						alt="이미지가없습니다." width="500px" />
					<!-- e -->
				</div>
			</div>
			<!--/col-lg-8 -->


			<! -- SIDEBAR -->
			<div class="col-lg-4">
				<h4>고양이친구 프로필</h4>
				<div class="hline"></div>
				<p>
				<h4>이름 : ${dto.c_name}</h4>
				<h4>
					종류 : <a href="https://namu.wiki/w/${dto.c_type}">${dto.c_type}</a>
				</h4>
				<h4>생일 : ${dto.c_birthday}</h4>
				<h4>건강상태 : ${dto.c_health}</h4>
				<%
					if (login != null && login.getU_grade() >= catdto.getC_grade()) {
				%>
				<button class="btn btn-warning" style="width: 100%;"
					onclick="location.href='catcontractagreement?c_index=${dto.c_index}'">
					계약하기
					<%=login.getU_grade()%>
					/ ${dto.c_grade}
				</button>
				<%
					} else if (login != null && login.getU_grade() < catdto.getC_grade()) {
						System.out.println(login.getU_grade() + ", " + catdto.getC_grade());
				%>
				<button class="btn btn-warning" disabled="disabled"
					style="width: 100%;">
					계약하기(쉬운 고양이들 경험해보고 오냥)
					<%=login.getU_grade()%>
					/ ${dto.c_grade}
				</button>
				<%
					} else {
				%>
				<button class="btn btn-warning" disabled="disabled"
					style="width: 100%;">계약하기(로그인해주세요)</button>
				<%
					}
				%>
				<div class="spacing"></div>
				<hr />
				<h4>스토리</h4>
				<div class="hline"></div>
				<p>
					<%
						if (checkResult != 0) {
					%>
					<button class="btn btn-warning"
						style="width: 100%; margin-bottom: 30px;"
						onclick="location.href='catBoardWrite?c_index=${dto.c_index}'">후기
						작성하기</button>
					<%
						}
					%>
					<button class="btn btn-warning" style="width: 100%;"
						onclick="location.href='catBoardList?c_index=${dto.c_index}'">후기게시판</button>
				</p>
				<br />
				<hr style="color: blue" />
				<h4>키워드 입력 부분</h4>
				<div class="hline"></div>
				<p>
				<div style="font-size: 2.5em;">
					누르면 네이버에 검색<br />
				</div>
				<!-- 분류 반복 s -->
				<%
					CatsDTO dto = (CatsDTO) request.getAttribute("dto");
					String keyword = dto.getC_keyword();
					String[] keywordArr = keyword.split(",");

					for (String strArr : keywordArr) {
				%>
				<a class="btn btn-success" style="margin-top: 10px"
					href="https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=<%=strArr%>&oquery=rjator&tqi=TjQ5pwpVuE4ssso0ieNssssss14-306639"
					role="button"><%=strArr%></a>
				<%
					}
				%>
				<!-- 분류 반복 e -->
				</p>
			</div>
		</div>
		<! --/row -->
	</div>
	<! --/container -->


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