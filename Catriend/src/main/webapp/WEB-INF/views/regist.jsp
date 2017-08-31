<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
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

h3 {
	
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
				<span class="glyphicon glyphicon-send"></span> <br>
				<h3>Awesome Feature</h3>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a
				tincidunt elit. Aliquam porta nibh at enim luctus, auctor consequat
				dolor vehicula.
			</div>
			<div class="col-md-3">
				<span class="glyphicon glyphicon-heart"></span> <br>
				<h3>Build with love</h3>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a
				tincidunt elit. Aliquam porta nibh at enim luctus, auctor consequat
				dolor vehicula.
			</div>
			<div class="col-md-3">
				<span class="glyphicon glyphicon-phone"></span> <br>
				<h3>Responsive Layout</h3>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a
				tincidunt elit. Aliquam porta nibh at enim luctus, auctor consequat
				dolor vehicula.
			</div>
			<div class="col-md-3">
				<span class="glyphicon glyphicon-tint"></span> <br>
				<h3>Customizeable</h3>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a
				tincidunt elit. Aliquam porta nibh at enim luctus, auctor consequat
				dolor vehicula.
			</div>
		</div>
		<div id="blue" style="width: 1170px;">

			<center>
				<h3
					style="font-size: 20px; line-height: 1.428571429; color: #fff; padding: 10px;">회원가입</h3>
			</center>

			<!-- /container -->
		</div>


		<div class="container-fluid">
			<div class="row" style="margin-top: 80px;">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<article class="container-fluid">
						<div class="col-md-12">

							<form class="form-horizontal" name="registFrm"
								onsubmit="return registCheck()" action="registAction">
								<input type="hidden" name="u_grade" value="<%=request.getParameter("u_grade")%>" />
								<div class="form-group">
									<label class="col-sm-3 control-label" for="inputId">아이디</label>
									<div class="col-sm-6">
										<input class="form-control" id="inputId" name="u_id" type="text"
											placeholder="아이디">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
									<div class="col-sm-6">
										<input class="form-control" id="inputPassword" name="u_pw"
											type="password" placeholder="비밀번호">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
										확인</label>
									<div class="col-sm-6">
										<input class="form-control" id="inputPasswordCheck"
											type="password" name="u_pwCheck" placeholder="비밀번호 확인">
										<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
									</div>
								</div>
								<div class="form-group">
									<label for="phoneNumber" class="col-sm-3 control-label">닉네임</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="u_nickname"
											name="u_nickname" placeholder="닉네임을 입력해주세요" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="inputName">이름</label>
									<div class="col-sm-6">
										<input class="form-control" id="inputName" name="u_name"
											type="text" placeholder="이름" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="inputEmail">이메일</label>
									<div class="col-sm-6">
										<input class="form-control" id="inputEmail" name="u_email"
											type="email" placeholder="Example@Example.com 형식으로 넣어주세요">
									</div>
								</div>
								<div class="form-group">
									<label for="birthdate" class="col-sm-3 control-label">생년월일</label>
									<div class="col-sm-6">
										<input type="date" class="form-control" id="u_birthday"
											name="u_birthday" placeholder="19700101 형식으로 입력하세요."
											maxlength="8">
									</div>
								</div>
								<div class="form-group">
									<label for="phoneNumber" class="col-sm-3 control-label">휴대폰
										번호</label>
									<div class="col-sm-6">
										<input type="tel" class="form-control" id="u_phonenumber"
											name="u_phoneNumber" placeholder="-를 제외하고 숫자만 입력하세요."
											maxlength="11">
									</div>
								</div>
								<div class="form-group">
									<label for="phoneNumber" class="col-sm-3 control-label">주소</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="u_address"
											name="u_address" placeholder="주소를 입력해주세요" />
									</div>
								</div>





								<div class="form-group">
									<div class="col-sm-12 text-center">
										<button class="btn btn-primary" type="submit">
											회원가입 <i class="fa fa-check spaceLeft"></i>
										</button>
										<button class="btn btn-danger" type="button">
											가입취소 <i class="fa fa-times spaceLeft"></i>
										</button>
									</div>
								</div>
							</form>

						</div>
					</article>
				</div>
				<div class="col-sm-2"></div>
			</div>

			<br />
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