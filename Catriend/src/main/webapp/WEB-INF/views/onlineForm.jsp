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
body {
	background: #ffc35b;
}
</style>

<body>

	<!-- Fixed navbar -->
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<!-- *****************************************************************************************************************
	 BLUE WRAP
	 ***************************************************************************************************************** -->
	<div id="blue">
		<div class="container">
			<div class="row">
				<center>
					<h3>설문조사</h3>
				</center>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /blue -->

	<!-- *****************************************************************************************************************
	 CONTACT WRAP
	 ***************************************************************************************************************** -->
	<div class="row">
		<div class="container">
			<form action="onlineFormAction">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h1>설 문 조 사</h1>
							<h3>잘 읽고, 물음에 답해주세요.</h3>
							<h3>
								이 문제의 점수로 등급이 매겨집니다.
								<h3>
						</div>
						<div class="panel-body">
							<h4>다음중 고양이과 동물이 아닌것음?</h4>
							<p>
								<input type="radio" name="test1" value="0" />삵
							</p>
							<p>
								<input type="radio" name="test1" value="0" />치타
							</p>
							<p>
								<input type="radio" name="test1" value="5" />곰
							</p>
							<p>
								<input type="radio" name="test1" value="0" />퓨마
							</p>

							<hr />

							<h4>다음중 고양이가 만지면 싫어하는 부위는?</h4>
							<p>
								<input type="radio" name="test2" value="0" />목 뒷덜미
							</p>
							<p>
								<input type="radio" name="test2" value="0" />턱
							</p>
							<p>
								<input type="radio" name="test2" value="5" />배
							</p>
							<p>
								<input type="radio" name="test2" value="0" />엉덩이
							</p>

						</div>
						<div class="panel-footer">
							<button type="submit" class="btn btn-info">제출하기</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<!-- *****************************************************************************************************************
	 FOOTER
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