<%@page import="catriend.model.FreeBoarderDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>KapukAlas - Multipurpose template</title>
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
   function checkWriteFrm(){
      var f = document.writeFrm;
      if(f.title.value==""){
         alert("제목을 입력하세요");
         f.title.focus();
         return false;
      }
      if(f.content.value==""){
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

	<!-- *****************************************************************************************************************
    CONTACT WRAP
    ***************************************************************************************************************** -->
	<div class="row">
		<div class="container">
			<div class="row">

				<div class="col-lg-12">가로이미지 들어갈 부분</div>
				<div class="col-lg-4">


					<h2>새로운 글</h2>
					<ul class="list-group">

						<li class="list-group-item">공지사항<span class="badge">99</span></li>
						<li class="list-group-item active">자유게시판<span class="badge">5</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
					</ul>
				</div>
				<!-- 인기글 -->
				<div class="col-lg-4">
					<h2>인기 글</h2>
					<ul class="list-group">

						<li class="list-group-item">공지사항<span class="badge">99</span></li>
						<li class="list-group-item active">자유게시판<span class="badge">5</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
					</ul>
				</div>
				<!--  -->
				<div class="col-lg-4">
					<h2>인기 글</h2>
					<ul class="list-group">

						<li class="list-group-item">공지사항<span class="badge">99</span></li>
						<li class="list-group-item active">자유게시판<span class="badge">5</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
						<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
					</ul>
				</div>

				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">게시판</div>
						<div class="panel-body">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#free" data-toggle="tab">자유
										게시판</a></li>


							</ul>

							<div class="tab-content">
								<div class="tab-pane fade active in" id="free">
									<div class="panel panel-default">

										<div class="panel-body">
											<div class="table-responsive">
												<div class="col-md-12">
													<div class="panel panel-info">

														<div class="panel-body">
															<form name="writeFrm" method="post"
																onsubmit="return checkWriteFrm()"
																action="boardUpdateAction"
																enctype="multipart/form-data">
																<input type="hidden"
																	value="<%=request.getParameter("fb_index")%>"
																	name="fb_index">
																<input type="hidden"
																	value="<%=request.getParameter("nowPage")%>"
																	name="nowPage">
																<div class="form-group">
																	<label>제목</label> <input class="form-control"
																		type="text" name="fb_title" value="${dto.fb_title}" />
																</div>

																<div class="form-group">
																	첨부파일 <br />
																	<%
																		FreeBoarderDTO dto = (FreeBoarderDTO)request.getAttribute("dto");
					                                                	String img = dto.getFb_file();
					                                                	if(img != null){
					                                                %>
																	기존이미지 <br /> <img
																		src="./resources/assets/img/boardImages/${dto.fb_file}"
																		width="50%"> <br />
																	<%
																		}
					                                                %>
																	<input type="file" style="width: 90%;" name="cb_file"
																		alt="${dto.fb_file}" />

																</div>

																<div class="form-group">
																	<label>내용</label>
																	<textarea class="form-control" rows="3"
																		name="fb_content">${dto.fb_content}</textarea>
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
		</div>
	</div>

	</div>
	<div class="col-lg-12">가로이미지 들어갈 부분</div>
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