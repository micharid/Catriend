<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
</head>
<style>
#blue {
	background: #428BCA;
	margin-bottom: 20px;
}

h2, h3, h4, h5, h6 {
	font-family: 'Raleway', sans-serif;
	font-weight: 900;
}

.ctitle {
	color: #00b3fe;
	font-weight: 700;
	margin-bottom: 15px;
}

<
style
>
@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
	width: 360px;
	padding: 8% 0 0;
	margin: auto;
}

.form {
	position: relative;
	z-index: 1;
	background: #FFFFFF;
	max-width: 360px;
	margin: 0 auto 100px;
	padding: 45px;
	text-align: center;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0
		rgba(0, 0, 0, 0.24);
}

.form input {
	font-family: "Roboto", sans-serif;
	outline: 0;
	background: #f2f2f2;
	width: 100%;
	border: 0;
	margin: 0 0 15px;
	padding: 15px;
	box-sizing: border-box;
	font-size: 14px;
}

.form button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #00b3fe;
	width: 100%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
}

.form button:hover, .form button:active, .form button:focus {
	background: #ffc35b;
}

.form .message {
	margin: 15px 0 0;
	color: #b3b3b3;
	font-size: 12px;
}

.form .message a {
	color: #00b3fe;
	text-decoration: none;
}

.form .register-form {
	display: none;
}
</style>

<script>
	//     아이디와 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위한 변수설정
	var idCheck = 0;
	var pwdCheck = 0;

	//아이디 체크하여 가입버튼 비활성화, 중복확인.
	function checkId() {
		var f = document.loginFrm.u_id.value;
		var email = document.loginFrm.u_email.value;
		$.ajax({
			data : {
				id : f
			},
			url : "processing/findIdCheck",
			success : function(data) {
				if (f == '' && data == 0) {

					$("#rBtn").prop("disabled", true);
					$("#rBtn").css("background-color", "#aaaaaa");
					$("#u_id").css("background-color", "#FFCECE");
					idCheck = 0;
				} else if (data == 0) {

					$("#u_id").css("background-color", "#FFCECE");
					$("#rBtn").prop("disabled", true);
					$("#rBtn").css("background-color", "#aaaaaa");

				} else if (data == 1) {

					$("#u_id").css("background-color", "#B0F6AC");

				}
			}
		});
	}

	function checkEmail() {
		var f = document.loginFrm.u_email.value;

		$.ajax({
			data : {
				email : f

			},
			url : "processing/findEmailCheck",
			success : function(data) {
				if (f == '' && data == 0) {

					$("#rBtn").prop("disabled", true);
					$("#rBtn").css("background-color", "#aaaaaa");
					$("#u_email").css("background-color", "#FFCECE");
					idCheck = 0;
				} else if (data == 0) {

					$("#u_email").css("background-color", "#FFCECE");
					$("#rBtn").prop("disabled", false);
					$("#rBtn").css("background-color", "#aaaaaa");

				} else if (data == 1) {

					$("#rBtn").prop("disabled", false);
					$("#rBtn").css("background-color", "#4CAF50");
					$("#u_email").css("background-color", "#B0F6AC");
					equal();
				}
			}
		});
	}

	function equal() {
		var email = document.loginFrm.u_email.value;
		var id = document.loginFrm.u_id.value
		$.ajax({
			data : {
				email : email,
				id : id
			},
			url : "processing/findEqualCheck",
			success : function(data) {
				if (email == '' && id == '' && data == 0) {

					$("#rBtn").prop("disabled", true);
					$("#rBtn").css("background-color", "#aaaaaa");
					$("#u_email").css("background-color", "#FFCECE");
					idCheck = 0;
				} else if (data == 0) {

					$("#u_email").css("background-color", "#FFCECE");
					$("#rBtn").prop("disabled", true);
					$("#rBtn").css("background-color", "#aaaaaa");

				} else if (data == 1) {

					$("#rBtn").prop("disabled", false);
					$("#rBtn").css("background-color", "#4CAF50");
					$("#u_email").css("background-color", "#B0F6AC");

				}
			}
		});

	}

	function updatePass() {
		var email = document.loginFrm.u_email.value;
		var id = document.loginFrm.u_id.value
		$.ajax({
			data : {
				email : email,
				id : id
			},
			url : "processing/emailsend",
			success : function(data) {
				if (data == 1){
					alert("성공");
				} 
			}
		});

	}
</script>

<body>

	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<!-- bottom s -->
	<%@ include file="../../resources/common/sectionAd.jsp"%>
	<!-- bottom e -->
	<div class="container mtb">
		<div class="row" style="margin-top: 50px;">
			<div class="login-page">
				<div class="form">
					<span style="color: red;">${loginError}</span>
					<form class="login-form" action="mail" name="loginFrm"
						onsubmit="return checkForm();">
						<input type="text" placeholder="아이디를 입력하세요." name="u_id" id="u_id"
							oninput="checkId()" required class="id" /> <input type="text"
							placeholder="E - mail 을 입력하세요." name="u_email" id="u_email"
							oninput="checkEmail()" /> <input type="submit" id="rBtn"
							value="비밀번호 찾기" onclick="updatePass()" />

					</form>
				</div>
			</div>
		</div>
		<! --/row -->
	</div>



	<!-- *****************************************************************************************************************
	 TEEAM MEMBERS
	 ***************************************************************************************************************** -->


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