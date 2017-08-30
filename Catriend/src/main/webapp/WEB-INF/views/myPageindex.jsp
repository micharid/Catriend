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

<script>
   function confirmFunc() {
      if (confirm(" 탈퇴하시겠습니까? \n\n 탈퇴를 하시면 모든 정보가 DB에서 사라집니다. \n\n 이점 유의해주시길 바랍니다.")) {
         location.href = "userdeletesuccess";
      }
   }
   
   function check() {
      var f = document.userFrm;
      
      if(f.u_pw.value != null) {
         if(f.u_pw.value != f.u_pwCheck.value){
            alert("비밀번호가 다릅니다");
            f.u_pwCheck.focus();
            return false;
         }
      }
      return true;
   }


</script>

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




</head>

<body>




	<!-- *****************************************************************************************************************
	 BLOG CONTENT
	 ***************************************************************************************************************** -->

	<div class="container">
		<div class="row">
	<div id="blue" style="margin-top:60px;">
		
					<center>
						<h3 style=" font-size: 20px; line-height: 1.428571429; color: #fff; padding:10px;">MY PAGE</h3>
					</center>
		
			<!-- /container -->
	</div>
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<a href="myPage">
						<div class="panel-body text-center" style="cursor:pointer">
							<div class="tab1img"><img class="center-block" src="./resources/assets/img/setting.png" style="width:96px! important; height:96px! important;"></div>
							<p style="font-size:1.2em">개인정보 수정하기</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<a href="myfreeboardhistory">
						<div class="panel-body text-center" style="cursor:pointer">
							<div class="tab2img"><img class="center-block" src="./resources/assets/img/list.png" style="width:96px! important; height:96px! important;"></div>
							<p style="font-size:1.2em">내가 작성한 글목록</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<a href="mycontracthistory">
						<div class="panel-body text-center" style="cursor:pointer">
							<div class="tab3img"><img class="center-block" src="./resources/assets/img/contract.png" style="width:96px! important; height:96px! important;"></div>
							<p style="font-size:1.2em">내가 계약한 내역</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<a href="myqnahistory">
						<div class="panel-body text-center" style="cursor:pointer">
							<div class="tab4img"><img class="center-block" src="./resources/assets/img/faq.png" style="width:96px! important; height:96px! important;"></div>
							<p style="font-size:1.2em">내가 질문한 내역</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
	
	<br /><br />
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