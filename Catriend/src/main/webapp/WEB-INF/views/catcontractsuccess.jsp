<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>계약</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
</head>

<body>

	<!-- Fixed navbar -->
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<br /><br /><br /><br /><br />
	
	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="panel panel-default">
					<div class="panel-body text-center">
						<div class="successimg">
							<img class="center-block" src="./resources/assets/img/contract.png" style="width: 225px! important; height:225px! important;">
						</div>
						<h3>고양이 계약이 완료되었습니다.</h3>
						<div class="text-center">
							<a href="mycontracthistory">
								<button class="btn" type="button" style="background-color:#00b3fe; color:white;">내가 계약한 내역 보기</button>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	
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