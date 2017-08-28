<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="utg-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="./resources/assets/ico/favicon.ico">

<title>SOLID - Bootstrap 3 Theme</title>

<!-- Bootstrap core CSS -->
<link href="./resources/assets/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./resources/assets/css/style.css" rel="stylesheet">
<link href="./resources/assets/css/font-awesome.min.css" rel="stylesheet">

<style>
.animated {
	background-image: url(/css/images/logo.png);
	background-repeat: no-repeat;
	background-position: left top;
	padding-top: 95px;
	margin-bottom: 60px;
	-webkit-animation-duration: 5s;
	animation-duration: 2s;
	-webkit-animation-fill-mode: both;
	animation-fill-mode: both;
}

@
-webkit-keyframes fadeIn { 0% {
	opacity: 0;
}

100%
{
opacity


:

 

1;
}
}
@
keyframes fadeIn { 0% {
	opacity: 0;
}

100%
{
opacity


:

 

1;
}
}
.fadeIn {
	-webkit-animation-name: fadeIn;
	animation-name: fadeIn;
}
</style>


</head>

<body class="animated fadeIn">

	<!-- Fixed navbar -->
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<!-- *****************************************************************************************************************
	 HEADERWRAP
	 ***************************************************************************************************************** -->
	<div id="headerwrap">
		<div class="container">

			<div class="row" style="background-color: #00b3fe;">
				<!-- top s -->
				<%@ include file="newFile.jsp"%>
				<!-- top e -->

			</div>
		</div>
		<div class="container">
			<!-- Fixed navbar -->

			<div class="row pad-set">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="just-txt-div">
						<h2>JUST A CREATIVE THOUGHT</h2>
						<br />
						<p>
							Lorem ipsum dolor sit amet, <strong>consectetur
								adipiscing elit</strong>. Mauris sagittis felis dolor vitae. Mauris
							sagittis felis dolor vitae Mauris sagittis felis dolor vitae.
						</p>
						<p>
							Lorem ipsum dolor sit amet, <strong>consectetur
								adipiscing elit</strong>. Mauris sagittis felis dolor vitae. Mauris
							sagittis felis dolor vitae Mauris sagittis felis dolor vitae.
						</p>
						<p>
							Lorem ipsum dolor sit amet, <strong>consectetur
								adipiscing elit</strong>. Mauris sagittis felis dolor vitae. Mauris
							sagittis felis dolor vitae Mauris sagittis felis dolor vitae.
						</p>
					</div>

				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="just-txt-div">
						<br />
						<iframe style="width: 555px; height: 300px;"
							src="https://www.youtube.com/embed/Xz6yBbBRr8Y" frameborder="0"
							allowfullscreen></iframe>


					</div>
				</div>
			</div>
			<hr />
		</div>
	</div>
	<!-- /headerwrap -->

	<!-- *****************************************************************************************************************
	 SERVICE LOGOS
	 ***************************************************************************************************************** -->
	<div id="service">
		<div class="container">
			<div class="row centered">
				<div class="col-md-4">
					<i class="fa fa-heart-o"></i>
					<!-- 고양이 프로필 -->
					<h4>고양이 친구를 소개합니다(고양이 프로필)</h4>
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry. Lorem Ipsum has been the industry's standard
						dummy text ever since the 1500s, when an unknown printer took a
						galley of type and scrambled it to make a type specimen book.</p>
					<p>
						<br /> <a href="#" class="btn btn-theme">More Info</a>
					</p>
				</div>
				<div class="col-md-4">
					<i class="fa fa-flask"></i>

					<h4>너는 내운명(고양이 추천)</h4>
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry. Lorem Ipsum has been the industry's standard
						dummy text ever since the 1500s, when an unknown printer took a
						galley of type and scrambled it to make a type specimen book.</p>
					<p>
						<br /> <a href="#" class="btn btn-theme">More Info</a>
					</p>
				</div>
				<div class="col-md-4">
					<i class="fa fa-trophy"></i>
					<!-- 후기 게시판 -->
					<h4>추 억(후기 게시판)</h4>
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry. Lorem Ipsum has been the industry's standard
						dummy text ever since the 1500s, when an unknown printer took a
						galley of type and scrambled it to make a type specimen book.</p>
					<p>
						<br /> <a href="#" class="btn btn-theme">More Info</a>
					</p>
				</div>
			</div>
		</div>
		<! --/container -->
	</div>
	<! --/service -->

	<!-- *****************************************************************************************************************
	 PORTFOLIO SECTION
	 ***************************************************************************************************************** -->
	<div id="portfoliowrap">
		<h3>Picture</h3>

		<div class="portfolio-centered">
			<div class="recentitems portfolio">
				<div class="portfolio-item graphic-design">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/portfolio/9.jpg" alt="">
						<div class="he-view">
							<div class="bg a0" data-animate="fadeIn">
								<h3 class="a1" data-animate="fadeInDown">A Graphic Design
									Item</h3>
								<a data-rel="prettyPhoto"
									href="./resources/assets/img/portfolio/9.jpg"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-search"></i></a> <a href="#"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-link"></i></a>
							</div>
							<!-- he bg -->
						</div>
						<!-- he view -->
					</div>
					<!-- he wrap -->
				</div>
				<!-- end col-12 -->

				<div class="portfolio-item web-design">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/portfolio/2.jpg" alt="">
						<div class="he-view">
							<div class="bg a0" data-animate="fadeIn">
								<h3 class="a1" data-animate="fadeInDown">A Web Design Item</h3>
								<a data-rel="prettyPhoto"
									href="./resources/assets/img/portfolio/2.jpg"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-search"></i></a> <a href="#"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-link"></i></a>
							</div>
							<!-- he bg -->
						</div>
						<!-- he view -->
					</div>
					<!-- he wrap -->
				</div>
				<!-- end col-12 -->

				<div class="portfolio-item graphic-design">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/portfolio/3.jpg" alt="">
						<div class="he-view">
							<div class="bg a0" data-animate="fadeIn">
								<h3 class="a1" data-animate="fadeInDown">A Graphic Design
									Item</h3>
								<a data-rel="prettyPhoto"
									href="./resources/assets/img/portfolio/3.jpg"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-search"></i></a> <a href="#"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-link"></i></a>
							</div>
							<!-- he bg -->
						</div>
						<!-- he view -->
					</div>
					<!-- he wrap -->
				</div>
				<!-- end col-12 -->

				<div class="portfolio-item graphic-design">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/portfolio/4.jpg" alt="">
						<div class="he-view">
							<div class="bg a0" data-animate="fadeIn">
								<h3 class="a1" data-animate="fadeInDown">A Graphic Design
									Item</h3>
								<a data-rel="prettyPhoto"
									href="./resources/assets/img/portfolio/4.jpg"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-search"></i></a> <a href="#"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-link"></i></a>
							</div>
							<!-- he bg -->
						</div>
						<!-- he view -->
					</div>
					<!-- he wrap -->
				</div>
				<!-- end col-12 -->

				<div class="portfolio-item books">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/portfolio/5.jpg" alt="">
						<div class="he-view">
							<div class="bg a0" data-animate="fadeIn">
								<h3 class="a1" data-animate="fadeInDown">A Book Design Item</h3>
								<a data-rel="prettyPhoto"
									href="./resources/assets/img/portfolio/5.jpg"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-search"></i></a> <a href="#"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-link"></i></a>
							</div>
							<!-- he bg -->
						</div>
						<!-- he view -->
					</div>
					<!-- he wrap -->
				</div>
				<!-- end col-12 -->

				<div class="portfolio-item graphic-design">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/portfolio/6.jpg" alt="">
						<div class="he-view">
							<div class="bg a0" data-animate="fadeIn">
								<h3 class="a1" data-animate="fadeInDown">A Graphic Design
									Item</h3>
								<a data-rel="prettyPhoto"
									href="./resources/assets/img/portfolio/6.jpg"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-search"></i></a> <a href="#"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-link"></i></a>
							</div>
							<!-- he bg -->
						</div>
						<!-- he view -->
					</div>
					<!-- he wrap -->
				</div>
				<!-- end col-12 -->

				<div class="portfolio-item books">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/portfolio/7.jpg" alt="">
						<div class="he-view">
							<div class="bg a0" data-animate="fadeIn">
								<h3 class="a1" data-animate="fadeInDown">A Book Design Item</h3>
								<a data-rel="prettyPhoto"
									href="./resources/assets/img/portfolio/7.jpg"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-search"></i></a> <a href="#"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-link"></i></a>
							</div>
							<!-- he bg -->
						</div>
						<!-- he view -->
					</div>
					<!-- he wrap -->
				</div>
				<!-- end col-12 -->

				<div class="portfolio-item graphic-design">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/portfolio/8.jpg" alt="">
						<div class="he-view">
							<div class="bg a0" data-animate="fadeIn">
								<h3 class="a1" data-animate="fadeInDown">A Graphic Design
									Item</h3>
								<a data-rel="prettyPhoto"
									href="./resources/assets/img/portfolio/8.jpg"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-search"></i></a> <a href="#"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-link"></i></a>
							</div>
							<!-- he bg -->
						</div>
						<!-- he view -->
					</div>
					<!-- he wrap -->
				</div>
				<!-- end col-12 -->

				<div class="portfolio-item web-design">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/portfolio/1.jpg" alt="">
						<div class="he-view">
							<div class="bg a0" data-animate="fadeIn">
								<h3 class="a1" data-animate="fadeInDown">A Web Design Item</h3>
								<a data-rel="prettyPhoto"
									href="./resources/assets/img/portfolio/1.jpg"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-search"></i></a> <a href="#"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-link"></i></a>
							</div>
							<!-- he bg -->
						</div>
						<!-- he view -->
					</div>
					<!-- he wrap -->
				</div>
				<!-- end col-12 -->

				<div class="portfolio-item books">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/portfolio/10.jpg" alt="">
						<div class="he-view">
							<div class="bg a0" data-animate="fadeIn">
								<h3 class="a1" data-animate="fadeInDown">A Book Design Item</h3>
								<a data-rel="prettyPhoto"
									href="./resources/assets/img/portfolio/10.jpg"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-search"></i></a> <a href="#"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-link"></i></a>
							</div>
							<!-- he bg -->
						</div>
						<!-- he view -->
					</div>
					<!-- he wrap -->
				</div>
				<!-- end col-12 -->

			</div>
			<!-- portfolio -->
		</div>
		<!-- portfolio container -->
	</div>
	<!--/Portfoliowrap -->


	<!-- *****************************************************************************************************************
	 MIDDLE CONTENT
	 ***************************************************************************************************************** -->

	<div class="container mtb">
		<div class="row">
			<div class="col-lg-4 col-lg-offset-1">
				<h4>More About Our Agency.</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and
					typesetting industry. Lorem Ipsum has been the industry's standard
					dummy text ever since the 1500s, when an unknown printer took a
					galley of type and scrambled it to make a type specimen book. It
					has survived not only five centuries, but also the leap into
					electronic typesetting, remaining essentially unchanged.</p>
				<p>
					<br /> <a href="about.jsp" class="btn btn-theme">More Info</a>
				</p>
			</div>

			<div class="col-lg-3">
				<h4>Frequently Asked</h4>
				<div class="hline"></div>
				<p>
					<a href="#">How cool is this theme?</a>
				</p>
				<p>
					<a href="#">Need a nice good-looking site?</a>
				</p>
				<p>
					<a href="#">Is this theme retina ready?</a>
				</p>
				<p>
					<a href="#">Which version of Font Awesome uses?</a>
				</p>
				<p>
					<a href="#">Free support is integrated?</a>
				</p>
			</div>

			<div class="col-lg-3">
				<h4>Latest Posts</h4>
				<div class="hline"></div>
				<p>
					<a href="single-post.html">Our new site is live now.</a>
				</p>
				<p>
					<a href="single-post.html">Retina ready is not an option.</a>
				</p>
				<p>
					<a href="single-post.html">Bootstrap 3 framework is the best.</a>
				</p>
				<p>
					<a href="single-post.html">You need this theme, buy it now.</a>
				</p>
				<p>
					<a href="single-post.html">This theme is what you need.</a>
				</p>
			</div>

		</div>
		<! --/row -->
	</div>
	<! --/container -->

	<!-- *****************************************************************************************************************
	 TESTIMONIALS
	 ***************************************************************************************************************** -->
	<div id="twrap">
		<div class="container centered">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<i class="fa fa-comment-o"></i>
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry. Lorem Ipsum has been the industry's standard
						dummy text ever since the 1500s, when an unknown printer took a
						galley of type and scrambled it to make a type specimen book. It
						has survived not only five centuries, but also the leap into
						electronic typesetting, remaining essentially unchanged.</p>
					<h4>
						<br />Marcel Newman
					</h4>
					<p>WEB DESIGNER - BLACKTIE.CO</p>
				</div>
			</div>
			<! --/row -->
		</div>
		<! --/container -->
	</div>
	<! --/twrap -->


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


	<script>
