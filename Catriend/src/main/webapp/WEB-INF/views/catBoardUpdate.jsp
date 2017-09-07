<%@page import="catriend.model.CatBoarderDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script>
	function checkWriteFrm() {
		var f = document.writeFrm;
		if (f.title.value == "") {
			alert("제목을 입력하세요");
			f.title.focus();
			return false;
		}
		if (f.content.value == "") {
			alert("내용을 입력하세요");
			f.content.focus();
			return false;
		}

	}
</script>

<body>

	<!-- Fixed navbar -->
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->
	<div id="blue">
		<div class="container">
			<div class="row">
				<center>
					<h3>게시판</h3>
				</center>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="container">
			<div class="row">
				<div class="tab-content">
					<div class="tab-pane fade active in" id="free">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 style="text-align: center; color: white;">후기 게시판 수정</h3>
							</div>
							<div class="panel-body">
								<div class="table-responsive">
									<div class="col-md-12">
										<div class="panel panel-info">

											<div class="panel-body">
												<form name="writeFrm" method="post"
													onsubmit="return checkWriteFrm()"
													action="catBoardUpdateAction" enctype="multipart/form-data">
													<input type="hidden" value="${dto.cb_index}"
														name="cb_index"> <input type="hidden"
														value="${dto.cb_file}" name="fileName"> <input
														type="hidden" value="${nowPage}" name="nowPage">

													<div class="form-group">
														<label>제목</label> <input class="form-control" type="text"
															name="cb_title" value="${dto.cb_title}" />
													</div>

													<div class="form-group">
														첨부파일 <br />
														<%
															CatBoarderDTO dto = (CatBoarderDTO) request.getAttribute("dto");
															String img = dto.getCb_file();
															if (img != null) {
														%>
														기존이미지 <br /> <img
															src="./resources/assets/img/boardImages/${dto.cb_file}"
															width="50%"> <br />
														<%
															}
														%>
														<input type="file" style="width: 90%;" name="cb_file"
															alt="${dto.cb_file}" />

													</div>

													<div class="form-group">
														<label>내용</label>
														<textarea class="form-control" rows="3" name="cb_content">${dto.cb_content}</textarea>
													</div>


													<button type="submit" class="btn btn-info">등록하기</button>
													<button class="btn btn-danger" type="button"
														onclick="javascript:history.go(-1)">취소하기</button>

												</form>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
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