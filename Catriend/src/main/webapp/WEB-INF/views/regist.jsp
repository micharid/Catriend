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

<script>
	//     아이디와 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위한 변수설정
	var idCheck = 0;
	var pwdCheck = 0;
	var emailCheck = 0;
	var nickCheck = 0;

	//아이디 체크하여 가입버튼 비활성화, 중복확인.
	function checkId() {
		var f = document.registFrm.u_id.value;
		$.ajax({
			data : {
				id : f
			},
			url : "processing/registcheck",
			success : function(data) {
				if (f == '' && data == 0) {

					$("#rBtn").prop("disabled", true);
					$("#rBtn").css("background-color", "#aaaaaa");
					$("#u_id").css("background-color", "#FFCECE");
					idCheck = 0;
				} else if (data == 0) {

					$("#u_id").css("background-color", "#B0F6AC");
					idCheck = 1;
					if (idCheck == 1 && pwdCheck == 1) {
						
						signupCheck();
					}
				} else if (data == 1) {

					$("#rBtn").prop("disabled", true);
					$("#rBtn").css("background-color", "#aaaaaa");
					$("#u_id").css("background-color", "#FFCECE");
					idCheck = 0;
				}
			}
		});
	}
	
	//아이디 체크하여 가입버튼 비활성화, 중복확인.
	function checkEmail() {
		var f = document.registFrm.u_email.value;
		$.ajax({
			data : {
				email : f
			},
			url : "processing/emailCheck",
			success : function(data) {
				if (f == '' && data == 0) {
					
					$("#rBtn").prop("disabled", true);
					$("#rBtn").css("background-color", "#aaaaaa");
					$("#u_email").css("background-color", "#FFCECE");
					emailCheck = 0;
					signupCheck();
					
				} else if (data == 0) {

					$("#u_email").css("background-color", "#B0F6AC");
					emailCheck = 1;
					signupCheck();
					
				} else if (data == 1) {
					emailCheck = 0;
					$("#rBtn").prop("disabled", true);
					$("#rBtn").css("background-color", "#aaaaaa");
					$("#u_email").css("background-color", "#FFCECE");
					
				}
			}
		});
	}
	function checkPwd() {
		var inputed = document.registFrm.pass.value;
		var reinputed = document.registFrm.cPass.value;

		if (reinputed == "" && (inputed != reinputed || inputed == reinputed)) {
			$("#rBtn").prop("disabled", true);
			$("#rBtn").css("background-color", "#aaaaaa");
			$("#cPass").css("background-color", "#FFCECE");
		} else if (inputed == reinputed) {
			$("#cPass").css("background-color", "#B0F6AC");
			pwdCheck = 1;
			if (idCheck == 1 && pwdCheck == 1) {
				$("#rBtn").prop("disabled", false);
				$("#rBtn").css("background-color", "#4CAF50");
				signupCheck();
			}
		} else if (inputed != reinputed) {
			pwdCheck = 0;
			$("#rBtn").prop("disabled", true);
			$("#rBtn").css("background-color", "#aaaaaa");
			$("#cPass").css("background-color", "#FFCECE");
			

		}
	}
	//닉네임과 이메일 입력하지 않았을 경우 가입버튼 비활성화
	function signupCheck() {
		
		
		var name = document.registFrm.name.value;
		var birthD = document.registFrm.birthD.value;
		var pNumber = document.registFrm.pNumber.value;
		var add = document.registFrm.add.value;

		if (name == "" || birthD == ""	|| pNumber == "" || add == "") {
			
				$("#rBtn").prop("disabled", true);
				$("#rBtn").css("background-color", "#aaaaaa");
			
			
		}else{
			if(idCheck == 1 && pwdCheck == 1 && emailCheck ==1 && nickCheck == 1){
				$("#rBtn").prop("disabled", false);
				$("#rBtn").css("background-color", "#4CAF50");
			}
			
		}
		
	}
</script>


<script>
	//     아이디와 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위한 변수설정
	var nickCheck = 0;
	var pwdCheck = 0;
	//아이디 체크하여 가입버튼 비활성화, 중복확인.
	function checkNick() {
		var f = document.registFrm.nickname.value;

		$.ajax({
			data : {
				nickname : f
			},
			url : "processing/nickCheck",
			success : function(data) {
				if (f == '' && data == 0) {

					$("#rBtn").prop("disabled", true);
					$("#rBtn").css("background-color", "#aaaaaa");
					$("#nickname").css("background-color", "#FFCECE");
					nickCheck = 0;
				} else if (data == 0) {

					$("#nickname").css("background-color", "#B0F6AC");
					nickCheck = 1;
					if (nickCheck == 1 && pwdCheck == 1) {
						
						signupCheck();
					}
				} else if (data == 1) {

					$("#rBtn").prop("disabled", true);
					$("#rBtn").css("background-color", "#aaaaaa");
					$("#nickname").css("background-color", "#FFCECE");
					
					nickCheck = 0;
				}
			}
		});
	}
