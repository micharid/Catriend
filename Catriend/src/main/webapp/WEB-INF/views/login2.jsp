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
#blue{
    background: #428BCA;
    margin-bottom:20px;
   
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

</style>

  <body>
  <section id="top">
    <header>
      <div class="container">
        <center>
         	<h1>Welcome to Cat`riend</h1>
	        <h3 style="color:#fff">ed non massa quis nisl tincidunt posuere sit amet vitae sem.</h3>
            
            <div class="skroler">
              <a href="#about"><span class="glyphicon glyphicon-chevron-down" style="color:#ffc35b;"></span></a>
            </div>
        </center>
      </div>
    </header>
  </section>
 

    <div id="nav">
    <nav class="navbar navbar-default navbar-static affix-top" role="navigation">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index">Cat`riend</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
        </ul>
        <ul class="nav navbar-nav navbar-right">
         
          <li><a href="about">About us</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">고양이들<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#">고양이</a></li>
              <li><a href="#">나에게 맞는 고양이</a></li>
              
            </ul>
          </li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">게시판<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#">자유 게시판</a></li>
              <li><a href="#">후기 게시판</a></li>
              
            </ul>
          </li>
          <li><a href="#">Q & A</a></li>
          <li><a href="#">로그인</a></li>
          <li><a href="registRe">회원가입</a></li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div>
    </nav>
  </div>
   <section id="about" class="container">
     <div class="row">
        <div class="col-md-3">
          <span class="glyphicon glyphicon-send"></span> <br>
          <h3>Awesome Feature</h3>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a tincidunt elit. Aliquam porta nibh at enim luctus, auctor consequat dolor vehicula.
        </div>
        <div class="col-md-3">
          <span class="glyphicon glyphicon-heart"></span> <br>
          <h3>Build with love</h3>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a tincidunt elit. Aliquam porta nibh at enim luctus, auctor consequat dolor vehicula.
        </div>
        <div class="col-md-3">
          <span class="glyphicon glyphicon-phone"></span> <br>
          <h3>Responsive Layout</h3>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a tincidunt elit. Aliquam porta nibh at enim luctus, auctor consequat dolor vehicula.
        </div>
        <div class="col-md-3">
          <span class="glyphicon glyphicon-tint"></span> <br>
          <h3>Customizeable</h3>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a tincidunt elit. Aliquam porta nibh at enim luctus, auctor consequat dolor vehicula.
        </div>
      </div>
	<div class="container mtb">
			<div class="row" style="margin-top:50px;">
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
	</div>
			<! --/row -->
		</div>
		<! --/container -->
	</section>

	<!-- *****************************************************************************************************************
	 TEEAM MEMBERS
	 ***************************************************************************************************************** -->


  <section id="sponsor" style="margin-top: 0px;">
    <div class="container">
      <div class="row">
        
      </div>
      <h3 style="color:#fff">Donec sed sapien</h3>
      Morbi felis lectus, ultricies nec tellus eu, faucibus eleifend lectus. In molestie augue leo, id imperdiet ante imperdiet at. Quisque ultrices neque sit amet felis tincidunt tristique at sed nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut suscipit ut massa in ultricies. Nunc nec tincidunt nunc, ut consectetur lorem. Sed non justo nisl.
       <center>
	            
	            <div class="skroler">
	              <a href="#top"><span class="glyphicon glyphicon-chevron-down"></span></a>
	            </div>
	    </center>
    </div>
  </section>

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <h4>KapukAlas</h4>
          <p>Duis viverra suscipit vehicula. Aenean eu massa leo. Sed ullamcorper pretium risus eu scelerisque. Mauris venenatis consequat ultrices. Quisque fringilla sed lacus eu volutpat.</p>
        </div>
        <div class="col-md-3">
          <h4>Our location</h4>
          <div class="row">
            <div class="col-md-1"><span class="glyphicon glyphicon-map-marker"></span></div>
            <div class="col-md-10">Vestibulum placerat, enim sit amet congue aliquet.</div>
          </div><br>
          <div class="row">
            <div class="col-md-1"><span class="glyphicon glyphicon-envelope"></span></div>
            <div class="col-md-10">varius@nibh.lectus.com</div>
          </div><br>
          <div class="row">
            <div class="col-md-1"><span class="glyphicon glyphicon-earphone"></span></div>
            <div class="col-md-10">08888-72738-23</div>
          </div>
        </div>
        <div class="col-md-3">
          <h4>Latest blogs</h4>
          <div class="row">
            <div class="col-md-1"><span class="glyphicon glyphicon-pencil"></span></div>
            <div class="col-md-10">Maecenas suscipit in est a placerat. Curabitur semper sed nibh sed egestas. </div>
          </div><br>
          <div class="row">
            <div class="col-md-1"><span class="glyphicon glyphicon-pencil"></span></div>
            <div class="col-md-10">Maecenas suscipit in est a placerat. Curabitur semper sed nibh sed egestas. </div>
          </div>
        </div>
        <div class="col-md-3">
          <h4>Subscribe</h4>
          <input type="text" class="form-control" placeholder="your email address">
        </div>
      </div>
    </div>
  </footer>  

  <footer id="copyright">
    <p>Copright by @andreyyann 2014, All right reserved.</p>
  </footer>

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