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
					<h3>내가 남긴 후기글</h3>
				</center>
			</div>
		</div>
	</div>


	<!-- *****************************************************************************************************************
	 BLOG CONTENT
	 ***************************************************************************************************************** -->

	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<div class="list-group text-center">
					<a href="myfreeboardhistory" class="list-group-item">자유게시판</a>
					<!-- 소스코드로 active ajax방식으로 구현가능한지 확인해보기 -->
					<a href="myreviewhistory" class="list-group-item active">후기게시판</a>
					<a class="btn btn-default list-group-item" href="myPageindex">마이 페이지로</a>
				</div>
			</div>
			<div class="col-md-10">
				
				<div class="panel panel-default">
					<div class="panel-heading" style="font-size:1.5em; font-weight:700;">
						<center>
							후기게시판
						</center>
					</div>
					<div class="panel-body">
						<table class="table table-hover table-bordered">
							<tr style="text-align:center;">
								<th style="width:5%;" class="text-center">NO</th>
								<th style="width:80%;">글제목</th>
								<th style="width:15%;" class="text-center">작성일</th>
							</tr>
							<!-- 반복시작 -->
							<tr>
								<td class="text-center">1</td>
								<td>
									<a href="#">
										내가 작성한 후기게시판의 글을 불러오는 공간입니다.
									</a>
								</td>
								<td class="text-center">2017-08-26</td>
							</tr>
							<!-- 반복끝 -->
							<tr>
								<td class="text-center">1</td>
								<td>
									<a href="#">
										내가 작성한 후기게시판의 글을 불러오는 공간입니다.
									</a>
								</td>
								<td class="text-center">2017-08-26</td>
							</tr>
							<tr>
								<td class="text-center">1</td>
								<td>
									<a href="#">
										내가 작성한 후기게시판의 글을 불러오는 공간입니다.
									</a>
								</td>
								<td class="text-center">2017-08-26</td>
							</tr>
							<tr>
								<td class="text-center">1</td>
								<td>
									<a href="#">
										내가 작성한 후기게시판의 글을 불러오는 공간입니다.
									</a>
								</td>
								<td class="text-center">2017-08-26</td>
							</tr>
							<tr>
								<td class="text-center">1</td>
								<td>
									<a href="#">
										내가 작성한 후기게시판의 글을 불러오는 공간입니다.
									</a>
								</td>
								<td class="text-center">2017-08-26</td>
							</tr>
						</table>
						<div class="pull-right" style="margin-top:-15px;">
							<button class="btn" type="submit" style="background-color:#00b3fe; color:white;" onclick="location.href='boardList'">게시판으로</button>
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
				</div>
			</div>
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