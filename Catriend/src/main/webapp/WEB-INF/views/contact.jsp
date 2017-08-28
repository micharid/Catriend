<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="./resources/assets/ico/favicon.ico">

<title>SOLID - Bootstrap 3 Theme</title>

<style>
	textarea {
	resize: none;
}
</style>

<script>
focusMethod = function getFocus() {           
	  document.getElementById("inputname").focus();
}

function qnacheck()
{
	var f = document.qnaFrm;
	if(f.inputname.value=="")
	{
		alert("이름를 입력하세요.");
		f.inputname.focus();
		return false;
	}
	if(!f.inputsubject.value)
	{
		alert("제목을 입력하세요.");
		f.inputsubject.focus();
		return false;
	}
	if(!f.content.value)
	{
		alert("내용(질문)을 입력하세요.");
		f.content.focus();
		return false;
	}
	return true;
}
</script>

<!-- Bootstrap core CSS -->
<link href="./resources/assets/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./resources/assets/css/style.css" rel="stylesheet">
<link href="./resources/assets/css/font-awesome.min.css" rel="stylesheet">
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
					<h3>Contact</h3>
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

	<div id="contactwrap"></div>

	<!-- *****************************************************************************************************************
	 CONTACT FORMS
	 ***************************************************************************************************************** -->

	<div class="container mtb">
		<div class="row">
			<div class="col-md-12">
				<h2>자주묻는질문(F.A.Q.)</h2>
				<p>자주 묻는 질문을 모아놓았습니다.</p>
				<hr class="margin-vert-40">
				<div class="row">
					<div class="col-md-8">
						<div class="tab-content">
							<div class="tab-pane active in fade" id="faq">
								<div class="panel-group" id="accordion">
									<!-- FAQ Item -->
									<div class="panel panel-default panel-faq">
										<div class="panel-heading">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#faq-sub">
												<h4 class="panel-title">
													자주묻는질문1 <span class="pull-right">
														<i class="glyphicon glyphicon-plus"></i>
													</span>
												</h4>
											</a>
										</div>
										<div id="faq-sub" class="panel-collapse collapse">
											<div class="panel-body">자주 묻는 질문의 대한 답변1입니다.</div>
										</div>
									</div>
									<!-- End FAQ Item -->
									<!-- Faq Item -->
									<div class="panel panel-default panel-faq">
										<div class="panel-heading">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#faq-sub-2">
												<h4 class="panel-title">
													자주묻는질문2 <span class="pull-right">
														<i class="glyphicon glyphicon-plus"></i>
													</span>
												</h4>
											</a>
										</div>
										<div id="faq-sub-2" class="panel-collapse collapse">
											<div class="panel-body">자주 묻는 질문의 대한 답변2입니다.</div>
										</div>
									</div>
									<!-- End FAQ Item -->
									<!-- Faq Item -->
									<div class="panel panel-default panel-faq">
										<div class="panel-heading">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#faq-sub-3">
												<h4 class="panel-title">
													자주묻는질문3 <span
														class="pull-right"> <i
														class="glyphicon glyphicon-plus"></i>
													</span>
												</h4>
											</a>
										</div>
										<div id="faq-sub-3" class="panel-collapse collapse">
											<div class="panel-body">자주 묻는 질문의 대한 답변3입니다.</div>
										</div>
									</div>
									<!-- End FAQ Item -->
									<!-- Faq Item -->
									<div class="panel panel-default panel-faq">
										<div class="panel-heading">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#faq-sub-4">
												<h4 class="panel-title">
													자주묻는질문4 <span class="pull-right"> <i
														class="glyphicon glyphicon-plus"></i>
													</span>
												</h4>
											</a>
										</div>
										<div id="faq-sub-4" class="panel-collapse collapse">
											<div class="panel-body">자주 묻는 질문의 대한 답변4입니다.</div>
										</div>
									</div>
									<!-- End FAQ Item -->
									<!-- Faq Item -->
									<div class="panel panel-default panel-faq">
										<div class="panel-heading">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#faq-sub-5">
												<h4 class="panel-title">
													자주묻는질문5 <span
														class="pull-right"> <i
														class="glyphicon glyphicon-plus"></i>
													</span>
												</h4>
											</a>
										</div>
										<div id="faq-sub-5" class="panel-collapse collapse">
											<div class="panel-body">자주 묻는 질문의 대한 답변5입니다.</div>
										</div>
									</div>
									<!-- End FAQ Item -->
									<!-- Faq Item -->
									<div class="panel panel-default panel-faq">
										<div class="panel-heading">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#faq-sub-6">
												<h4 class="panel-title">
													자주묻는질문6 <span
														class="pull-right"> <i
														class="glyphicon glyphicon-plus"></i>
													</span>
												</h4>
											</a>
										</div>
										<div id="faq-sub-6" class="panel-collapse collapse">
											<div class="panel-body">자주 묻는 질문의 대한 답변6입니다.</div>
										</div>
									</div>
									<!-- End FAQ Item -->
									<!-- Faq Item -->
									<div class="panel panel-default panel-faq">
										<div class="panel-heading">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#faq-sub-7">
												<h4 class="panel-title">
													자주묻는질문7 <span class="pull-right"> <i
														class="glyphicon glyphicon-plus"></i>
													</span>
												</h4>
											</a>
										</div>
										<div id="faq-sub-7" class="panel-collapse collapse">
											<div class="panel-body">자주 묻는 질문의 대한 답변7입니다.</div>
										</div>
									</div>
									<!-- End FAQ Item -->
									<!-- Faq Item -->
									<div class="panel panel-default panel-faq">
										<div class="panel-heading">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#faq-sub-8">
												<h4 class="panel-title">
													자주묻는질문8 <span class="pull-right"> <i
														class="glyphicon glyphicon-plus"></i>
													</span>
												</h4>
											</a>
										</div>
										<div id="faq-sub-8" class="panel-collapse collapse">
											<div class="panel-body">자주 묻는 질문의 대한 답변8입니다.</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<h3 class="margin-bottom-10">찾으시는 답변이 없으시다구요?</h3>
						<p>찾으시는 답변이 없다면,
						<br />당황하지 마시고 아래 "질문하기" 버튼을 눌러주세요.</p>
						<button type="button" class="btn btn-primary btn-sm" onclick="focusMethod()">질문하기</button>
					</div>
				</div>
			</div>
			<div class="col-lg-8">

				<h4>관리자에게 1:1로 문의를!</h4>
				<div class="hline"></div>
				<p>
					이름과 제목, 내용(질문에 관한내용)을 입력하여 전송하면 관리자에게 문의가 전송됩니다.
					<br />
					해당문의에 대한 답변은 마이페이지에 내가 질문한 내역에서 확인하실 수 있습니다.
					<br />
					운영시간 중에만 답변이 완료되므로 실시간이 아닌점 양해 부탁드립니다.
				</p>
				<form role="form" name="qnaFrm" method="post" onsubmit="return qnacheck();">
					<div class="form-group">
						<label for="inputname">성명</label>
						<input type="text" class="form-control" id="inputname" name="inputname" />
					</div>
					<div class="form-group">
						<label for="inputsubject">제목</label>
						<input type="text" class="form-control" id="inputsubject" name="inputsubject" />
					</div>
					<div class="form-group">
						<label for="content">내용</label>
						<textarea class="form-control" id="content" rows="3" name="content"></textarea>
					</div>
					<button type="submit" class="btn btn-theme">문의하기</button>
					<!-- 관리자에게 문의글이 전송됨 -->
					<!-- 관리자가 답변하면 관리자 / 유저 마이페이지/관리페이지에 기록됨 -->
				</form>
			</div>
			<! --/col-lg-8 -->

			<div class="col-lg-4">
				<h4>캣렌드의 주소</h4>
				<div class="hline"></div>
				<p>
					서울특별시 강서구<br /> 화곡98동<br /> 123-5번지 캣렌드타워 501호<br />
				</p>
				<p>
					Email: catriend@catriend.com<br /> Tel: 02-1234-5678
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

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="./resources/assets/js/bootstrap.min.js"></script>
	<script src="./resources/assets/js/retina-1.1.0.js"></script>
	<script src="./resources/assets/js/jquery.hoverdir.js"></script>
	<script src="./resources/assets/js/jquery.hoverex.min.js"></script>
	<script src="./resources/assets/js/jquery.prettyPhoto.js"></script>
	<script src="./resources/assets/js/jquery.isotope.min.js"></script>
	<script src="./resources/assets/js/custom.js"></script>


</body>
</html>
