<%@page import="catriend.model.CatBoarderDTO"%>
<%@page import="catriend.model.FreeBoarderDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>후기게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
</head>
<style>
.panel-default>.panel-heading {
	color: #428BCA;
	background-color: #428BCA;
	border-color: #dddddd;
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
	<div id="blue">
		<div class="container">
			<div class="row">
				<center>
					<h3>후기 글쓰기</h3>
				</center>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /blue -->

	<!-- *****************************************************************************************************************
	 CONTACT WRAP
	 ***************************************************************************************************************** -->
	<div class="row">
		<div class="container">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<center>
								<h1>${dto.cb_title}</h1>
							</center>
						</div>
						<table class="table" width="100%" cellspacing="0" cellpadding="2">
							<tr>
								<td width="20%">닉네임</td>
								<td width="20%">${dto.u_id}</td>

								<td width="20%">작성일</td>
								<td width="40%">${dto.cb_date}</td>
							</tr>
							<tr>
								<td width="20%">조회수</td>
								<td width="30%">${dto.cb_hits}</td>

								<td width="20%">추천수</td>
								<td width="30%">${dto.cb_likecount}</td>
							</tr>
							<tr>
								<td width="20%">제목</td>
								<td width="80%" colspan="3">${dto.cb_title}</td>
							</tr>
							<tr>
								<td>사진</td>
								<td colspan="3" style="height: 300px; padding: 10px;"><img
									src="./resources/assets/img/boardImages/${dto.cb_file}"
									width="80%"><br /> <br /> <br /></td>
							</tr>
							<tr>
								<td>내용</td>
								<td colspan="3" style="height: 150px; padding: 10px;"
									class="text-center">${dto.cb_content}</td>
							</tr>

							<tr>
								<td colspan="4" style="text-align: center; padding: 10px 0;">
									<%
										CatBoarderDTO dto = (CatBoarderDTO) request.getAttribute("dto");
										String u_id = dto.getU_id();
										if (login != null && login.getU_id().equals(u_id)) {
									%>
									<button class="btn btn-info" type="button"
										onclick="javascript:location.href='catBoardUpdate?cb_index=${dto.cb_index}&nowPage=${nowPage}';">수정하기</button>&nbsp;&nbsp;
									<button class="btn btn-info" type="button"
										onclick="location.href='catBoardDelete?cb_index=${dto.cb_index}&nowPage=${nowPage}';">삭제하기</button>&nbsp;&nbsp;
									<%
										}
									%>
									<button class="btn btn-info" type="button"
										onclick="location.href='catBoardList?nowPage=${nowPage}';">리스트보기</button>
								</td>
							</tr>
						</table>

						<div class="panel-footer">
							<form name="cmt" action="#">
								<p>
									<textarea id="textAreaComment" cols="100%" rows="5" title=""
										placeholder="댓글을 입력해 주세요"></textarea>
								</p>
								<table width="100%">
									<tr>
										<td align="right">
											<button type="button" class="btn btn-info" onclick="">
												댓글등록</button>
										</td>
									</tr>
								</table>
								<table class="table">
									<tr>
										<th width="15%">닉네임</th>
										<th width="60%">내용</th>
										<th width="15%">작성일</th>
										<th width="15%"></th>
									</tr>
									<!-- 댓글 반복 부분  s-->
									<c:forEach items="${CatBoarderCommentLists}" var="row">
										<tr>
											<td>${row.u_id}</td>
											<td>${row.cbc_content}</td>
											<td>${row.cbc_date}</td>
											<td><button type="button" class="btn btn-info"
													onclick="">답글달기</button></td>
										</tr>
									</c:forEach>
									<!-- 댓글 반복 부분  e-->
								</table>
							</form>
						</div>
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

	<script src="./resources/KapukAlas/js/jquery.js"></script>
	<script src="./resources/KapukAlas/js/bootstrap.min.js"></script>
	<!-- bottom s -->
	<%@ include file="../../resources/common/menuScript.jsp"%>
	<!-- bottom e -->
</body>
</html>