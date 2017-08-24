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
			$("input[type='checkbox']:checked").each(function(){
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

#testtable {
	border: 1px solid #000000;
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
					<table class="table table-bordered">
						<tr>
							<td style="text-align: center">
								<table width="100%">
								<colgroup>
									<col width="10%"/>
									<col width="*"/>
								</colgroup>
									<tr>
										<td>사이즈 : </td>
										<td><label for="cb_1">소</label><input
											type="checkbox" name="size" id="cb_1" value="소">
											<label for="cb_2">중</label><input
											type="checkbox" name="size" id="cb_2" value="중">
											<label for="cb_3">대</label><input
											type="checkbox" name="size" id="cb_3" value="대">
										</td>
									</tr>
									<tr>
										<td colspan="2"><hr /></td>
									</tr>
									
									<tr>
										<td>털색 : </td>
										<td><label for="cb_4">갈색</label><input
											type="checkbox" name="color" id="cb_4" value="갈색">
											<label for="cb_5">검정색</label><input
											type="checkbox" name="color" id="cb_5" value="검정색">
											<label for="cb_6">흰색</label><input
											type="checkbox" name="color" id="cb_6" value="흰색">
										</td>
									</tr>
									<tr height="5px">
										<td colspan="2"><hr /></td>
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
</body>
</html>