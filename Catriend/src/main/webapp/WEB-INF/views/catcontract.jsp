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

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


<style>
textarea {
	resize: none;
}


.funkyradio div {
  clear: both;
  overflow: hidden;
}

.funkyradio label {
  width: 30%;
  border-radius: 3px;
  border: 1px solid #D1D3D4;
  font-weight: normal;
}

.funkyradio input[type="radio"]:empty,
.funkyradio input[type="checkbox"]:empty {
  display: none;
}

.funkyradio input[type="radio"]:empty ~ label,
.funkyradio input[type="checkbox"]:empty ~ label {
  position: relative;
  line-height: 2.5em;
  text-indent: 3.25em;
  margin-top: 0;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}

.funkyradio input[type="radio"]:empty ~ label:before,
.funkyradio input[type="checkbox"]:empty ~ label:before {
  position: absolute;
  display: block;
  top: 0;
  bottom: 0;
  left: 0;
  content: '';
  width: 2.5em;
  background: #d8d8d8;
  border-radius: 3px 0 0 3px;
}

.funkyradio input[type="radio"]:hover:not(:checked) ~ label,
.funkyradio input[type="checkbox"]:hover:not(:checked) ~ label {
  color: #888;
}

.funkyradio input[type="radio"]:hover:not(:checked) ~ label:before,
.funkyradio input[type="checkbox"]:hover:not(:checked) ~ label:before {
  content: '\2714';
  text-indent: .9em;
  color: #C2C2C2;
}

.funkyradio input[type="radio"]:checked ~ label,
.funkyradio input[type="checkbox"]:checked ~ label {
  color: #777;
}

.funkyradio input[type="radio"]:checked ~ label:before,
.funkyradio input[type="checkbox"]:checked ~ label:before {
  content: '\2714';
  text-indent: .9em;
  color: #333;
  background-color: #ccc;
}

.funkyradio input[type="radio"]:focus ~ label:before,
.funkyradio input[type="checkbox"]:focus ~ label:before {
  box-shadow: 0 0 0 3px #999;
}

.funkyradio-default input[type="radio"]:checked ~ label:before,
.funkyradio-default input[type="checkbox"]:checked ~ label:before {
  color: #333;
  background-color: #ccc;
}

.funkyradio-primary input[type="radio"]:checked ~ label:before,
.funkyradio-primary input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #337ab7;
}

.funkyradio-success input[type="radio"]:checked ~ label:before,
.funkyradio-success input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #5cb85c;
}

.funkyradio-danger input[type="radio"]:checked ~ label:before,
.funkyradio-danger input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #d9534f;
}

.funkyradio-warning input[type="radio"]:checked ~ label:before,
.funkyradio-warning input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #f0ad4e;
}

.funkyradio-info input[type="radio"]:checked ~ label:before,
.funkyradio-info input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #5bc0de;
}

#inputbox
{
	text-align:center;
	color:black;
}
</style>


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
					<h3>고양이 계약하기</h3>
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
			<div class="col-md-8">
				<div class="panel panel-default center-block">
					<span style="font-size:1.3em;"><b>약관1</b></span>
					<textarea class="form-control" rows="5" readonly style="cursor:text; background-color: #ffffff; padding:0; font-size:1.1em;">회원가입1약관내용입니다.</textarea>
					<div class="funkyradio">
						<div class="funkyradio-info">
							<input type="checkbox" name="checkbox" id="checkbox1"/>
							<label for="checkbox1">이용약관에 동의합니다.</label>
							<button type="button" class="btn btn-default pull-right">전체보기</button>
						</div>
					</div>
					
					<br />
					<br />
					
					<span style="font-size:1.3em;"><b>약관2</b></span>
					<textarea class="form-control" rows="5" readonly style="cursor:text; background-color: #ffffff; padding:0; font-size:1.1em;">회원가입2약관내용입니다.</textarea>
					<div class="funkyradio">
						<div class="funkyradio-info">
							<input type="checkbox" name="checkbox" id="checkbox2"/>
							<label for="checkbox2">이용약관에 동의합니다.</label>
							<button type="button" class="btn btn-default pull-right">전체보기</button>
						</div>
					</div>
					
					<br />
					<br />
					
					<span style="font-size:1.3em;"><b>약관3</b></span>
					<textarea class="form-control" rows="5" readonly style="cursor:text; background-color: #ffffff; padding:0; font-size:1.1em;">회원가입3약관내용입니다.</textarea>
					<div class="funkyradio">
						<div class="funkyradio-info">
							<input type="checkbox" name="checkbox" id="checkbox3"/>
							<label for="checkbox3">이용약관에 동의합니다.</label>
							<button type="button" class="btn btn-default pull-right">전체보기</button>
						</div>
					</div>
					
					<br />
					
					<input id="inputbox" class="form-control" type="text" placeholder="캣렌드 서비스 이용약관에 동의하십니까?" readonly>
					<div class="text-center" style="margin-top:0.3em;">
						<button class="btn btn-primary" style="width:110px;">동의함</button>
						<button class="btn btn-danger" style="width:110px;">동의하지않음</button>
					</div>
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