</script>



<body>
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<section id="about" class="container">
		<div class="row">
			<div class="col-md-3">
				<span class="glyphicon glyphicon-user"></span> <br>
				<h3>환 영</h3>
				고양이와 친구가 되고싶은 분들 환영 합니다.
			</div>
			<div class="col-md-3">
				<span class="glyphicon glyphicon-heart"></span> <br>
				<h3>사 랑</h3>
				우리 고양이 친구들 대부분이 유기묘입니다.사랑으로 보살펴주세요.

			</div>
			<div class="col-md-3">
				<span class="glyphicon glyphicon-film"></span> <br>
				<h3>추 억</h3>  
				고양이친구들과의 추억을 다른분들에게 자랑해보세요.
			</div>
			<div class="col-md-3">
				<span class="glyphicon glyphicon-envelope"></span> <br>
				<h3>편 지</h3>
				언제들지 연락주세요.저희 캣 랜드에서는 집사분들의 의견에 귀 기울이겠습니다.
			</div>
		</div>
		<div id="blue" style="width: 1170px;" align="center">
			<h3 style="font-size: 20px; line-height: 1.428571429; color: #fff; padding: 10px;">회원가입</h3>
		</div>


		<div class="container-fluid">
			<div class="row" style="margin-top: 80px;">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<article class="container-fluid">
						<div class="col-md-12">

							<form class="form-horizontal" name="registFrm"
								onsubmit="return registCheck()" action="registAction">
								<input type="hidden" name="u_grade"
									value="<%=request.getParameter("u_grade")%>" />


								<div class="form-group">
									<label class="col-sm-3 control-label" for="inputId">아이디</label>
									<div class="col-sm-6">
										<input class="form-control" id="u_id" required class="id"
											oninput="checkId()" name="u_id" type="text" value="" placeholder="아이디">

									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
									<div class="col-sm-6">
										<input class="form-control" id="pass" name="u_pw" required
											class="pass" oninput="checkPwd()" type="password" value=""
											placeholder="비밀번호" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="cPass">비밀번호
										확인</label>
									<div class="col-sm-6">
										<input class="form-control" type="password" name="cPass"
											id="cPass" required class="cPass" placeholder="비밀번호 확인"
											oninput="checkPwd()" />
										<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
									</div>
								</div>
								<div class="form-group">
									<label for="phoneNumber" class="col-sm-3 control-label">닉네임</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="nickname" required
											class="nickname" name="u_nickname" oninput="checkNick()"
											placeholder="닉네임을 입력해주세요" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="name">이름</label>
									<div class="col-sm-6">
										<input class="form-control" id="name" name="u_name"
											oninput="signupCheck()" type="text" placeholder="이름" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="email">이메일</label>
									<div class="col-sm-6">
										<input class="form-control" id="u_email" name="u_email"
											oninput="checkEmail()" type="email"
											placeholder="Example@Example.com 형식으로 넣어주세요">
									</div>
								</div>
								<div class="form-group">
									<label for="birthD" class="col-sm-3 control-label">생년월일</label>
									<div class="col-sm-6">
										<input type="date" class="form-control" id="birthD"
											oninput="signupCheck()" name="u_birthday"
											placeholder="19700101 형식으로 입력하세요." maxlength="8">
									</div>
								</div>
								<div class="form-group">
									<label for="pNumber" class="col-sm-3 control-label">휴대폰
										번호</label>
									<div class="col-sm-6">
										<input type="tel" class="form-control" id="pNumber"
											oninput="signupCheck()" name="u_phonenumber"
											placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
									</div>
								</div>
								<div class="form-group">
									<label for="add" class="col-sm-3 control-label">주소</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="add"
											name="u_address" placeholder="주소를 입력해주세요"
											oninput="signupCheck()" />
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-12 text-center">
										<button class="btn btn-info" id="rBtn" type="submit">
											회원가입 <i class="fa fa-check spaceLeft"></i>
										</button>


										<button class="btn btn-danger" type="reset">
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