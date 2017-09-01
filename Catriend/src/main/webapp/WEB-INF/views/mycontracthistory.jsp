<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>계약내역</title>
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

img {
	width: 200px;
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




	<!-- *****************************************************************************************************************
	 BLOG CONTENT
	 ***************************************************************************************************************** -->

	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="panel panel-default">
					<div class="panel-heading"
						style="font-size: 1.5em; font-weight: 700;">
						<center>내가 계약한 내역</center>
					</div>
					<br />
					<c:forEach items="${myContractList}" var="row">
						<!-- 반복시작 -->
						<div class="panel panel-default center-block" style="width: 95%;">
							<table class="table table-bordered">
								<tr>
									<td rowspan="3" width="200px;">
										<div class="tab3img">
											<img class="center-block"
												src="./resources/assets/img/catP/${row.c_index}.jpg">
										</div>
									</td>
									<td style="vertical-align: middle;">이름 : ${row.c_name}</td>
									<td rowspan="3"
										style="width: 20%; margin-top: 50%; text-align: center; vertical-align: middle;">
										${row.ct_sday} <br /> ~ ${row.ct_eday}
									</td>
								</tr>
								<tr>
									<td style="vertical-align: middle;">성별 : ${row.c_gender}</td>
								</tr>
								<tr>
									<td style="vertical-align: middle;">생일 : ${row.c_birthday}</td>
								</tr>
							</table>
						</div>
					</c:forEach>
				</div>

				<div class="pull-right">
					<button class="btn" type="button"
						style="background-color: #00b3fe; color: white;"
						onclick="location.href='catlist'">고양이보러가기</button>
				</div>
				<div class="col-md-12 text-center">${pagingImg}</div>
				<div class="col-md-12 text-center">
					<button class="btn" type="button"
						style="background-color: #00b3fe; color: white;"
						onclick="location.href='myPageindex'">마이페이지로</button>
				</div>

			</div>
			<div class="col-md-1"></div>
		</div>
	</div>

	<br />
	<br />
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