<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Q & A</title>
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
     document.qnaFrm.q_title.focus();
}

var isValidate = function(obj)
{
	//질문 제목검증
	if(obj.q_title.value=="")
	{
		alert("제목을 입력하세요");
		obj.q_title.focus();
		return false;
	}
	//질문 내용
	if(obj.q_content.value=="")
	{
		alert("내용을 입력하세요");
		obj.q_content.focus();
		return false;
	}
	alert('문의글 등록되었습니다.');
}
</script>

<body>
   <!-- top s -->
   <%@ include file="../../resources/common/layOutTop.jsp"%>
   <!-- top e -->

   <section id="about">
      <div class="container mtb">
<!-- bottom s -->
   <%@ include file="../../resources/common/sectionAd.jsp"%>
<!-- bottom e -->




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
                                       href="#collapse1">캣렌드는 무슨 사이트 인가요?</a>
                                 </h4>
                              </div>
                              <div id="collapse1" class="panel-collapse collapse in">
                                 <div class="panel-body">
                                 	저희 캣렌드는 고양이와 사람들이 친구가 될 수 있도록 기회를 제공해주는 곳입니다.
                                 	<br />
                                 	캣렌드에선 고양이를 빌려주는 일을 하고 있습니다.
                                 	<br />
                                 </div>
                              </div>
                           </div>
                           <div class="panel panel-default">
                              <div class="panel-heading">
                                 <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion"
                                       href="#collapse2">회원가입시 문제는 무슨용도인가요?</a>
                                 </h4>
                              </div>
                              <div id="collapse2" class="panel-collapse collapse">
                                 <div class="panel-body">
                                 	회원가입시에 20문항의 고양이 지식에 관한 문제는 회원님의 등급을 측정하기 위해 사용됩니다.
                                 	<br />
                                 	저희 캣렌드에서 데려갈 수 있는 고양이를 초보, 중수, 고수 집사 등급으로 고양이를 회원님의 등급별로 나누어 빌려드리고 있습니다.  
                                 </div>
                              </div>
                           </div>
                           <div class="panel panel-default">
                              <div class="panel-heading">
                                 <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion"
                                       href="#collapse3">등급은 어떻게 상승 시키나요?</a>
                                 </h4>
                              </div>
                              <div id="collapse3" class="panel-collapse collapse">
                                 <div class="panel-body">
                                 	회원님의 등급은 고양이를 빌리시고 반납할때 자동적으로 누적치를 쌓아 일정량이 채워지면 등급이 상승됩니다.
                                 </div>
                              </div>
                           </div>
                           <div class="panel panel-default">
                              <div class="panel-heading">
                                 <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion"
                                       href="#collapse4">고양이를 잃어버렸어요 어떻게 해야되나요?</a>
                                 </h4>
                              </div>
                              <div id="collapse4" class="panel-collapse collapse">
                                 <div class="panel-body">
                                 	고양이를 잃어버리셨다면 곧바로 저희 캣렌드 고객센터로 연락 주시길 바랍니다.
                                 	<br />
                                 	캣렌드 운영시간이 아닐시, 잃어버린 위치와 시각을 관리자에게 질문하기 기능을 이용하여 보내주시기 바랍니다.
                                 	<br />
                                 	또한, 고양이를 잃어버릴시 저희 캣렌드 규정에 따라 변상을 해주셔야 됩니다.
                                 </div>
                              </div>
                           </div>
                           <div class="panel panel-default">
                              <div class="panel-heading">
                                 <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion"
                                       href="#collapse5">제가 계약한 고양이는 어디서 확인할 수 있나요?</a>
                                 </h4>
                              </div>
                              <div id="collapse5" class="panel-collapse collapse">
                                 <div class="panel-body">
                                 	로그인 하시면 마이페이지가 활성화 됩니다.
                                 	<br />
                                 	마이페이지에서 내가 계약한 내역을 확인해주시면 됩니다. 
                                 </div>
                              </div>
                           </div>
                           <div class="panel panel-default">
                              <div class="panel-heading">
                                 <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion"
                                       href="#collapse6">고양이는 어떻게 데려오나요?</a>
                                 </h4>
                              </div>
                              <div id="collapse6" class="panel-collapse collapse">
                                 <div class="panel-body">
                                 	고객님이 직접 저희 사무실을 방문하여 고양이를 데려가주시면 됩니다.
                                 </div>
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
                  <%if(login != null){ %>
                  <form role="form" name="qnaFrm" method="post"
                     onsubmit="return isValidate(this);" action="qnaAction">
                     <input type="hidden" name="u_id" value="<%=login.getU_id()%>" />
                     <div class="form-group">
                        <label for="q_title">문의 제목</label> <input type="text"
                           class="form-control" id="q_title" name="q_title" />
                     </div>
                     <div class="form-group">
                        <label for="q_content">문의 내용</label>
                        <textarea class="form-control" id="q_content" rows="3"
                           name="q_content"></textarea>
                     </div>
                     <button type="submit" class="btn btn-primary btn-sm" onclick="javascript:alert('문의글 등록되었습니다.');">문의하기</button>
                     <!-- 관리자에게 문의글이 전송됨 -->
                     <!-- 관리자가 답변하면 관리자 / 유저 마이페이지/관리페이지에 기록됨 -->
                  </form>
                  <%}else{ %>
                     <span>로그인을 해주세요~</span>
                  <%} %>
               </div>
               <! --/col-lg-8 -->

               <div class="col-lg-4">
                  <h4>캣렌드의 주소</h4>
                  <div class="hline"></div>
                  <p>
                     경기도 고양시 냐옹구 캣동<br /> 123-5번지 캣렌드타워 1004호<br />
                  </p>
                  <p>
                     Email: catRiend@Corea.com<br /> Tel: 02-1004-1004
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
   
<script>
$(function() {
     //navbar affix
     $('#nav').affix({
       offset: {
         top: $('header').height()
       }
     });
   });

         $('#nav .navbar-nav li>a').click(function(){
     var link = $(this).attr('href');
     var posi = $(link).offset().top+20;
     $('body,html').animate({scrollTop:posi},700);
   })
</script>

</body>
</html>