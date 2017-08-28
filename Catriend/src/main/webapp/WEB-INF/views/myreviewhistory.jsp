<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="./resources/assets/ico/favicon.ico">

<title>Cat`riend</title>


<!-- Bootstrap core CSS -->
<link href="./resources/assets/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./resources/assets/css/style.css" rel="stylesheet">
<link href="./resources/assets/css/font-awesome.min.css" rel="stylesheet">



</head>

<body>

	<!-- Fixed navbar -->
	<!-- top s -->
	<%-- 다시업로드할땐 이렇게	<%@ include file="../../resources/common/layOutTop.jsp"%> --%>
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<!-- *****************************************************************************************************************
	 BLUE WRAP
	 ***************************************************************************************************************** -->
	<div id="blue">
		<div class="container">
			<div class="row">
				<center>
					<h3>내가 남긴 후기글</h3>
				</center>
			</div>
		</div>
	</div>


	<!-- *****************************************************************************************************************
	 BLOG CONTENT
	 ***************************************************************************************************************** -->

	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<div class="list-group text-center">
					<a href="myfreeboardhistory.jsp" class="list-group-item">자유게시판</a>
					<!-- 소스코드로 active ajax방식으로 구현가능한지 확인해보기 -->
					<a href="myreviewhistory.jsp" class="list-group-item active">후기게시판</a>
					<a class="btn btn-default list-group-item" href="membermyPageindex.jsp">마이 페이지로</a>
				</div>
			</div>
			<div class="col-md-10">
				
				<div class="panel panel-default">
					<div class="panel-heading" style="font-size:1.5em; font-weight:700;">
						<center>
							후기게시판
						</center>
					</div>
					<div class="panel-body">
						<table class="table table-hover table-bordered">
							<tr style="text-align:center;">
								<th style="width:10%;" class="text-center">NO</th>
								<th style="width:75%;">글제목</th>
								<th style="width:25%;">작성일</th>
							</tr>
							<!-- 반복시작 -->
							<tr>
								<td class="text-center">1</td>
								<td>
									<a href="#">
										내가 작성한 후기게시판의 글을 불러오는 공간입니다.
									</a>
								</td>
								<td>2017-08-26</td>
							</tr>
							<!-- 반복끝 -->
							<tr>
								<td class="text-center">1</td>
								<td>
									<a href="#">
										내가 작성한 후기게시판의 글을 불러오는 공간입니다.
									</a>
								</td>
								<td>2017-08-26</td>
							</tr>
							<tr>
								<td class="text-center">1</td>
								<td>
									<a href="#">
										내가 작성한 후기게시판의 글을 불러오는 공간입니다.
									</a>
								</td>
								<td>2017-08-26</td>
							</tr>
							<tr>
								<td class="text-center">1</td>
								<td>
									<a href="#">
										내가 작성한 후기게시판의 글을 불러오는 공간입니다.
									</a>
								</td>
								<td>2017-08-26</td>
							</tr>
							<tr>
								<td class="text-center">1</td>
								<td>
									<a href="#">
										내가 작성한 후기게시판의 글을 불러오는 공간입니다.
									</a>
								</td>
								<td>2017-08-26</td>
							</tr>
						</table>
						<nav class="text-center">
							<ul class="pagination">
								<li><a href="#" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<br /><br />

	<!-- *****************************************************************************************************************
	 FOOTER
	 ***************************************************************************************************************** -->
	<!-- bottom s -->
	<%@ include file="../../resources/common/layOutBottom.jsp"%>
	<!-- bottom e -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="./resources/assets/js/bootstrap.min.js"></script>
	<script src="./resources/assets/js/retina-1.1.0.js"></script>
	<script src="./resources/assets/js/jquery.hoverdir.js"></script>
	<script src="./resources/assets/js/jquery.hoverex.min.js"></script>
	<script src="./resources/assets/js/jquery.prettyPhoto.js"></script>
	<script src="./resources/assets/js/jquery.isotope.min.js"></script>
	<script src="./resources/assets/js/custom.js"></script>


</body>
</html>
