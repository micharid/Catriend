<%@page import="catriend.model.CatsDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<CatsDTO> listRows = (List<CatsDTO>) request.getAttribute("listRows");
%>
<!DOCTYPE html>
<html>
<head>
<title>KapukAlas - Multipurpose template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
<script src="./resources/js/jquery-3.2.1.js"></script>

<script>
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

	<div id="Display">
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

		<section id="portfolio">
			<div class="container">
				<div class="row">
					<%
						for (CatsDTO dto : listRows) {
					%>
					<div class="col-md-4">
						<a href="catProfile?c_index=<%=dto.getC_index()%>">
							<div class="thumbnail">
								<div class="caption">
									<br /> <br />
									<p id="catname" style="font-size: 1.8em;"><%=dto.getC_name()%></p>
									<p><%=dto.getC_gender()%></p>
									<p><%=dto.getC_keyword()%></p>
								</div>
								<img
									src="./resources/assets/img/portfolio/<%=dto.getC_index() % 10 + 1%>.jpg"
									width="100%" height="100%">
							</div>
						</a>
					</div>
					<%
						}
						}
					%>
				</div>
			</div>
		</section>
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
			$('a[href*=#]:not([href=#])')
					.click(
							function() {
								if (location.pathname.replace(/^\//, '') == this.pathname
										.replace(/^\//, '')
										&& location.hostname == this.hostname) {
									var target = $(this.hash);
									target = target.length ? target
											: $('[name=' + this.hash.slice(1)
													+ ']');
									if (target.length) {
										$('html,body').animate({
											scrollTop : target.offset().top
										}, 1000);
										return false;
									}
								}
							});
		});

		$(function() {
			//navbar affix
			$('#nav').affix({
				offset : {
					top : $('header').height()
				}
			});
		});

		$('#nav .navbar-nav li>a').click(function() {
			var link = $(this).attr('href');
			var posi = $(link).offset().top + 20;
			$('body,html').animate({
				scrollTop : posi
			}, 700);
		})

		$(document).ready(function() {
			$("[rel='tooltip']").tooltip();

			$('.thumbnail').hover(function() {
				$(this).find('.caption').fadeIn(250);
			}, function() {
				$(this).find('.caption').fadeOut(205);
			});
		});
	</script>
</body>
</html>