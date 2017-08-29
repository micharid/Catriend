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

<body>

	<!-- Fixed navbar -->
	<!-- top s -->
	<%-- 다시업로드할땐 이렇게	<%@ include file="../../resources/common/layOutTop.jsp"%> --%>
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<!-- *****************************************************************************************************************
	 BLUE WRAP
	 ***************************************************************************************************************** -->
	<div id="blue">
		<div class="container">
			<div class="row">
				<center>
					<h3>마이페이지</h3>
				</center>
			</div>
		</div>
	</div>


	<!-- *****************************************************************************************************************
	 BLOG CONTENT
	 ***************************************************************************************************************** -->

	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<a href="myPage">
						<div class="panel-body text-center" style="cursor:pointer">
							<div class="tab1img"><img class="center-block" src="./resources/assets/img/setting.png" style="width:96px! important; height:96px! important;"></div>
							<p style="font-size:1.2em">개인정보 수정하기</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<a href="myfreeboardhistory">
						<div class="panel-body text-center" style="cursor:pointer">
							<div class="tab2img"><img class="center-block" src="./resources/assets/img/list.png" style="width:96px! important; height:96px! important;"></div>
							<p style="font-size:1.2em">내가 작성한 글목록</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<a href="mycontracthistory">
						<div class="panel-body text-center" style="cursor:pointer">
							<div class="tab3img"><img class="center-block" src="./resources/assets/img/contract.png" style="width:96px! important; height:96px! important;"></div>
							<p style="font-size:1.2em">내가 계약한 내역</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<a href="myqnahistory">
						<div class="panel-body text-center" style="cursor:pointer">
							<div class="tab4img"><img class="center-block" src="./resources/assets/img/faq.png" style="width:96px! important; height:96px! important;"></div>
							<p style="font-size:1.2em">내가 질문한 내역</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
	
	<br /><br />

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