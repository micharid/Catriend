<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String c_index = request.getAttribute("c_index").toString();
%>
<!DOCTYPE html>
<html>
<head>
<title>KapukAlas - Multipurpose template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
</head>

<script type="text/javascript">
	function checkWriteFrm(){
		var f = document.writeFrm
		
		if(f.cb_title.value == ""){
			alert("제목을 입력해 주세요");
			f.cb_title.focus();
			return false;
		}
		
		if(f.cb_file.value == ""){
			alert("이미지를 선택해 주세요");
			f.cb_file.focus();
			return false;
		}
		
		if(f.cb_content.value == ""){
			alert("내용을 입력해 주세요");
			f.cb_content.focus();
			return false;
		}
		
		return true;
	}
</script>

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
	 CONTACT WRAP
	 ***************************************************************************************************************** -->
	<div class="row">
		<div class="container">
			<div class="row">

				<div class="col-lg-12">가로이미지 들어갈 부분</div>
					<div class="tab-content">
						<div class="tab-pane fade active in" id="cat">
							<div class="panel panel-default">

								<div class="panel-body">
									<div class="table-responsive">
										<div class="col-md-12">
											<div class="panel panel-info">

												<div class="panel-body">
													<form name="writeFrm" method="post"
														onsubmit="return checkWriteFrm()"
														action="catBoardWriteAction"
														enctype="multipart/form-data">
														<input type="hidden" value="<%=login.getU_id()%>"
															name="u_id">
														<input type="hidden" value="<%=c_index%>"
														name="c_index">

														<div class="form-group">
															<label>제목</label> <input class="form-control" type="text"
																name="cb_title" value="${dto.cb_title}" />
														</div>

														<div class="form-group">
															<label>첨부파일</label> <input type="file"
																style="width: 90%;" name="cb_file"
																value="${dto.cb_file}" />
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

	</div>
	<div class="col-lg-12">가로이미지 들어갈 부분</div>
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