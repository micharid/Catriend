<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>내후기게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
</head>
<style>
#blue {
	background: #428BCA;
	margin-bottom: 20px;
}

h3 {
	
}

h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-weight: 500;
	line-height: 1.1;
	color: inherit;
}
</style>

<script>
var isValidate = function(obj)
{
	if(obj.searchWord.value=="")
	{
		alert("검색내용을 입력하세요");
		obj.searchWord.focus();
		return false;
	}
}
</script>
</head>

<body>

	<!-- Fixed navbar -->
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->
	<!-- top s -->
	<%@ include file="../../resources/common/sectionAd.jsp"%>
	<!-- top e -->

		<div class="container">
		<div class="row">
			<div id="blue" style="margin-top: 60px;">
				<center>
					<h3
						style="font-size: 20px; line-height: 1.428571429; color: #fff; padding: 10px; margin-bottom: 50px;">내가
						질문한 목록</h3>
				</center>
			</div>

			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="panel panel-default">
					<div class="panel-heading"
						style="font-size: 1.5em; font-weight: 700;">
						<center>1:1 Q&A</center>
					</div>
					<div class="panel-body">
						<table class="table table-hover table-bordered">
							<tr style="text-align: center;">
								<th style="width: 5%;" class="text-center">NO</th>
								<th style="width: 70%;">글제목</th>
								<th style="width: 10%;" class="text-center">답변여부</th>
								<th style="width: 15%;" class="text-center">작성일</th>
							</tr>
							<!--  게시판 반복 부분 s -->
							<c:forEach items="${myQnaList}" var="row">
								<tr>
									<td class="text-center">${totalRecordCount - row.rNum +1}</td>
									<td><a
										href="myqnaview?q_index=${row.q_index}&nowPage=${nowPage}">${row.q_title}</a></td>
									<td class="text-center"><c:if
											test="${row.q_a_result == 1}">
											<sqan class="glyphicon glyphicon-ok"></sqan>
										</c:if> <c:if test="${row.q_a_result == 0}">
											<sqan class="glyphicon glyphicon-remove"></sqan>
										</c:if></td>
									<td class="text-center">${row.q_date}</td>
								</tr>
							</c:forEach>
							<!-- 게시판 반복 부분 e  -->
						</table>
						<div class="pull-right" style="margin-top: -15px;">
							<button class="btn" type="submit"
								style="background-color: #00b3fe; color: white;"
								onclick="location.href='contact'">질문하러가기</button>
						</div>
						<div class="col-md-12 text-center" style="margin-top: -15px;">
							<div class="col-md-12 text-center">
								<!-- 페이지 처리 -->
								${pagingImg}
							</div>
							<div class="col-md-12 text-center">
								<button class="btn" type="button"
									style="background-color: #00b3fe; color: white;"
									onclick="location.href='myPageindex'">마이페이지로</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-1"></div>
			</div>
		</div>
	</div>
  
	<br />
	<br />
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