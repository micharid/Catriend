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

<!-- Bootstrap core CSS -->
<link href="./resources/assets/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./resources/assets/css/style.css" rel="stylesheet">
<link href="./resources/assets/css/font-awesome.min.css" rel="stylesheet">
</head>
<script type="text/javascript">
	function registCheck(){
		var f = document.registFrm;
		if(f.id.value == ""){
			alert("아이디를 입력해주세요 ! ");
			f.id.focus();
			return false;
		}
		
		if(f.password.value == ""){
			alert("비밀번호 입력해주세요 ! ");
			f.password.focus();
			return false;
		}
		
		if(f.passwordCheck.value == ""){
			alert("비밀번호 확인을 입력해주세요 ! ");
			f.passwordCheck.focus();
			return false;
		}
		
		if(f.password.value != f.passwordCheck.value){
			alert("비밀번호와 비밀번호확인이 동일하지 않습니다 ! ");
			f.passwordCheck.value="";
			f.passwordCheck.focus();
			return false;
		}
		
		if(f.nickname.value == ""){
			alert("닉네임을 입력해주세요 ! ");
			f.nickname.focus();
			return false;
		}
		
		if(f.name.value == ""){
			alert("이름을 입력해주세요 ! ");
			f.name.focus();
			return false;
		}
		
		if(f.email.value == ""){
			alert("이메일을 입력해주세요 ! ");
			f.email.focus();
			return false;
		}
		
		if(f.birthday.value == ""){
			alert("생일을 입력해주세요 ! ");
			f.birthday.focus();
			return false;
		}
		
		if(f.phoneNumber.value == ""){
			alert("휴대폰번호를 입력해주세요 ! ");
			f.phoneNumber.focus();
			return false;
		}
		
		if(f.address.value == ""){
			alert("주소를 입력해주세요 ! ");
			f.address.focus();
			return false;
		}
		
		return true;
	}
</script>

<style>
body{
	background: #ffc35b;
}
</style>

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
					<h3>회원가입</h3>
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
<div class="container-fluid">   
   <div class="row">
      <div class="col-sm-2"></div>
      <div class="col-sm-8" >
         <article class="container-fluid">
            <div class="col-md-12">
               
               <form class="form-horizontal" name="registFrm" onsubmit="return registCheck()" action="registAction">
                  <div class="form-group">
                     <label class="col-sm-3 control-label" for="inputId">아이디</label>
                     <div class="col-sm-6">
                        <input class="form-control" id="inputId" name="id" type="text" placeholder="아이디">
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
                     <div class="col-sm-6">
                        <input class="form-control" id="inputPassword" name="password" type="password" placeholder="비밀번호">
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
                     <div class="col-sm-6">
                        <input class="form-control" id="inputPasswordCheck" type="password" name="passwordCheck" placeholder="비밀번호 확인">
                        <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
                     </div>
                  </div>
                  <div class="form-group">
                     <label for="phoneNumber" class="col-sm-3 control-label">닉네임</label>
                     <div class="col-sm-6">
                        <input type="text" class="form-control" id="NickName" name="nickname" placeholder="닉네임을 입력해주세요"/>
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="col-sm-3 control-label" for="inputName">이름</label>
                     <div class="col-sm-6">
                        <input class="form-control" id="inputName" name="name" type="text" placeholder="이름" />
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="col-sm-3 control-label" for="inputEmail">이메일</label>
                     <div class="col-sm-6">
                        <input class="form-control" id="inputEmail" name="email" type="email" placeholder="Example@Example.com 형식으로 넣어주세요">
                     </div>
                  </div>
                  <div class="form-group">
                     <label for="birthdate" class="col-sm-3 control-label">생년월일</label>
                     <div class="col-sm-6">
                        <input type="date" class="form-control" id="birthdate" name="birthday" placeholder="19700101 형식으로 입력하세요." maxlength="8">
                     </div>
                  </div>
                  <div class="form-group">
                     <label for="phoneNumber" class="col-sm-3 control-label">휴대폰 번호</label>
                     <div class="col-sm-6">
                        <input type="tel" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
                     </div>
                  </div>
                  <div class="form-group">
                     <label for="phoneNumber" class="col-sm-3 control-label">주소</label>
                     <div class="col-sm-6">
                        <input type="text" class="form-control" id="address" name="address" placeholder="주소를 입력해주세요"/>
                     </div>
                  </div>
                  
                  
                  
                  
                  
                  <div class="form-group">
                     <div class="col-sm-12 text-center">
                        <button class="btn btn-primary" type="submit">회원가입
                           <i class="fa fa-check spaceLeft"></i>
                        </button>
                        <button class="btn btn-danger" type="button">가입취소
                           <i class="fa fa-times spaceLeft"></i>
                        </button>
                     </div>
                  </div>
               </form>
            
            </div>
         </article>
      </div>
      <div class="col-sm-2"></div>
   </div>
   
   <br />
 </div>  
	
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
