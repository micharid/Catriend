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

.col-lg-6 {
	margin-top: 30px;
}

.ctitle {
	color: #00b3fe;
	font-weight: 700;
	margin-bottom: 15px;
}
</style>

<body>
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<section id="about">
		<div class="container mtb">
			<div class="row">
				<div class="col-md-3">
					<span class="glyphicon glyphicon-send"></span> <br>
					<h3>Awesome Feature</h3>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur
					a tincidunt elit. Aliquam porta nibh at enim luctus, auctor
					consequat dolor vehicula.
				</div>
				<div class="col-md-3">
					<span class="glyphicon glyphicon-heart"></span> <br>
					<h3>Build with love</h3>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur
					a tincidunt elit. Aliquam porta nibh at enim luctus, auctor
					consequat dolor vehicula.
				</div>
				<div class="col-md-3">
					<span class="glyphicon glyphicon-phone"></span> <br>
					<h3>Responsive Layout</h3>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur
					a tincidunt elit. Aliquam porta nibh at enim luctus, auctor
					consequat dolor vehicula.
				</div>
				<div class="col-md-3">
					<span class="glyphicon glyphicon-tint"></span> <br>
					<h3>Customizeable</h3>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur
					a tincidunt elit. Aliquam porta nibh at enim luctus, auctor
					consequat dolor vehicula.
				</div>
			</div>


			<div class="row">

				<center>
					<h3 class="mb" id="blue" style="color: #fff; padding: 10px;">More
						About Our Agency</h3>
				</center>
				<div class="col-lg-6">
					<img class="img-responsive"
						src="./resources/assets/img/OfficeCat.jpg" alt=""
						style="width: 100%; height: 100%;">
				</div>

				<div class="col-lg-6 text" style="margin-top: 70px;">

					<p>이곳은 고양이와 사람들이 친구가 될 수 있도록 기회를 제공해주는 곳입니다.</p>
					<p>이곳에서는 고양이를 빌려주는 일을 하고 있습니다.일상생활의 스트레스와 외로움을 고양이로 잊어보는게 어떠세요?</p>
					<p>저희 캣랜드에서는 지치고 , 외로운 분들을 기달리고 있습니다.</p>
					<p>캣랜드에 대한 어떠한 의견도 환영합니다.주저 없이 저희에게 연락 주세요.</p>



					<p>This is where cats and people get a chance to be friends.</p>
					<p>I am lending a cat here. How about forgetting the stress and
						loneliness of everyday life as a cat?</p>
					<p>At Cat`riend we are waiting for tired, lonely people.</p>
					<p>Any comments on Cat`riend are welcome. Please do not
						hesitate to contact us.</p>



					<p>
						<a href="contact" class="btn btn-info">Contact Us</a>
					</p>
				</div>
			</div>
			<! --/row -->
		</div>
		<! --/container -->
	</section>

	<!-- *****************************************************************************************************************
	 TEEAM MEMBERS
	 ***************************************************************************************************************** -->
	<section id="contact">
		<div class="container mtb">
			<div class="row centered">
				<center>
					<h3 class="mb" id="blue"
						style="margin-bottom: 20px; color: #fff; padding: 10px;">OUR
						TEAM</h3>
				</center>

				<div class="col-lg-3 col-md-3 col-sm-3">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/teams/team1.jpg" alt="">


					</div>
					<!-- he wrap -->
					<h4>Kim ByungHoon</h4>
					<h5 class="ctitle">CEO</h5>
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry.</p>
					<div class="hline"></div>
				</div>
				<! --/col-lg-3 -->

				<div class="col-lg-3 col-md-3 col-sm-3">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/teams/team2.jpg" alt="">

						<!-- he view -->
					</div>
					<!-- he wrap -->
					<h4>Kim JaeMin</h4>
					<h5 class="ctitle">CEO</h5>
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry.</p>
					<div class="hline"></div>
				</div>
				<! --/col-lg-3 -->

				<div class="col-lg-3 col-md-3 col-sm-3">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/teams/team3.jpg" alt="">

						<!-- he view -->
					</div>
					<!-- he wrap -->
					<h4>Kim JinSoo</h4>
					<h5 class="ctitle">CEO</h5>
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry.</p>
					<div class="hline"></div>
				</div>
				<! --/col-lg-3 -->

				<div class="col-lg-3 col-md-3 col-sm-3">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/teams/team4.jpg" alt="">

						<!-- he view -->
					</div>
					<!-- he wrap -->
					<h4>Park choHee</h4>
					<h5 class="ctitle">CEO</h5>
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry.</p>
					<div class="hline"></div>
				</div>
				<! --/col-lg-3 -->

			</div>
			<! --/row -->
		</div>
		<! --/container -->
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