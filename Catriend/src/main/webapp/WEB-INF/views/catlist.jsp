<%@page import="catriend.model.CatsDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<CatsDTO> listRows = (List<CatsDTO>) request.getAttribute("listRows");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="./resources/bootstrap3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="./resources/bootstrap3.3.7/js/bootstrap.min.js"></script>
<script src="./resources/jquery/jquery-3.2.1.js"></script>

<title>고양이목록</title>
<link rel="stylesheet" href="./resources/common/divstyle.css">
<link rel="stylesheet" href="./resources/common/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("input").checkboxradio({
			icon : false
		});
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
<style>
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);

body {
	background-color: #ff8877;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 300;
}

.thumbnail {
	background-color: #eaeaea;
}

.thumbnail .caption {
	padding: 0px;
	color: #333;
}

#image {
	width: 300px;
	height: 300px;
}

tr {
	text-align: left;
	border-bottom: 2px solid white;
	padding: 20px;
}

tr:last-child {
	border-bottom: 0;
}
</style>
</head>
<body>
	<div class="">
		<div class="row">
			<div class="container-fluid">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<center>
						<h2 style="color: white;">고양이 분류</h2>
					</center>
					<table class="table table-condensed"
						style="border: 2px solid white;">
						<tr>
							<td style="text-align: center">
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
											id="cb_2" value="중형"><label for="cb_3">대형</label><input
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
		<div class="container-fluid" id="Display">
			<div class="row">
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
			</div>
		</div>
	</div>
	<footer>
	<div class="wrapper">
		<div class="row">
			<div class="col-sm-1">
				<a href="door">HOME</a>
			</div>
			<div class="col-sm-1">
				<a href="regist">REGIST</a>
			</div>
			<div class="col-sm-1">
				<a href="login">LOGIN</a>
			</div>
			<div class="col-sm-7 hidden-xs"></div>
			<div class="col-sm-2">&#169; 2017, CAT,Inc.</div>
		</div>
	</div>
	</footer>
</body>
</html>