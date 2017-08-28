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


<!-- Just for debugging purposes. Don't actually copy this line! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


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
					<h3>내가 계약한 내역</h3>
				</center>
			</div>
		</div>
	</div>


	<!-- *****************************************************************************************************************
	 BLOG CONTENT
	 ***************************************************************************************************************** -->

	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="panel panel-default">
					<div class="panel-heading" style="font-size:1.5em; font-weight:700;">
						<center>
							내가 계약한 내역
						</center>
					</div>
					<br />
					<div class="panel panel-default center-block" style="width:95%;">
						<table class="table table-bordered">
							<tr>
								<td rowspan="3" width="200px;">
									<div class="tab3img"><img class="center-block" src="./resources/assets/img/CatMade.jpg"></div>
								</td>
								<td style="vertical-align:middle;">이름 : 홍길동</td>
								<td rowspan="3" style="width:20%; margin-top:50%; text-align:center; vertical-align:middle;">
									1998-03-20
									<br />
									(계약한 날짜)
								</td>
							</tr>
							<tr>
								<td style="vertical-align:middle;">성별 : 남자</td>
							</tr>
							<tr>
								<td style="vertical-align:middle;">나이 : 35살</td>
							</tr>
						</table>
					</div>
					<div class="panel panel-default center-block" style="width:95%;">
						<table class="table table-bordered">
							<tr>
								<td rowspan="3" width="200px;">
									<div class="tab3img"><img class="center-block" src="./resources/assets/img/CatMade.jpg"></div>
								</td>
								<td style="vertical-align:middle;">이름 : 마이크 타이슨</td>
								<td rowspan="3" style="width:20%; margin-top:50%; text-align:center; vertical-align:middle;">
									1998-03-20
									<br />
									(계약한 날짜)
								</td>
							</tr>
							<tr>
								<td style="vertical-align:middle;">성별 : 여자</td>
							</tr>
							<tr>
								<td style="vertical-align:middle;">나이 : 5살</td>
							</tr>
						</table>
					</div>
					<div class="panel panel-default center-block" style="width:95%;">
						<table class="table table-bordered">
							<tr>
								<td rowspan="3" width="200px;">
									<div class="tab3img"><img class="center-block" src="./resources/assets/img/CatMade.jpg"></div>
								</td>
								<td style="vertical-align:middle;">이름 : 딸기</td>
								<td rowspan="3" style="width:20%; margin-top:50%; text-align:center; vertical-align:middle;">
									1998-03-20
									<br />
									(계약한 날짜)
								</td>
							</tr>
							<tr>
								<td style="vertical-align:middle;">성별 : 남자</td>
							</tr>
							<tr>
								<td style="vertical-align:middle;">나이 : 7살</td>
							</tr>
						</table>
					</div>
				</div>
				
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

				<div class="text-center">
					<a href="membermyPageindex.jsp">
						<button class="btn" type="button" style="background-color: #00b3fe; color: white;">마이페이지로</button>
					</a>
				</div>

			</div>
			<div class="col-md-1"></div>
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
