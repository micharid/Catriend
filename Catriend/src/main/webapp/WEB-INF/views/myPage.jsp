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
						<h3 style=" font-size: 20px; line-height: 1.428571429; color: #fff; padding:10px;">회원정보</h3>
					</center>
		
			<!-- /container -->
	</div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-body text-center">
						<div class="userimg">
							<div>
								<img class="center-block img-circle img-thumbnail"
									src="./resources/assets/img/profile.png"
									style="width: 225px ! important; height: 225px ! important;">
							</div>
						</div>
						<h3 class="username text-bold">홍길동</h3>
						<div class="text-center">
							<a href="myPageindex">
								<button class="btn" type="submit"
									style="background-color: #00b3fe; color: white;">마이페이지로</button>
							</a>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="panel-title text-center">회원탈퇴</div>
					</div>
					<div class="panel-body text-center">
						<button class="btn" type="button"
							style="background-color: #dfdfdf; color: black;"
							onclick="confirmFunc()">회원 탈퇴하기</button>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="h4 text-center">내 정보 수정하기</div>
						<div class="row">
							<div class="col-lg-12">
								<form class="form-horizontal" name="userFrm" action="userUpdate"
									onsubmit="return check();" method="post">
									<input type="hidden" name="u_grade"
										value="${loginUser.u_grade}"> <input type="hidden"
										name="u_id" value="${loginUser.u_id}">
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact1">이름</label>
										<div class="col-sm-10">
											<input class="form-control" "id="inputContact1" type="text"
												name="u_name" placeholder="" value="${loginUser.u_name}"
												disabled>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact2">이메일</label>
										<div class="col-sm-10">
											<input class="form-control" id="inputContact2" type="text"
												name="u_email" placeholder="" value="${loginUser.u_email}">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact3">닉네임</label>
										<div class="col-sm-10">
											<input class="form-control" id="inputContact3" type="text"
												name="u_nickname" placeholder=""
												value="${loginUser.u_nickname}">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact4">비밀번호입력</label>
										<div class="col-sm-10">
											<input class="form-control" id="inputContact4" name="u_pw"
												type="password"
												placeholder="영문,숫자,특수문자를 조합하여 8자 이상으로 입력하세요.(최대20자리)"
												value="${loginUser.u_pw}">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact5">비밀번호확인</label>
										<div class="col-sm-10">
											<input class="form-control" id="inputContact5"
												name="u_pwCheck" type="password" placeholder=""
												value="${loginUser.u_pw}">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact6">전화번호</label>
										<div class="col-sm-10">
											<input class="form-control" id="inputContact6" type="text"
												name="u_phonenumber" value="${loginUser.u_phonenumber}">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact7">생년월일</label>
										<div class="col-sm-10">
											<input class="form-control" id="inputContact7" type="text"
												name="u_birth" value="${loginUser.u_birthday}" disabled>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputContact8">주소</label>
										<div class="col-sm-10">
											<input class="form-control" id="inputContact8" type="text"
												name="u_address" value="${loginUser.u_address}">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<button class="btn" type="submit"
												style="background-color: #00b3fe; color: white;">수정하기</button>
										</div>
									</div>

								</form>
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