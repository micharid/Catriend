<%@page import="catriend.model.FreeBoarderDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
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
}
</style>
<script>
	function checkInsertFrm() {
		var fi = document.insertCommentFrm;
		if (f.fbc_comment.value == "") {
			alert("내용을 입력하세요");
			f.fbc_comment.focus();
			return false;
		}
		return true;
	}
	var checkUpdateFrm = function(obj)
	{
		if(obj.fbc_content.value=="")
		{
			alert("댓글내용을 입력하세요");
			obj.fbc_content.focus();
			return false;
		}
	}
</script>
</head>

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
					<h3>글쓰기</h3>
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
							<h1>${dto.fb_title}</h1>
						</center>
					</div>
					<table class="table" width="100%" cellspacing="0" cellpadding="2">
						<tr>
							<td width="20%">닉네임</td>
							<td width="20%">${dto.u_id}</td>

							<td width="20%">작성일</td>
							<td width="40%">${dto.fb_date}</td>
						</tr>
						<tr>
							<td width="20%">조회수</td>
							<td width="30%">${dto.fb_hits}</td>

							<td width="20%">추천수</td>
							<td width="30%">${dto.fb_likecount}</td>
						</tr>
						<tr>
							<td width="20%">제목</td>
							<td width="80%" colspan="3">${dto.fb_title}</td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan="3" style="height: 150px; padding: 10px;">${dto.fb_content}</td>
						</tr>
						<tr>
							<td width="20%">첨부파일</td>
							<td width="80%" colspan="3">
								<%
									FreeBoarderDTO dto = (FreeBoarderDTO) request.getAttribute("dto");
									String fb_file = dto.getFb_file();
									if (fb_file != null) {
								%> <img src="./resources/assets/img/boardImages/${dto.fb_file}"
								width="100%"> <%
 	} else {
 %> 첨부파일 없음! <%
 	}
 %>
							</td>
						</tr>
						<tr>
							<td colspan="4" style="text-align: center; padding: 10px 0;">
								<%
									dto = (FreeBoarderDTO) request.getAttribute("dto");
									String u_id = dto.getU_id();
									if (login != null && login.getU_id().equals(u_id)) {
								%>
								<button class="btn btn-info" type="button"
									onclick="javascript:location.href='freeBoardUpdate?fbc_index=${row.fbc_index}&fb_index=${row.fb_index}&nowPage=${nowPage}';">수정하기</button>&nbsp;&nbsp;
								<button class="btn btn-info" type="button"
									onclick="location.href='freeBoardDelete?fbc_index=${row.fbc_index}&fb_index=${row.fb_index}&nowPage=${nowPage}';">삭제하기</button>&nbsp;&nbsp;
								<%
									}
								%>
								<button class="btn btn-info" type="button"
									onclick="location.href='freeBoardList?fbc_index=${row.fbc_index}&fb_index=${row.fb_index}&nowPage=${nowPage}';">리스트보기</button>
							</td>
						</tr>
					</table>

					<div class="panel-footer">
						<form name="insertCommentFrm"
							action="freeBoarderCommentWriteAction"
							onsubmit="return checkInsertFrm(this);">
							<input type="hidden" name="nowPage" value="${nowPage}" /> <input
								type="hidden" name="fb_index" value="${fb_index}" /> <input
								type="hidden" name="u_id" value="${loginUser.u_id}" />
							<p>
								<textarea id="textAreaComment" cols="30" rows="5"
									name="fbc_content" placeholder="댓글을 입력해 주세요"></textarea>
							</p>
							<table width="100%">
								<tr>
									<td align="right">
										<button type="submit" class="btn btn-info">댓글등록</button>
									</td>
								</tr>
							</table>
						</form>
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
							<c:forEach items="${FreeBoarderCommentLists}" var="row">
								<tr>
									<c:choose>
										<c:when test="${fbc_index == row.fbc_index}">
											<form action="freeBoarderCommentUpdateAction"
												name="updateCommentFrm" onsubmit="return checkUpdateFrm(this);"
												method="post">
												<tr>
													<td colspan="3"><input type="hidden" name="nowPage"
														value="${nowPage}" /> <input type="hidden"
														name="fbc_index" value="${fbc_index}" /> <input
														type="hidden" name="fb_index" value="${fb_index}" /> <input
														type="hidden" name="u_id" value="${loginUser.u_id}" /> <input
														type="hidden" name="fbc_index" value="${row.fbc_index}" />
														<textarea id="textAreaComment" cols="30" rows="5"
															name="fbc_content">${row.fbc_content}</textarea></td>
													<td align="center"><button type="submit"
															class="btn btn-info">수정</button></td>
												</tr>
											</form>
										</c:when>
										<c:otherwise>
											<td><c:if test="${row.fbc_depth gt 0}">
													<c:forEach begin="0" end="${row.fbc_depth-1}" var="i"
														step="1">
													&nbsp;&nbsp;&nbsp;&nbsp;<span
															class='glyphicon glyphicon-chevron-right'></span>&nbsp;&nbsp;&nbsp;&nbsp;
												</c:forEach>
												</c:if>${row.fbc_content}</td>
											<td>${row.u_id}</td>
											<td>${row.fbc_date}</td>
											<c:if test="${not empty loginUser}">
												<td align="center"><c:if
														test="${loginUser.u_id eq row.u_id}">
														<button type="button" class="btn btn-info"
															onclick="location.href='freeBoarderCommentUpdate?fbc_index=${row.fbc_index}&fb_index=${dto.fb_index}&nowPage=${nowPage}';">수정</button>
														<button type="button" class="btn btn-info"
															onclick="location.href='freeBoarderCommentDelete?fbc_index=${row.fbc_index}&fb_index=${dto.fb_index}&nowPage=${nowPage}';">삭제</button>
													</c:if>
													<button type="button" class="btn btn-info"
														onclick="location.href='freeBoarderCommentReply?fbc_index=${row.fbc_index}&fb_index=${row.fb_index}&nowPage=${nowPage}';">답글</button></td>
											</c:if>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
							<!-- 댓글 반복 부분  e-->
						</table>
					</div>
				</div>
			</div>
			<script>
				document.updateCommentFrm.fbc_content.focus();
			</script>
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