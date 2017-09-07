<%@page import="catriend.model.CatBoarderDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	CatBoarderDTO dto = (CatBoarderDTO) request.getAttribute("dto");
%>
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
#blue {
	background: #428BCA;
	margin-bottom: 20px;
}

h3 {
	
}

h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-weight: 500;
	line-height: 1.1;
	color: inherit;
}
</style>

<style>
.up {
	width: 78px;
	height: 78px;
	background: url('./resources/assets/img/up.PNG') 0 -244px no-repeat;
}

.up {
	position: relative;
	clear: both;
	width: 619px;
	padding: 40px 0 60px 0;
	margin: 0 auto;
	text-align: center;
}

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
	resize: none;
}
</style>

<script>
	var checkInsertFrm = function(obj) {
		if (obj.cbc_content.value == "") {
			alert("댓글내용을 입력하세요");
			obj.cbc_content.focus();
			return false;
		}
	}
</script>

<body>

	<!-- Fixed navbar -->
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->
	<div class="row">
		<div class="container">
			<div class="col-lg-12">
				<div class="panel panel-primary">
					<div class="panel-heading" align="center">
						<h1>${dto.cb_title}</h1>
					</div>
					<table class="table table-bordered" width="100%" cellspacing="0"
						cellpadding="2">
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
							<td width="30%">
								<%
									String likeUsers = dto.getCb_like();
									String[] userlist = likeUsers.split("@u_");
								%> <%=userlist.length - 1%>
							</td>
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
							<td colspan="3" style="height: 150px; padding: 10px;">${dto.cb_content}</td>
						</tr>
						<%
							boolean result = false;
							if (login != null) {
								for (String user : userlist) {
									if (login.getU_id().equals(user))
										result = true;
								}
							}
							if (login != null && !result) {
						%>
						<tr align="center">
							<td colspan="4">
								<button class="btn btn-info" type="button"
									onclick="location.href='catBoardlikeUpAction?cb_index=${dto.cb_index}&u_id=<%=login.getU_id()%>&nowPage=${nowPage}'">
									좋아요 <span class="glyphicon glyphicon-thumbs-up"></span>
								</button>
							</td>
						</tr>
						<%
							}
							if (login != null && result) {
						%>
						<tr align="center">
							<td colspan="4">
								<button class="btn btn-danger" type="button"
									onclick="location.href='catBoardlikeRemoveAction?cb_index=${dto.cb_index}&u_id=<%=login.getU_id()%>&cb_like=${dto.cb_like}&nowPage=${nowPage}'">
									좋아요 취소<span class="glyphicon glyphicon-remove-sign"></span>
								</button>
							</td>
						</tr>
						<%
							}
						%>
						<tr>
							<td colspan="4" style="text-align: center; padding: 10px 0;">
								<%
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
						<c:if test="${not empty loginUser}">
							<form name="insertCommentFrm"
								action="catBoarderCommentWriteAction"
								onsubmit="return checkInsertFrm(this);" method="post">
								<input type="hidden" name="nowPage" value="${nowPage}" /> <input
									type="hidden" name="cb_index" value="${cb_index}" /> <input
									type="hidden" name="u_id" value="${loginUser.u_id}" />
								<table width="100%">
									<tr>
										<td width="90%"><textarea id="textAreaComment" cols="30"
												rows="5" name="cbc_content"></textarea></td>
										<td width="10%">&nbsp;&nbsp;&nbsp;&nbsp;
											<button type="submit" class="btn btn-info">댓글등록</button>
										</td>
									</tr>
								</table>
							</form>
						</c:if>
						<span style="font-size: 1.4em;">Comment</span>
						<c:if test="${empty CatBoarderCommentLists}">
							<center>
								<span>댓글이 없습니다.</span>
							</center>
						</c:if>
						<c:if test="${not empty CatBoarderCommentLists}">
							<table class="table">
								<tr>
									<th width="60%">내용</th>
									<th width="10%">닉네임</th>
									<th width="10%">작성일</th>
									<c:if test="${not empty loginUser}">
										<th width="25%"></th>
									</c:if>
								</tr>
								<!-- 댓글 반복 부분  s-->
								<c:forEach items="${CatBoarderCommentLists}" var="row">
									<tr>
										<td><c:if test="${row.cbc_depth gt 0}">
												<c:forEach begin="0" end="${row.cbc_depth-1}" var="i"
													step="1">
													&nbsp;&nbsp;&nbsp;&nbsp;<span
														class='glyphicon glyphicon-chevron-right'></span>&nbsp;&nbsp;&nbsp;&nbsp;
												</c:forEach>
											</c:if> ${row.cbc_content}</td>
										<td>${row.u_id}</td>
										<td>${row.cbc_date}</td>
										<c:if test="${not empty loginUser}">
											<td align="center"><c:if
													test="${loginUser.u_id == row.u_id || loginUser.u_grade > 100}">
													<button type="button" class="btn btn-info"
														onclick="location.href='catBoarderCommentUpdate?cbc_index=${row.cbc_index}&cb_index=${row.cb_index}&nowPage=${nowPage}';">수정</button>
													<button type="button" class="btn btn-info"
														onclick="location.href='catBoarderCommentDelete?cbc_index=${row.cbc_index}&cb_index=${row.cb_index}&nowPage=${nowPage}';">삭제</button>
												</c:if>
												<button type="button" class="btn btn-info"
													onclick="location.href='catBoarderCommentReply?cbc_index=${row.cbc_index}&cb_index=${row.cb_index}&nowPage=${nowPage}';">답글</button></td>
										</c:if>
									</tr>
								</c:forEach>
								<!-- 댓글 반복 부분  e-->
							</table>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>

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