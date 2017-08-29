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
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<!-- *****************************************************************************************************************
	 BLUE WRAP
	 ***************************************************************************************************************** -->
	<div id="blue">
		<div class="container">
			<div class="row">
				<center>
					<h3>캣 (상세보기)</h3>
				</center>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /blue -->


	<!-- *****************************************************************************************************************
	 BLOG CONTENT
	 ***************************************************************************************************************** -->

	<div class="container mtb">
		<div class="row">

			<!-- SINGLE POST -->
			<div class="col-lg-8" style="margin: 15px 0 0 0;">
				<!-- Blog Post 1 -->
				<div>
					<!-- top s -->
					<%@ include file="./standard.jsp"%>
					<!-- top e -->
				</div>






				<a href="single-post.html"><h3 class="ctitle">Time to
						change your apps.</h3></a>
				<p>
					<csmall>Posted: April 25, 2014.</csmall>
					|
					<csmall2>By: Admin - 3 Comments</csmall2>
				</p>
				<p>
					<b>Lorem Ipsum</b> is simply dummy text of the printing and
					typesetting industry. Lorem Ipsum has been the industry's standard
					dummy text ever since the 1500s, when an unknown printer took a
					galley of type and scrambled it to make a type specimen book.
				</p>
				<p>It has survived not only five centuries, but also the leap
					into electronic typesetting, remaining essentially unchanged. It
					was popularised in the 1960s with the release of Letraset sheets
					containing Lorem Ipsum passages, and more recently with desktop
					publishing software like Aldus PageMaker including versions of
					Lorem Ipsum.</p>
				<p>
					Contrary to popular belief, <b>Lorem Ipsum is not simply random
						text</b>. It has roots in a piece of classical Latin literature from
					45 BC, making it over 2000 years old. Richard McClintock, a Latin
					professor at <a href="#">Hampden-Sydney College</a> in Virginia,
					looked up one of the more obscure Latin words, consectetur, from a
					Lorem Ipsum passage, and going through the cites of the word in
					classical literature, discovered the undoubtable source.
				</p>
				<p>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de
					Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by
					Cicero, written in 45 BC. This book is a treatise on the theory of
					ethics, very popular during the Renaissance. The first line of
					Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in
					section 1.10.32.</p>
				<h4>Why do we use it?</h4>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout. The point of using Lorem Ipsum is that it has a
					more-or-less normal distribution of letters, as opposed to using
					'Content here, content here', making it look like readable English.</p>
				<blockquote>Many desktop publishing packages and web
					page editors now use Lorem Ipsum as their default model text, and a
					search for 'lorem ipsum' will uncover many web sites still in their
					infancy. Various versions have evolved over the years, sometimes by
					accident, sometimes on purpose (injected humour and the like).</blockquote>
				<p>There are many variations of passages of Lorem Ipsum
					available, but the majority have suffered alteration in some form,
					by injected humour, or randomised words which don't look even
					slightly believable.</p>
				<div class="spacing"></div>
				<h6>SHARE:</h6>
				<p class="share">
					<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-facebook"></i></a> <a href="#"><i
						class="fa fa-tumblr"></i></a> <a href="#"><i
						class="fa fa-google-plus"></i></a>
				</p>

			</div>
			<!--/col-lg-8 -->


			<! -- SIDEBAR -->
			<div class="col-lg-4">
				<h4>고양이친구 프로필</h4>
				<div class="hline"></div>
				<p>
				<h4>이름 : 나비</h4>
				<h4>
					종류 : <a
						href="https://namu.wiki/w/%EB%9F%AC%EC%8B%9C%EC%95%88%20%EB%B8%94%EB%A3%A8">러시안
						블루</a>
				</h4>
				<h4>나이(age) : 1년</h4>
				<h4>건강상태 : 양 호</h4>
				
				</p>
				<button class="btn btn-default" style="width:100%;" onclick="location.href='catcontractagreement'">계약하기</button>

				<div class="spacing"></div>

				<h4>스토리</h4>
				<div class="hline"></div>
				<p>
					<a href="#"><i class="fa fa-angle-right"></i> 추 억 (후기게시판)</a> <span
						class="badge badge-theme pull-right">9</span>
				</p>
				<p>
					<a href="#"><i class="fa fa-angle-right"></i> Photoshop</a> <span
						class="badge badge-theme pull-right">3</span>
				</p>
				<p>
					<a href="#"><i class="fa fa-angle-right"></i> Web Design</a> <span
						class="badge badge-theme pull-right">11</span>
				</p>
				<p>
					<a href="#"><i class="fa fa-angle-right"></i> Development</a> <span
						class="badge badge-theme pull-right">5</span>
				</p>
				<p>
					<a href="#"><i class="fa fa-angle-right"></i> Tips & Tricks</a> <span
						class="badge badge-theme pull-right">7</span>
				</p>
				<p>
					<a href="#"><i class="fa fa-angle-right"></i> Code Snippets</a> <span
						class="badge badge-theme pull-right">12</span>
				</p>

				<div class="spacing"></div>

				<h4>Recent Posts</h4>
				<div class="hline"></div>
				<ul class="popular-posts">
					<li><a href="#"><img src="./resources/assets/img/thumb01.jpg"
							alt="Popular Post"></a>
						<p>
							<a href="#">Lorem ipsum dolor sit amet consectetur adipiscing
								elit</a>
						</p> <em>Posted on 02/21/14</em></li>
					<li><a href="#"><img src="./resources/assets/img/thumb02.jpg"
							alt="Popular Post"></a>
						<p>
							<a href="#">Lorem ipsum dolor sit amet consectetur adipiscing
								elit</a>
						</p> <em>Posted on 03/01/14</em>
					<li><a href="#"><img src="./resources/assets/img/thumb03.jpg"
							alt="Popular Post"></a>
						<p>
							<a href="#">Lorem ipsum dolor sit amet consectetur adipiscing
								elit</a>
						</p> <em>Posted on 05/16/14</em></li>
					<li><a href="#"><img src="./resources/assets/img/thumb04.jpg"
							alt="Popular Post"></a>
						<p>
							<a href="#">Lorem ipsum dolor sit amet consectetur adipiscing
								elit</a>
						</p> <em>Posted on 05/16/14</em></li>
				</ul>

				<div class="spacing"></div>

				<h4>Popular Tags</h4>
				<div class="hline"></div>
				<p>
					<a class="btn btn-theme" href="#" role="button">Design</a> <a
						class="btn btn-theme" href="#" role="button">Wordpress</a> <a
						class="btn btn-theme" href="#" role="button">Flat</a> <a
						class="btn btn-theme" href="#" role="button">Modern</a> <a
						class="btn btn-theme" href="#" role="button">Wallpaper</a> <a
						class="btn btn-theme" href="#" role="button">HTML5</a> <a
						class="btn btn-theme" href="#" role="button">Pre-processor</a> <a
						class="btn btn-theme" href="#" role="button">Developer</a> <a
						class="btn btn-theme" href="#" role="button">Windows</a> <a
						class="btn btn-theme" href="#" role="button">Phothosop</a> <a
						class="btn btn-theme" href="#" role="button">UX</a> <a
						class="btn btn-theme" href="#" role="button">Interface</a> <a
						class="btn btn-theme" href="#" role="button">UI</a> <a
						class="btn btn-theme" href="#" role="button">Blog</a>
				</p>
			</div>
		</div>
		<! --/row -->
	</div>
	<! --/container -->


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