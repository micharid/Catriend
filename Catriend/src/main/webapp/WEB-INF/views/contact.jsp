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
#blue {
	background: #428BCA;
	margin-bottom: 20px;
}

h2, h3, h4, h5, h6 {
	font-family: 'Raleway', sans-serif;
	font-weight: 900;
}

.col-lg-6 {
	margin-top: 30px;
}

.ctitle {
	color: #00b3fe;
	font-weight: 700;
	margin-bottom: 15px;
}
</style>

<script>
focusMethod = function getFocus() {           
     document.getElementById("inputname").focus();
}

function qnacheck()
{
   var f = document.qnaFrm;

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

<body>
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<section id="about">
		<div class="container mtb">
			<div class="row">
				<div class="col-md-3">
					<span class="glyphicon glyphicon-send"></span> <br>
					<h3>Awesome Feature</h3>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur
					a tincidunt elit. Aliquam porta nibh at enim luctus, auctor
					consequat dolor vehicula.
				</div>
				<div class="col-md-3">
					<span class="glyphicon glyphicon-heart"></span> <br>
					<h3>Build with love</h3>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur
					a tincidunt elit. Aliquam porta nibh at enim luctus, auctor
					consequat dolor vehicula.
				</div>
				<div class="col-md-3">
					<span class="glyphicon glyphicon-phone"></span> <br>
					<h3>Responsive Layout</h3>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur
					a tincidunt elit. Aliquam porta nibh at enim luctus, auctor
					consequat dolor vehicula.
				</div>
				<div class="col-md-3">
					<span class="glyphicon glyphicon-tint"></span> <br>
					<h3>Customizeable</h3>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur
					a tincidunt elit. Aliquam porta nibh at enim luctus, auctor
					consequat dolor vehicula.
				</div>
			</div>




			<center>
				<h3 class="mb" id="blue" style="color: #fff; padding: 10px;">자주묻는질문(F.A.Q.)</h3>
			</center>


			<div class="container mtb">
				<div class="row">
					<div class="col-md-12">
											
						<div class="row">
							<div class="col-md-8">
								<div class="panel-group" id="accordion">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapse1">Collapsible Group 1</a>
											</h4>
										</div>
										<div id="collapse1" class="panel-collapse collapse in">
											<div class="panel-body">Lorem ipsum dolor sit amet,
												consectetur adipisicing elit, sed do eiusmod tempor
												incididunt ut labore et dolore magna aliqua. Ut enim ad
												minim veniam, quis nostrud exercitation ullamco laboris nisi
												ut aliquip ex ea commodo consequat.</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapse2">Collapsible Group 2</a>
											</h4>
										</div>
										<div id="collapse2" class="panel-collapse collapse">
											<div class="panel-body">Lorem ipsum dolor sit amet,
												consectetur adipisicing elit, sed do eiusmod tempor
												incididunt ut labore et dolore magna aliqua. Ut enim ad
												minim veniam, quis nostrud exercitation ullamco laboris nisi
												ut aliquip ex ea commodo consequat.</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapse3">Collapsible Group 3</a>
											</h4>
										</div>
										<div id="collapse3" class="panel-collapse collapse">
											<div class="panel-body">Lorem ipsum dolor sit amet,
												consectetur adipisicing elit, sed do eiusmod tempor
												incididunt ut labore et dolore magna aliqua. Ut enim ad
												minim veniam, quis nostrud exercitation ullamco laboris nisi
												ut aliquip ex ea commodo consequat.</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapse4">Collapsible Group 4</a>
											</h4>
										</div>
										<div id="collapse4" class="panel-collapse collapse">
											<div class="panel-body">Lorem ipsum dolor sit amet,
												consectetur adipisicing elit, sed do eiusmod tempor
												incididunt ut labore et dolore magna aliqua. Ut enim ad
												minim veniam, quis nostrud exercitation ullamco laboris nisi
												ut aliquip ex ea commodo consequat.</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapse5">Collapsible Group 5</a>
											</h4>
										</div>
										<div id="collapse5" class="panel-collapse collapse">
											<div class="panel-body">Lorem ipsum dolor sit amet,
												consectetur adipisicing elit, sed do eiusmod tempor
												incididunt ut labore et dolore magna aliqua. Ut enim ad
												minim veniam, quis nostrud exercitation ullamco laboris nisi
												ut aliquip ex ea commodo consequat.</div>
										</div>
									</div>
								</div>

							</div>
							<div class="col-md-4">
								<h3 class="margin-bottom-10">찾으시는 답변이 없으시다구요?</h3>
								<p>
									찾으시는 답변이 없다면, <br />당황하지 마시고 아래 "질문하기" 버튼을 눌러주세요.
								</p>
								<button type="button" class="btn btn-primary btn-sm"
									onclick="focusMethod()">질문하기</button>
							</div>
						</div>
					</div>
					<div class="col-lg-8">

						<h4>관리자에게 1:1로 문의를!</h4>
						<div class="hline"></div>
						<p>
							이름과 제목, 내용(질문에 관한내용)을 입력하여 전송하면 관리자에게 문의가 전송됩니다. <br /> 해당문의에 대한
							답변은 마이페이지에 내가 질문한 내역에서 확인하실 수 있습니다. <br /> 운영시간 중에만 답변이 완료되므로
							실시간이 아닌점 양해 부탁드립니다.
						</p>
						<form role="form" name="qnaFrm" method="post"
							onsubmit="return qnacheck();" action="qnaAction">
							<div class="form-group">
								<label for="q_title">문의 제목</label> <input type="text"
									class="form-control" id="q_title" name="q_title" />
							</div>
							<div class="form-group">
								<label for="q_content">문의 내용</label>
								<textarea class="form-control" id="q_content" rows="3"
									name="q_content"></textarea>
							</div>
							<button type="submit" class="btn btn-primary btn-sm">문의하기</button>
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
		</div>
		<! --/row -->
		</div>

		<! --/container -->
	</section>

	<!-- bottom s -->
	<%@ include file="../../resources/common/layOutBottom.jsp"%>
	<!-- bottom e -->

	<script src="./resources/KapukAlas/js/jquery.js"></script>
	<script src="./resources/KapukAlas/js/bootstrap.min.js"></script>

</body>
</html>