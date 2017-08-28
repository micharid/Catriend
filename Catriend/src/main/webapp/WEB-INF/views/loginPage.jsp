<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible">
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
<style>
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

body {
	background: #ffc35b;
}
</style>
<script>
	function checkForm() {
		var f = document.loginFrm;
		if (f.u_id.value == null) {
			f.u_id.focus();
			return false;
		}
		if (f.u_pw.value == null) {
			f.u_pw.focus();
			return false;
		}
		return true;
	}
</script>
<title>login</title>
</head>
<body>
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<div class="login-page">
		<div class="form">
			<span style="color:red;">${loginError}</span>
			<form class="login-form" action="loginAction" name="loginFrm"
				onsubmit="return checkForm();">
				<input type="text" placeholder="userid" name="u_id" /> <input
					type="password" placeholder="password" name="u_pw" />
				<input type="submit" value="로그인"/>
				<p class="message">
					Not registered? <a href="#">Create an account</a>
				</p>
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