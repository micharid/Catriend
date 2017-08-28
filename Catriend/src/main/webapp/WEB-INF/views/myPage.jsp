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

<script>
function confirmFunc(){
	if( confirm(" 탈퇴하시겠습니까? \n\n 탈퇴를 하시면 모든 정보가 DB에서 사라집니다. \n\n 이점 유의해주시길 바랍니다." ) )
	{
		location.href="userdeletesuccess.jsp";
	}
}
</script>

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
					<h3>회원정보수정</h3>
				</center>
			</div>
		</div>
	</div>


	<!-- *****************************************************************************************************************
	 BLOG CONTENT
	 ***************************************************************************************************************** -->

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-body text-center">
						<div class="userimg">
							<div><img class="center-block img-circle img-thumbnail" src="./resources/assets/img/profile.png" style="width: 225px! important; height:225px! important;"></div>
						</div>
						<h3 class="username text-bold">홍길동</h3>
						<div class="text-center">
							<a href="membermyPageindex.jsp">
								<button class="btn" type="submit" style="background-color:#00b3fe; color:white;">마이페이지로</button>
							</a>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="panel-title text-center">회원탈퇴</div>
					</div>
					<div class="panel-body text-center">
						<button class="btn" type="button" style="background-color:#dfdfdf; color:black;" onclick="confirmFunc()">회원 탈퇴하기</button>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="h4 text-center">내 정보 수정하기</div>
						<div class="row">
							<div class="col-lg-12">
								<form class="form-horizontal">
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact1">이름</label>
										<div class="col-sm-10">
											<input class="form-control" "id="inputContact1" type="text" placeholder="" value="이름" disabled>										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact2">이메일</label>
										<div class="col-sm-10">
											<input class="form-control" id="inputContact2" type="text" placeholder="" value="이메일">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact3">닉네임</label>
										<div class="col-sm-10">
											<input class="form-control" id="inputContact3" type="text" placeholder="" value="닉네임">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact4">비밀번호입력</label>
										<div class="col-sm-10">
											<input class="form-control" id="inputContact4" type="password" placeholder="영문,숫자,특수문자를 조합하여 8자 이상으로 입력하세요.(최대20자리)" value="">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact5">비밀번호확인</label>
										<div class="col-sm-10">
											<input class="form-control" id="inputContact5" type="password" placeholder="" value="">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact6">전화번호</label>
										<div class="col-sm-10">
											<input class="form-control" id="inputContact6" type="text" value="010-1234-5678">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact7">생년월일</label>
										<div class="col-sm-10">
											<input class="form-control" id="inputContact7" type="text" value="1234-12-25" disabled>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact8">주소</label>
										<div class="col-sm-10">
											<input class="form-control" id="inputContact8" type="text" value="서울시 마포구 상암동 123-5번지 아무개빌라 201호">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<button class="btn" type="submit" style="background-color:#00b3fe; color:white;">수정하기</button>
										</div>
									</div>
								</form>
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
