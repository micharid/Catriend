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
						<h3 style=" font-size: 20px; line-height: 1.428571429; color: #fff; padding:10px; margin-bottom:50px;">질문 보기</h3>
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
						<table class="table table-bordered">
							<tr>
								<td colspan="2" class="text-center">${dto.q_title}</td>
							</tr>
							<tr>
								<td class="text-center">작성일 : ${dto.q_date}</td>
							</tr>
							<tr>
								<td colspan="2" style="height:300px; text-align:center;">${dto.q_content}</td>
							</tr>
						</table>
						<div>
							<table class="table table-bordered">
							<tr>
								<td width="10%">답변내용 : </td>
								<td class="text-center" width="90%">${dto.q_answer}</td>
							</tr>
						</table>
						</div>
						<div class="pull-right">
							<button class="btn" style="background-color:#00b3fe; color:white;" onclick="location.href='contact'">질문하러가기</button>
						</div>
						<div class="col-md-12 text-center">
							<button class="btn" style="background-color:#00b3fe; color:white;" onclick="location.href='myqnahistory'">내가 질문한 내역으로</button>
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
