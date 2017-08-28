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
					<h3>마이페이지</h3>
				</center>
			</div>
		</div>
	</div>


	<!-- *****************************************************************************************************************
	 BLOG CONTENT
	 ***************************************************************************************************************** -->

	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<a href="myPage">
						<div class="panel-body text-center" style="cursor:pointer">
							<div class="tab1img"><img class="center-block" src="./resources/assets/img/setting.png" style="width:96px! important; height:96px! important;"></div>
							<p style="font-size:1.2em">개인정보 수정하기</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<a href="myfreeboardhistory">
						<div class="panel-body text-center" style="cursor:pointer">
							<div class="tab2img"><img class="center-block" src="./resources/assets/img/list.png" style="width:96px! important; height:96px! important;"></div>
							<p style="font-size:1.2em">내가 작성한 글목록</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<a href="mycontracthistory">
						<div class="panel-body text-center" style="cursor:pointer">
							<div class="tab3img"><img class="center-block" src="./resources/assets/img/contract.png" style="width:96px! important; height:96px! important;"></div>
							<p style="font-size:1.2em">내가 계약한 내역</p>
						</div>
					</a>
				</div>
			</div>
			
			<div class="col-md-2"></div>
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
