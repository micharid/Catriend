<%@page import="catriend.model.CatsDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<CatsDTO> listRows = (List<CatsDTO>) request.getAttribute("listRows");
%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="../assets/ico/favicon.ico">

<title>Cat`riend</title>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="./resources/assets/css/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- Bootstrap core CSS -->
<link href="./resources/assets/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./resources/assets/css/style.css" rel="stylesheet">
<link href="./resources/assets/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy this line! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script src="./resources/assets/js/modernizr.js"></script>



<script>
	$(function() {
		$("input").checkboxradio();
	});
	//에러시 실행할 함수
	function errFunc() {
		alert("실패임 ㅜㅠ");
	}
	//성공시 호출할 함수
	function sucFunc() {
		alert("성공임!!");
	}

	$(document).ready(function() {

		$("input[type='checkbox']").click(function() {
			var keyword = "";
			$("input[type='checkbox']:checked").each(function() {
				keyword = keyword + this.value + "_";
			});

			$.ajax({
				url : 'processing/catlistAction',
				dataType : "html",
				type : "get",
				contentType : "text/html;charset:utf-8",
				data : {
					msg : keyword

				},
				//success : sucFunc,
				success : function(data) {
					$('#Display').html(data);
				},
				error : errFunc
			});
		});
	});
</script>
</head>

<body>

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
					<h3>고양이친구를 소개합니다.</h3>
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

	<div class="container mtb">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 centered">
				<h2>We create awesome designs to standout your site or product.
					Check some of our latest works.</h2>
				<br>
				<div class="hline"></div>
			</div>
		</div>
	</div>
	<!-- /container -->

	<!-- *****************************************************************************************************************
	 PORTFOLIO SECTION
	 ***************************************************************************************************************** -->
	<div class="container-fluid">
		<div class="row">
			<div class="container-fluid">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<table class="table table-condensed"
						style="border: 2px solid black;">
						<tr>
							<td style="text-align: left">
								<table width="100%">
									<colgroup>
										<col width="10%" />
										<col width="*" />
									</colgroup>
									<tr>
										<td>사이즈 :</td>
										<td><label for="cb_1">소형</label><input type="checkbox"
											name="keyword" id="cb_1" value="소형"> <label
											for="cb_2">중형</label><input type="checkbox" name="keyword"
											id="cb_2" value="중형"><label for="cb_3">대형</label> <input
											type="checkbox" name="keyword" id="cb_3" value="대형">
										</td>
									</tr>

									<tr>
										<td>종류 :</td>
										<td><label for="cb_4">코리안숏헤어</label><input
											type="checkbox" name="keyword" id="cb_4" value="코리안숏헤어" /> <label
											for="cb_5">러시안블루</label><input type="checkbox" name="keyword"
											id="cb_5" value="러시안블루" /> <label for="cb_6">샴</label><input
											type="checkbox" name="keyword" id="cb_6" value="샴" /> <label
											for="cb_7">페르시안</label><input type="checkbox" name="keyword"
											id="cb_7" value="페르시안" /> <label for="cb_8">사바나캣</label><input
											type="checkbox" name="keyword" id="cb_8" value="사바나캣" /> <label
											for="cb_9">기타종류</label><input type="checkbox" name="keyword"
											id="cb_9" value="기타종류" /></td>
									</tr>

									<tr>
										<td>털색 :</td>
										<td><label for="cb_10">갈색</label><input type="checkbox"
											name="keyword" id="cb_10" value="갈색" /> <label for="cb_11">흰색</label><input
											type="checkbox" name="keyword" id="cb_11" value="흰색" /> <label
											for="cb_12">검정색</label><input type="checkbox" name="keyword"
											id="cb_12" value="검정색" /> <label for="cb_13">회색</label><input
											type="checkbox" name="keyword" id="cb_13" value="회색" /> <label
											for="cb_14">특이색</label><input type="checkbox" name="keyword"
											id="cb_14" value="특이색" /></td>
									</tr>

									<tr>
										<td>무늬 :</td>
										<td><label for="cb_15">줄무늬</label><input type="checkbox"
											name="keyword" id="cb_15" value="줄무늬" /> <label for="cb_16">민무늬</label><input
											type="checkbox" name="keyword" id="cb_16" value="민무늬" /> <label
											for="cb_17">특이한무늬</label><input type="checkbox"
											name="keyword" id="cb_17" value="특이한무늬" /> <label
											for="cb_18">포인트</label><input type="checkbox" name="keyword"
											id="cb_18" value="포인트" /></td>
									</tr>

									<tr>
										<td>체형 :</td>
										<td><label for="cb_19">포린</label><input type="checkbox"
											name="keyword" id="cb_19" value="포린" /> <label for="cb_20">코비</label><input
											type="checkbox" name="keyword" id="cb_20" value="코비" /> <label
											for="cb_21">롱앤드섭스텐셜</label><input type="checkbox"
											name="keyword" id="cb_21" value="롱앤드섭스텐셜" /> <label
											for="cb_22">오리엔탈</label><input type="checkbox" name="keyword"
											id="cb_22" value="오리엔탈" /></td>
									</tr>

									<tr>
										<td>고양이 등급 :</td>
										<td><label for="cb_23">초보</label><input type="checkbox"
											name="keyword" id="cb_23" value="초보" /> <label for="cb_24">중수</label><input
											type="checkbox" name="keyword" id="cb_24" value="중수" /> <label
											for="cb_25">고수</label><input type="checkbox" name="keyword"
											id="cb_25" value="고수" /></td>
									</tr>

									<tr>
										<td>성별 :</td>
										<td><label for="cb_26">암컷</label><input type="checkbox"
											name="keyword" id="cb_26" value="암컷" /> <label for="cb_27">수컷</label><input
											type="checkbox" name="keyword" id="cb_27" value="수컷" /></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<div class="col-sm-2"></div>
				</div>
			</div>
		</div>
	</div>

	<%
		if (listRows.size() == 0) {
	%>
	<div class="row" align="center">
		<br /> <img src="./resources/assets/img/notsign.png" alt="Not" /><span
			style="font-size: 1.3em;">등록된 글이 없습니다.</span> <br />
	</div>
	<%
		} else {
	%>
	<div id="Display">
		<div id="portfoliowrap">
			<div class="portfolio-centered">
				<div class="recentitems portfolio">
					<%
						for (CatsDTO dto : listRows) {
					%>
					<a href="catProfile?c_index=<%=dto.getC_index()%>">
						<div class="portfolio-item graphic-design">
							<div class="he-wrap tpl6">
								<img src="./resources/assets/img/portfolio/<%=dto.getC_index()%10 +1 %>.jpg" alt="">
								<div class="he-view">
									<div class="bg a0" data-animate="fadeIn">
										<p id="catname"><%=dto.getC_name()%></p>
										<p><%=dto.getC_gender()%></p>
										<p><%=dto.getC_keyword()%></p>
									</div>
								</div>
							</div>
						</div>
					</a>
					<%
						}
						}
					%>
				</div>
			</div>
		</div>
	</div>

	<!-- *****************************************************************************************************************
	 FOOTER
	 ***************************************************************************************************************** -->
	<!-- bottom s -->
	<%@ include file="../../resources/common/layOutBottom.jsp"%>
	<!-- bottom e -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
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
			var $container = $('.portfolio'), $items = $container
					.find('.portfolio-item'), portfolioLayout = 'fitRows';

			if ($container.hasClass('portfolio-centered')) {
				portfolioLayout = 'masonry';
			}

			$container.isotope({
				filter : '*',
				animationEngine : 'best-available',
				layoutMode : portfolioLayout,
				animationOptions : {
					duration : 750,
					easing : 'linear',
					queue : false
				},
				masonry : {}
			}, refreshWaypoints());

			function refreshWaypoints() {
				setTimeout(function() {
				}, 1000);
			}

			$('nav.portfolio-filter ul a').on('click', function() {
				var selector = $(this).attr('data-filter');
				$container.isotope({
					filter : selector
				}, refreshWaypoints());
				$('nav.portfolio-filter ul a').removeClass('active');
				$(this).addClass('active');
				return false;
			});

			function getColumnNumber() {
				var winWidth = $(window).width(), columnNumber = 1;

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
				var winWidth = $(window).width(), columnNumber = getColumnNumber(), itemWidth = Math
						.floor(winWidth / columnNumber);

				$container.find('.portfolio-item').each(function() {
					$(this).css({
						width : itemWidth + 'px'
					});
				});
			}

			function setPortfolio() {
				setColumns();
				$container.isotope('reLayout');
			}

			$container.imagesLoaded(function() {
				setPortfolio();
			});

			$(window).on('resize', function() {
				setPortfolio();
			});
		})(jQuery);
	</script>
</body>
</html>