// Portfolio
(function($) {
	"use strict";
	var $container = $('.portfolio'),
		$items = $container.find('.portfolio-item'),
		portfolioLayout = 'fitRows';
		
		if( $container.hasClass('portfolio-centered') ) {
			portfolioLayout = 'masonry';
		}
				
		$container.isotope({
			filter: '*',
			animationEngine: 'best-available',
			layoutMode: portfolioLayout,
			animationOptions: {
			duration: 750,
			easing: 'linear',
			queue: false
		},
		masonry: {
		}
		}, refreshWaypoints());
		
		function refreshWaypoints() {
			setTimeout(function() {
			}, 1000);   
		}
				
		$('nav.portfolio-filter ul a').on('click', function() {
				var selector = $(this).attr('data-filter');
				$container.isotope({ filter: selector }, refreshWaypoints());
				$('nav.portfolio-filter ul a').removeClass('active');
				$(this).addClass('active');
				return false;
		});
		
		function getColumnNumber() { 
			var winWidth = $(window).width(), 
			columnNumber = 1;
		
			if (winWidth > 1200) {
				columnNumber = 5;
			} else if (winWidth > 950) {
				columnNumber = 4;
			} else if (winWidth > 600) {
				columnNumber = 3;
			} else if (winWidth > 400) {
				columnNumber = 2;
			} else if (winWidth > 250) {
				columnNumber = 1;
			}
				return columnNumber;
			}       
			
			function setColumns() {
				var winWidth = $(window).width(), 
				columnNumber = getColumnNumber(), 
				itemWidth = Math.floor(winWidth / columnNumber);
				
				$container.find('.portfolio-item').each(function() { 
					$(this).css( { 
					width : itemWidth + 'px' 
				});
			});
		}
		
		function setPortfolio() { 
			setColumns();
			$container.isotope('reLayout');
		}
			
		$container.imagesLoaded(function () { 
			setPortfolio();
		});
		
		$(window).on('resize', function () { 
		setPortfolio();          
	});
})(jQuery);
</script>
</body>
</html>