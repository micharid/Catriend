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
					<h3>내가 계약한 내역</h3>
				</center>
			</div>
		</div>
	</div>


	<!-- *****************************************************************************************************************
	 BLOG CONTENT
	 ***************************************************************************************************************** -->

	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="panel panel-default">
					<div class="panel-heading" style="font-size:1.5em; font-weight:700;">
						<center>
							내가 계약한 내역
						</center>
					</div>
					<br />
					<!-- 반복시작 -->
					<div class="panel panel-default center-block" style="width:95%;">
						<table class="table table-bordered">
							<tr>
								<td rowspan="3" width="200px;">
									<div class="tab3img"><img class="center-block" src="./resources/assets/img/CatMade.jpg"></div>
								</td>
								<td style="vertical-align:middle;">이름 : 홍길동</td>
								<td rowspan="3" style="width:20%; margin-top:50%; text-align:center; vertical-align:middle;">
									1998-03-20
									<br />
									(계약한 날짜)
								</td>
							</tr>
							<tr>
								<td style="vertical-align:middle;">성별 : 남자</td>
							</tr>
							<tr>
								<td style="vertical-align:middle;">나이 : 35살</td>
							</tr>
						</table>
					</div>
					<!-- 반복끝 -->
					<div class="panel panel-default center-block" style="width:95%;">
						<table class="table table-bordered">
							<tr>
								<td rowspan="3" width="200px;">
									<div class="tab3img"><img class="center-block" src="./resources/assets/img/CatMade.jpg"></div>
								</td>
								<td style="vertical-align:middle;">이름 : 마이크 타이슨</td>
								<td rowspan="3" style="width:20%; margin-top:50%; text-align:center; vertical-align:middle;">
									1998-03-20
									<br />
									(계약한 날짜)
								</td>
							</tr>
							<tr>
								<td style="vertical-align:middle;">성별 : 여자</td>
							</tr>
							<tr>
								<td style="vertical-align:middle;">나이 : 5살</td>
							</tr>
						</table>
					</div>
					<div class="panel panel-default center-block" style="width:95%;">
						<table class="table table-bordered">
							<tr>
								<td rowspan="3" width="200px;">
									<div class="tab3img"><img class="center-block" src="./resources/assets/img/CatMade.jpg"></div>
								</td>
								<td style="vertical-align:middle;">이름 : 딸기</td>
								<td rowspan="3" style="width:20%; margin-top:50%; text-align:center; vertical-align:middle;">
									1998-03-20
									<br />
									(계약한 날짜)
								</td>
							</tr>
							<tr>
								<td style="vertical-align:middle;">성별 : 남자</td>
							</tr>
							<tr>
								<td style="vertical-align:middle;">나이 : 7살</td>
							</tr>
						</table>
					</div>
				</div>
				
				<div class="pull-right" style="margin-top:-15px;">
							<button class="btn" type="submit" style="background-color:#00b3fe; color:white;" onclick="location.href='catlist'">고양이보러가기</button>
						</div>
						<div class="col-md-12 text-center" style="margin-top:-15px;">
							<nav>
								<ul class="pagination">
									<li><a href="#" aria-label="Previous"> <span
											aria-hidden="true">&laquo;</span>
									</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#" aria-label="Next"> <span
											aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
						</div>
						<div class="col-md-12 text-center" style="margin-top:-15px;">
							<button class="btn" type="submit" style="background-color:#00b3fe; color:white;" onclick="location.href='myPageindex'">마이페이지로</button>
						</div>

			</div>
			<div class="col-md-1"></div>
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