<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="./resources/assets/ico/favicon.ico">

<title>SOLID - Bootstrap 3 Theme</title>

<!-- Bootstrap core CSS -->
<link href="./resources/assets/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./resources/assets/css/style.css" rel="stylesheet">
<link href="./resources/assets/css/font-awesome.min.css"
	rel="stylesheet">
</head>

<style>
body {
	background: #ffc35b;
}
</style>

<body>

	<!-- Fixed navbar -->
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<!-- *****************************************************************************************************************
	 BLUE WRAP
	 ***************************************************************************************************************** -->
	<div id="blue">
		<div class="container">
			<div class="row">
				<center>
					<h3>설문조사</h3>
				</center>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /blue -->

	<!-- *****************************************************************************************************************
	 CONTACT WRAP
	 ***************************************************************************************************************** -->
	<div class="row">
		<div class="container">

			<form action="onlineFormAction">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h1>설 문 조 사</h1>
							<h3>잘 읽고, 물음에 답해주세요.</h3>
							<h3>
								이 문제의 점수로 등급이 매겨집니다.
								<h3>
						</div>
						<div class="panel-body">
							<h4>다음중 고양이과 동물이 아닌것음?</h4>
							<p>
								<input type="radio" name="test1" value="0" />삵
							</p>
							<p>
								<input type="radio" name="test1" value="0" />치타
							</p>
							<p>
								<input type="radio" name="test1" value="5" />곰
							</p>
							<p>
								<input type="radio" name="test1" value="0" />퓨마
							</p>

							<hr />

							<h4>다음중 고양이가 만지면 싫어하는 부위는?</h4>
							<p>
								<input type="radio" name="test2" value="0" />목 뒷덜미
							</p>
							<p>
								<input type="radio" name="test2" value="0" />턱
							</p>
							<p>
								<input type="radio" name="test2" value="5" />배
							</p>
							<p>
								<input type="radio" name="test2" value="0" />엉덩이
							</p>

						</div>
						<div class="panel-footer">
							<button type="submit" class="btn btn-info">재출하기</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

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
