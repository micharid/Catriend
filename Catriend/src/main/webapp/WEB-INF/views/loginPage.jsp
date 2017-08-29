<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>KapukAlas - Multipurpose template</title>
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
								Not registered? <a href="#">Create an account</a>
							</p>
						</form>
					</div>
				</div>
			</div>
			<! --/row -->
		</div>
		<! --/container -->
	</section>

	<!-- *****************************************************************************************************************
	 TEEAM MEMBERS
	 ***************************************************************************************************************** -->


	<!-- bottom s -->
	<%@ include file="../../resources/common/layOutBottom.jsp"%>
	<!-- bottom e -->

	<script src="./resources/KapukAlas/js/jquery.js"></script>
	<script src="./resources/KapukAlas/js/bootstrap.min.js"></script>
	<script>
      $(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});

      $(function() {
  //navbar affix
  $('#nav').affix({
    offset: {
      top: $('header').height()
    }
  });
});

      $('#nav .navbar-nav li>a').click(function(){
  var link = $(this).attr('href');
  var posi = $(link).offset().top+20;
  $('body,html').animate({scrollTop:posi},700);
})


      $( document ).ready(function() {
    $("[rel='tooltip']").tooltip();    
 
    $('.thumbnail').hover(
        function(){
            $(this).find('.caption').fadeIn(250);
        },
        function(){
            $(this).find('.caption').fadeOut(205);
        }
    ); 
});
    </script>
</body>
</html>