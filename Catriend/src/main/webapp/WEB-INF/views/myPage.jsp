<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="utf-8">
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
					<h3>MY PAGE</h3>
				</center>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /blue -->

	<!-- *****************************************************************************************************************
	 TITLE & CONTENT
	 ***************************************************************************************************************** -->

	<div class="container mt">
		<div class="row">
			<div class="col-lg-10 col-lg-offset-1 centered">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="./resources/assets/img/portfolio/1.jpg" alt="">
						</div>
						<div class="item">
							<img src="./resources/assets/img/portfolio/2.jpg" alt="">
						</div>
						<div class="item">
							<img src="./resources/assets/img/portfolio/3.jpg" alt="">
						</div>
					</div>
				</div>
				<! --/Carousel -->
			</div>

			<div class="col-lg-5 col-lg-offset-1">
				<div class="spacing"></div>
				<h4>YOUR PROJECT NAME</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and
					typesetting industry. Lorem Ipsum has been the industry's standard
					dummy text ever since the 1500s, when an unknown printer took a
					galley of type and scrambled it to make a type specimen book. It
					has survived not only five centuries, but also the leap into
					electronic typesetting, remaining essentially unchanged.</p>
				<h4>Our Proposal</h4>
				<p>It was popularised in the 1960s with the release of Letraset
					sheets containing Lorem Ipsum passages, and more recently with
					desktop publishing software like Aldus PageMaker including versions
					of Lorem Ipsum.</p>
			</div>

			<div class="col-lg-4 col-lg-offset-1">
				<div class="spacing"></div>
				<h4>Project Details</h4>
				<div class="hline"></div>
				<p>
					<b>Date:</b> April 18, 2014
				</p>
				<p>
					<b>Author:</b> Marcel Newman
				</p>
				<p>
					<b>Categories:</b> Illustration, Web Design, Wordpress
				</p>
				<p>
					<b>Tagged:</b> Flat, UI, Development
				</p>
				<p>
					<b>Client:</b> Wonder Corp.
				</p>
				<p>
					<b>Website:</b> <a href="http://blacktie.co">http://blacktie.co</a>
				</p>
			</div>

		</div>
		<! --/row -->
	</div>
	<! --/container -->

	<!-- *****************************************************************************************************************
	 PORTFOLIO SECTION
	 ***************************************************************************************************************** -->
	<div id="portfoliowrap">
		<div class="portfolio-centered">
			<h3>Related Works.</h3>
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
									class="fa fa-search"></i></a> <a href="single-project.html"
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
									class="fa fa-search"></i></a> <a href="single-project.html"
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
									class="fa fa-search"></i></a> <a href="single-project.html"
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
									class="fa fa-search"></i></a> <a href="single-project.html"
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
						<img src="./resources/assets/img/portfolio/5.jpg" alt="">
						<div class="he-view">
							<div class="bg a0" data-animate="fadeIn">
								<h3 class="a1" data-animate="fadeInDown">A Graphic Design
									Item</h3>
								<a data-rel="prettyPhoto"
									href="./resources/assets/img/portfolio/5.jpg"
									class="dmbutton a2" data-animate="fadeInUp"><i
									class="fa fa-search"></i></a> <a href="single-project.html"
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
	 FOOTER
	 ***************************************************************************************************************** -->
	<!-- Fixed navbar -->
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
