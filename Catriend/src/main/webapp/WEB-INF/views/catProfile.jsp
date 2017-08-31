<%@page import="catriend.model.CatsDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>고양이 프로필</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
</head>

<style>
textarea {
	display: block;
	width: 100%;
	height: 42px;
	padding: 4px 0 0 6px;
	border: 0;
	background: white;
	font-size: 15px;
	color: #24272B;
	vertical-align: top;
	-webkit-appearance: none;
}

.panel-heading{
	    padding: 1px;
}

#blue{
    background: #428BCA;
    margin-bottom:20px;
   
}

hr {
    height: 2px;
    color: #777777;
    background-color: #777777;
    border: none;
}
</style>

<body>

	<!-- Fixed navbar -->
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<!-- *****************************************************************************************************************
	 BLUE WRAP
	 ***************************************************************************************************************** -->



	<!-- *****************************************************************************************************************
	 BLOG CONTENT
	 ***************************************************************************************************************** -->

	<div class="container mtb">
		<div class="row">
	<div id="blue" style="margin-top:60px;">
		
					<center>
						<h3 style=" font-size: 20px; line-height: 1.428571429; color: #fff; padding:10px;">Cat Profile</h3>
					</center>
		
			<!-- /container -->
	</div>

			<!-- SINGLE POST -->
			<div class="col-lg-8" style="margin: 15px 0 0 0;">
				<!-- Blog Post 1 -->
				<div>
					<!-- top s -->
					<%@ include file="./standard.jsp"%>
					<!-- top e -->
				</div>
				<div class="panel panel-primary">
				<div class="panel-heading">
                            <center><h4 style="padding:0px;">한줄 댓글</h4></center>
                </div>
					<form action="">
						<table class="table" style="margin-top:20px;">
							<tr>
								<td width="80%"><textarea id="textAreaComment" cols="30"
										rows="5" title="" placeholder="댓글을 입력해 주세요"
										style="resize: none;"></textarea></td>
								<td width="20%"><button style="width: 100%;" type="button"
										class="btn btn-warning" onclick="">댓글달기</button></td>
							</tr>
						</table>
					</form>
					<div class="panel-footer">
						<table class="table table-condensed">
							<tr algin="center">
								<th width="20%">작성일자</th>
								<th width="50%">내용</th>
								<th width="20%">별점</th>
								<th width="10%">닉네임</th>
							</tr>
							<!-- 반복부분  s -->
							<tr>
								<td>2017-08-30</td>
								<td>너무너무 귀엽네요</td>
								<td>★★★★☆</td>
								<td>빵꾸똥꾸</td>
							</tr>
							<!-- 반복부분  e -->	
											
						</table>
					
						
					</div>
					
				</div>








			</div>
			<!--/col-lg-8 -->


			<! -- SIDEBAR -->
			<div class="col-lg-4">
				<h4>고양이친구 프로필</h4>
				<div class="hline"></div>
				<p>
				<h4>이름 : ${dto.c_name}</h4>
				<h4>
					종류 : <a
						href="https://namu.wiki/w/${dto.c_type}">${dto.c_type}</a>
				</h4>
				<h4> 생일 : ${dto.c_birthday}</h4>
				<h4>건강상태 : ${dto.c_health}</h4>

				</p>
				<button class="btn btn-warning" style="width: 100%;"
					onclick="location.href='catcontractagreement'">계약하기</button>

				<div class="spacing"></div>
				<hr />
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







				<hr style="color:blue"/>
				<h4>키워드 입력 부분</h4>
				<div class="hline"></div>
				<p>
				<div style="font-size:2.5em;">누르면 네이버에 검색<br /></div>
				<!-- 분류 반복 s -->
				<%
					CatsDTO dto = (CatsDTO)request.getAttribute("dto");
					String keyword = dto.getC_keyword();
					String[] keywordArr = keyword.split(",");
					
					for(String strArr : keywordArr){
				%>
					<a class="btn btn-success" style="margin-top:10px"href="https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=<%=strArr%>&oquery=rjator&tqi=TjQ5pwpVuE4ssso0ieNssssss14-306639" role="button"><%=strArr%></a>
				<%
					}
				%>
				<!-- 분류 반복 e -->
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
<!-- bottom s -->
	<%@ include file="../../resources/common/menuScript.jsp"%>
<!-- bottom e -->

</body>
</html>