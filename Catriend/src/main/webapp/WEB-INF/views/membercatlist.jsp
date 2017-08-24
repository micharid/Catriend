<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="../assets/ico/favicon.ico">

<title>고양이목록</title>

<style>
	#catname
	{
		padding-top:50px;
	}
</style>

<link rel="stylesheet" href="./js/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$( function() {
	  $( "input" ).checkboxradio({
	    icon: false
	  });
	} );  
</script>




<!-- Bootstrap core CSS -->
<link href="../assets/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../assets/css/style.css" rel="stylesheet">
<link href="../assets/css/font-awesome.min.css" rel="stylesheet">


<script src="../assets/js/modernizr.js"></script>
</head>

<body>

	<!-- Fixed navbar -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">SOLID.</a>
			</div>
			<div class="navbar-collapse collapse navbar-right">
				<ul class="nav navbar-nav">
					<li><a href="index.html">HOME</a></li>
					<li><a href="about.html">ABOUT</a></li>
					<li><a href="contact.html">CONTACT</a></li>
					<li class="dropdown active"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">PAGES <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="blog.html">BLOG</a></li>
							<li><a href="single-post.html">SINGLE POST</a></li>
							<li><a href="portfolio.html">PORTFOLIO</a></li>
							<li><a href="single-project.html">SINGLE PROJECT</a></li>
						</ul></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>


	<!-- *****************************************************************************************************************
	 BLUE WRAP
	 ***************************************************************************************************************** -->
	<div id="blue">
		<div class="container">
			<div class="row">
				<h3>Portfolio.</h3>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /blue -->

	<!-- *****************************************************************************************************************
	 PORTFOLIO SECTION
	 ***************************************************************************************************************** -->
	<div class="container-fluid">
		<div class="row">
			<div class="container-fluid">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<table class="table table-bordered">
						<tr>
							<td style="text-align: center">
								<div class="widget">
									<fieldset>
										<label for="checkbox-1">분류1</label> <input type="checkbox"
											name="checkbox-1" id="checkbox-1"> <label
											for="checkbox-2">분류2</label> <input type="checkbox"
											name="checkbox-2" id="checkbox-2"> <label
											for="checkbox-3">분류3</label> <input type="checkbox"
											name="checkbox-3" id="checkbox-3"> <label
											for="checkbox-4">분류4</label> <input type="checkbox"
											name="checkbox-4" id="checkbox-4"> <label
											for="checkbox-5">분류5</label> <input type="checkbox"
											name="checkbox-5" id="checkbox-5"> <label
											for="checkbox-6">분류6</label> <input type="checkbox"
											name="checkbox-6" id="checkbox-6"> <label
											for="checkbox-7">분류7</label> <input type="checkbox"
											name="checkbox-7" id="checkbox-7"> <label
											for="checkbox-8">분류8</label> <input type="checkbox"
											name="checkbox-8" id="checkbox-8"> <label
											for="checkbox-9">분류9</label> <input type="checkbox"
											name="checkbox-9" id="checkbox-9"> <label
											for="checkbox-10">분류10</label> <input type="checkbox"
											name="checkbox-10" id="checkbox-10"> <label
											for="checkbox-11">분류11</label> <input type="checkbox"
											name="checkbox-11" id="checkbox-11"> <label
											for="checkbox-12">분류12</label> <input type="checkbox"
											name="checkbox-12" id="checkbox-12"> <label
											for="checkbox-13">분류13</label> <input type="checkbox"
											name="checkbox-13" id="checkbox-13"> <label
											for="checkbox-14">분류14</label> <input type="checkbox"
											name="checkbox-14" id="checkbox-14"> <label
											for="checkbox-15">분류15</label> <input type="checkbox"
											name="checkbox-15" id="checkbox-15"> <label
											for="checkbox-16">분류16</label> <input type="checkbox"
											name="checkbox-16" id="checkbox-16">
									</fieldset>
								</div>
							</td>
						</tr>
					</table>
					<div class="col-sm-2"></div>
				</div>
			</div>
		</div>
	</div>


	<div id="portfoliowrap">
		<div class="portfolio-centered">
			<div class="recentitems portfolio">
			
			<!-- 반복시작 -->
				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이1.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>
				<!-- 반복끝 608번째줄까지 동일한내용-->

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이2.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>
				
				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이3.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>
				
				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이4.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>
				
				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이5.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이6.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이7.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이8.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이9.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이1.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이2.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>
				
				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이3.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이4.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>
				
				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이5.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>
				
				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이6.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>
				
				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이7.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
	
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>
				
				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이8.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이9.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>
				
				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이1.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이2.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>
				
				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이1.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이2.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이3.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이4.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이5.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이1.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이2.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>

				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이3.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>
				
				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이4.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>
				
				<a href="catview.jsp">
					<div class="portfolio-item graphic-design">
						<div class="he-wrap tpl6">
							<img src="img/고양이5.jpg" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<p id="catname">고양이이름</p>
									<p>성별</p>
									<p>나이</p>
								</div>
							</div>
						</div>
					</div>
				</a>
				
			</div>
		</div>
	</div>

	<!-- *****************************************************************************************************************
	 FOOTER
	 ***************************************************************************************************************** -->
	<div id="footerwrap">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<h4>About</h4>
					<div class="hline-w"></div>
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry. Lorem Ipsum has been the industry's standard
						dummy text ever since the 1500s.</p>
				</div>
				<div class="col-lg-4">
					<h4>Social Links</h4>
					<div class="hline-w"></div>
					<p>
						<a href="#"><i class="fa fa-dribbble"></i></a> <a href="#"><i
							class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-instagram"></i></a> <a href="#"><i
							class="fa fa-tumblr"></i></a>
					</p>
				</div>
				<div class="col-lg-4">
					<h4>Our Bunker</h4>
					<div class="hline-w"></div>
					<p>
						Some Ave, 987,<br /> 23890, New York,<br /> United States.<br />
					</p>
				</div>

			</div>
			<! --/row -->
		</div>
		<! --/container -->
	</div>
	<! --/footerwrap -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/retina-1.1.0.js"></script>
	<script src="../assets/js/jquery.hoverdir.js"></script>
	<script src="../assets/js/jquery.hoverex.min.js"></script>
	<script src="../assets/js/jquery.prettyPhoto.js"></script>
	<script src="../assets/js/jquery.isotope.min.js"></script>
	<script src="../assets/js/custom.js"></script>


	<script>
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
