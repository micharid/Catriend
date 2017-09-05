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
						<form class="login-form" action="loginAction" name="loginFrm"
							onsubmit="return checkForm();">
							<input type="text" placeholder="userid" name="u_id" /> <input
								type="password" placeholder="password" name="u_pw" /> <input
								type="submit" value="로그인" />
							<p class="message">
								Not registered? <a href="onlineForm">Create an account</a>
							</p>
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