<%@page import="catriend.model.UsersDTO"%>
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
</head>
<style>
#blue {
	background: #428BCA;
	margin-bottom: 20px;
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
					style="font-size: 20px; line-height: 1.428571429; color: #fff; padding: 10px;">관련
					영상</h3>
			</center>

			<!-- /container -->
		</div>
		<div class="container">
			<!-- Fixed navbar -->

			<div class="row pad-set">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="just-txt-div">
						<iframe width="555" height="300"
							src="https://www.youtube.com/embed/jPf0X0QclXE" frameborder="0"
							allowfullscreen></iframe>
					</div>

				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="just-txt-div">
						<iframe style="width: 555px; height: 300px;"
							src="https://www.youtube.com/embed/Xz6yBbBRr8Y" frameborder="0"
							allowfullscreen></iframe>


					</div>
				</div>
			</div>

		</div>

	</section>






	<section id="portfolio">

		<div class="container">

			<div class="row">
				<div id="blue" style="margin-top: 60px;">

					<center>
						<h3
							style="font-size: 20px; line-height: 1.428571429; color: #fff; padding: 10px;">후기
							게시판</h3>
					</center>

					<!-- /container -->
				</div>
				<div class="col-md-4">
					<a href="">
						<div class="thumbnail">
							<div class="caption">Maecenas euismod vitae lacus id
								blandit. Curabitur elementum ultrices nunc. Interdum et
								malesuada fames ac ante ipsum primis in faucibus. Suspendisse
								potenti.</div>
							<img src="./resources/KapukAlas/img/gal/1.jpg" width="100%"
								height="100%">
						</div>
					</a>
				</div>
				<div class="col-md-4">
					<a href="">
						<div class="thumbnail">
							<div class="caption">Maecenas euismod vitae lacus id
								blandit. Curabitur elementum ultrices nunc. Interdum et
								malesuada fames ac ante ipsum primis in faucibus. Suspendisse
								potenti.</div>
							<img src="./resources/KapukAlas/img/gal/2.jpg" width="100%"
								height="100%">
						</div>
					</a>
				</div>
				<div class="col-md-4">
					<a href="">
						<div class="thumbnail">
							<div class="caption">Maecenas euismod vitae lacus id
								blandit. Curabitur elementum ultrices nunc. Interdum et
								malesuada fames ac ante ipsum primis in faucibus. Suspendisse
								potenti.</div>
							<img src="./resources/KapukAlas/img/gal/3.jpg" width="100%"
								height="100%">
						</div>
					</a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<a href="">
						<div class="thumbnail">
							<div class="caption">Maecenas euismod vitae lacus id
								blandit. Curabitur elementum ultrices nunc. Interdum et
								malesuada fames ac ante ipsum primis in faucibus. Suspendisse
								potenti.</div>
							<img src="./resources/KapukAlas/img/gal/4.jpg" width="100%"
								height="100%">
						</div>
					</a>
				</div>
				<div class="col-md-4">
					<a href="">
						<div class="thumbnail">
							<div class="caption">Maecenas euismod vitae lacus id
								blandit. Curabitur elementum ultrices nunc. Interdum et
								malesuada fames ac ante ipsum primis in faucibus. Suspendisse
								potenti.</div>
							<img src="./resources/KapukAlas/img/gal/5.jpg" width="100%"
								height="100%">
						</div>
					</a>
				</div>
				<div class="col-md-4">
					<a href="">
						<div class="thumbnail">
							<div class="caption">Maecenas euismod vitae lacus id
								blandit. Curabitur elementum ultrices nunc. Interdum et
								malesuada fames ac ante ipsum primis in faucibus. Suspendisse
								potenti.</div>
							<img src="./resources/KapukAlas/img/gal/6.jpg" width="100%"
								height="100%">
						</div>
					</a>
				</div>
			</div>
			<center>

				<a href="catBoardList" class="btn btn-primary btn-lg" role="button">후기 게시판
					바로가기</a>
			</center>
		</div>
	</section>

	

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