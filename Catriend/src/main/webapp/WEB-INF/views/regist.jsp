<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./resources/bootstrap3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="./resources/bootstrap3.3.7/js/bootstrap.min.js"></script>
<title>regist</title>
<style>   
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
body
{
background-color:#E1E1E1;
font-family: 'Noto Sans KR', sans-serif;
font-weight: 300;
}

#signul
{
   color:#FFFFFF;
}
table
{
   border:1px solid #000000;
}
#verticalmenu
{
   border:1px solid #000000;
   width:40%;
   vertical-align:center;
   text-align:center;
   font-color:#000000;
}
.nav-pills
{
   
}
#mainmenu.a
{
   font-size:2.0em;
}
#testtable
{
   border:1px solid #000000;
}

#footerp
{
   color:white;
   padding-top:7px;
}

.page-header {
    padding-bottom: 9px;
    margin: 40px 0 20px;
    border-bottom: 1px solid #000000;
}
hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #000000;
}

</style>
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
</head>
<body>
<div class="container-fluid">   
   <div class="row">
      <div class="col-sm-2"></div>
      <div class="col-sm-8" >
         <article class="container-fluid">
            <div class="col-md-12">
               <div class="page-header">
                  <h1>회원가입 <small>Register</small></h1>
               </div>
               <form class="form-horizontal">
                  <div class="form-group">
                     <label class="col-sm-3 control-label" for="inputId">아이디</label>
                     <div class="col-sm-6">
                        <input class="form-control" id="inputId" name="id" type="text" placeholder="아이디">
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
                     <div class="col-sm-6">
                        <input class="form-control" id="inputPassword" type="password" placeholder="비밀번호">
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
                     <div class="col-sm-6">
                        <input class="form-control" id="inputPasswordCheck" type="password" placeholder="비밀번호 확인">
                        <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
                     </div>
                  </div>
                  <div class="form-group">
                     <label for="phoneNumber" class="col-sm-3 control-label">닉네임</label>
                     <div class="col-sm-6">
                        <input type="text" class="form-control" id="NickName" placeholder="닉네임을 입력해주세요"/>
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="col-sm-3 control-label" for="inputName">이름</label>
                     <div class="col-sm-6">
                        <input class="form-control" id="inputName" type="text" placeholder="이름" />
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="col-sm-3 control-label" for="inputEmail">이메일</label>
                     <div class="col-sm-6">
                        <input class="form-control" id="inputEmail" type="email" placeholder="Example@Example.com 형식으로 넣어주세요">
                     </div>
                  </div>
                  <div class="form-group">
                     <label for="birthdate" class="col-sm-3 control-label">생년월일</label>
                     <div class="col-sm-6">
                        <input type="tel" class="form-control" id="birthdate" placeholder="19700101 형식으로 입력하세요." maxlength="8">
                     </div>
                  </div>
                  <div class="form-group">
                     <label for="phoneNumber" class="col-sm-3 control-label">휴대폰 번호</label>
                     <div class="col-sm-6">
                        <input type="tel" class="form-control" id="phoneNumber" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
                     </div>
                  </div>
                  <div class="form-group">
                     <label for="phoneNumber" class="col-sm-3 control-label">주소</label>
                     <div class="col-sm-6">
                        <input type="text" class="form-control" id="address" placeholder="주소를 입력해주세요"/>
                     </div>
                  </div>
                  
                  
                  
                  
                  
                  <div class="form-group">
                     <div class="col-sm-12 text-center">
                        <button class="btn btn-primary" type="submit">회원가입
                           <i class="fa fa-check spaceLeft"></i>
                        </button>
                        <button class="btn btn-danger" type="submit">가입취소
                           <i class="fa fa-times spaceLeft"></i>
                        </button>
                     </div>
                  </div>
               </form>
            <hr>
            </div>
         </article>
      </div>
      <div class="col-sm-2"></div>
   </div>
   
   <br />
   
   <!-- footer -->
   <!-- 
   <div class="row" style="height:90px; background-color:#222222; padding:10px 0; padding-top:10px;">
      <div class="col-sm-2"></div>
      <div class="col-sm-8 text-center">
         <div>
            
         </div>
         
         <p id="footerp">
            <strong>JAM's Gallery</strong><br>
              대표 : 김재민 ㆍ 주소 :  JAM's Gallery ㆍ 전화 : 010 - 3202 - 6171<br>
              Jaemin
         </p>
      </div>
      <div class="col-sm-2"></div>
   </div>
    -->
</div>

<!-- Modal창 -->
<div class="modal fade" id="myModal" role="dialog">
   <div class="modal-dialog">
      <!-- Modal창의 내용 -->
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <center><h4 class="modal-title">Login</h4></center>
         </div>
   
         <div class="modal-body">
            <label>ID</label>
            <br />
            <input type="text" name="user_id" id="userid" 
            placeholder="ID를 입력해주세요." class="form-control" />
            <br />
            <label>PASSWORD</label>
            <br />
            <input type="password" name="user_id" id="userpwd" 
            placeholder="PASSWORD를 입력해주세요." class="form-control" />
         </div>
         
       
        
	         <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	            <button type="button" class="btn btn-primary">Login</button>
	         </div>
      
         
      </div>
   </div>
</div>

</body>
</html>