<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <title>질문내역</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
    <link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
  </head>
<style>
#blue{
    background: #428BCA;
    margin-bottom:20px;
   
}
h3{
   
    
}

h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-weight: 500;
    line-height: 1.1;
    color: inherit;
}
</style>

</head>

<body>

	<!-- Fixed navbar -->
	<!-- top s -->
	<!-- Fixed navbar -->
<!-- bottom s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
<!-- bottom e -->


	
<!-- bottom s -->
	<%@ include file="../../resources/common/sectionAd.jsp"%>
<!-- bottom e -->
  
	<div class="container">
		<div class="row">
		<div id="blue" style="margin-top:60px;">
		
					<center>
						<h3 style=" font-size: 20px; line-height: 1.428571429; color: #fff; padding:10px; margin-bottom:50px;">내가 질문한 목록</h3>
					</center>
		
			<!-- /container -->
		</div>
		
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="panel panel-default">
					<div class="panel-heading" style="font-size:1.5em; font-weight:700;">
						<center>
							1:1 Q&A
						</center>
					</div>
					<div class="panel-body">
						<table class="table table-hover table-bordered">
							<tr style="text-align:center;">
								<th style="width:5%;" class="text-center">NO</th>
								<th style="width:70%;">글제목</th>
								<th style="width:10%;" class="text-center">답변여부</th>
								<th style="width:15%;" class="text-center">작성일</th>
							</tr>
							<!--  게시판 반복 부분 s -->
							<c:forEach items="${myqnalist}" var="row">
								<tr>
									<td class="text-center">${totalRecordCount - row.rNum +1}</td>
									<td>${row.q_title}</a></td>
									<td class="text-center">${row.u_id}</td>
									<td class="text-center">${row.q_date}</td>
								</tr>
							</c:forEach>
							<!-- 게시판 반복 부분 e  -->
						</table>
						<div class="pull-right" style="margin-top:-15px;">
							<button class="btn" type="submit" style="background-color:#00b3fe; color:white;" onclick="location.href='contact'">질문하러가기</button>
						</div>
						<div class="col-md-12 text-center" style="margin-top:-15px;">
							<nav>
								<ul class="pagination">
									<li><a href="#" aria-label="Previous"> <span
											aria-hidden="true">&laquo;</span>
									</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#" aria-label="Next"> <span
											aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
						</div>
						<div class="col-md-12 text-center" style="margin-top:-15px;">
							<button class="btn" type="submit" style="background-color:#00b3fe; color:white;" onclick="location.href='myPageindex'">마이페이지로</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	
	<br /><br />
	<!-- *****************************************************************************************************************
	 FOOTER
	 ***************************************************************************************************************** -->

<!-- bottom s -->
	<%@ include file="../../resources/common/layOutBottom.jsp"%>
<!-- bottom e -->
<!-- bottom s -->
	<%@ include file="../../resources/common/menuScript.jsp"%>
<!-- bottom e -->




</body>
</html>
