<%@page import="java.util.HashMap"%>
<%@page import="catriend.model.CatsDTO"%>
<%@page import="java.util.List"%>
<%@page import="catriend.model.CatsDAO"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");
	String[] keywords = request.getParameter("msg").split("_");

	Map<String, Object> paramMap = new HashMap<String, Object>();

	int i = 0;
	for (String str : keywords) {
		paramMap.put("str" + i, str);
		i++;
	}

	paramMap.put("keyCount", i);

	//DAO 연결
	CatsDAO dao = new CatsDAO();

	//총수
	int totalRecordCount = dao.getTotalCatsCount(paramMap);

	//DAO에서 list메소드로 목록가져오기
	List<CatsDTO> listRows = dao.selectAllKeyword(paramMap);
%>
<%
	if (listRows.size() == 0) {
%>
<div class="row" align="center">
	<br /> <img src="./resources/images/notsign.png" alt="Not" width="100"
		height="100" /><span style="font-size: 1.3em;">찾는 고양이가 없습니다.</span> <br />
</div>
<%
	} else {
%>

<div id="portfoliowrap">
	<div class="portfolio-centered">
		<div class="recentitems portfolio">

			<%
				for (CatsDTO dto : listRows) {
			%>
			<a href="membercatview?c_index=<%=dto.getC_index()%>">
				<div class="portfolio-item graphic-design">
					<div class="he-wrap tpl6">
						<img src="./resources/images/1.jpg" alt="">
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
<script>
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
<%-- <div class="row">
	<div class="container-fluid">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<div class="row">
				<%
								if (listRows.size() == 0) {
							%>
				<!-- 등록된 글이 없는경우 노출 -->
				<span>등록된 글이 없습니다.</span>
				<%
								} else {
							%>
				<%
								int nextrow = 0;
									for (CatsDTO dto : listRows) {
										if (nextrow == 0 || nextrow % 3 != 0) {
							%>
				<div class="col-md-4">
					<div class="thumbnail">
						<a
							href="<%=request.getContextPath() %>/membercatview?c_index=<%=dto.getC_index()%>">
							<img src="./resources/images/<%=dto.getC_index()%>.jpg"
							id="image">
							<div class="caption">
								<h3 align="center"><%=dto.getC_name()%></h3>
								<center>
									<p>
										<%=dto.getC_keyword()%>
									</p>
								</center>
							</div>
						</a>
					</div>
				</div>
				<%
								nextrow++;
										} else {
							%>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
</div>
<div class="row">
	<div class="container-fluid">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<a
							href="<%=request.getContextPath() %>/membercatview?c_index=<%=dto.getC_index()%>">
							<img src="./resources/images/<%=dto.getC_index()%>.jpg"
							id="image">
							<div class="caption">
								<h3 align="center"><%=dto.getC_name()%></h3>
								<center>
									<p>
										<%=dto.getC_keyword()%>
									</p>
								</center>
							</div>
						</a>
					</div>
				</div>
				<%
								nextrow++;
										}
									}
								}
							%>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
</div> --%>