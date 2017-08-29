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
    <link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
    

       
  </head>
<style>
#blue{
    background: #428BCA;
    margin-bottom:20px;
   
}


h2, h3, h4, h5, h6 {
    font-family: 'Raleway', sans-serif;
    font-weight: 900;
}

.col-lg-6{
	margin-top:30px;
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
  <section id="top">
    <header>
      <div class="container">
        <center>
         	<h1>Welcome to Cat`riend</h1>
	        <h3 style="color:#fff">ed non massa quis nisl tincidunt posuere sit amet vitae sem.</h3>
            
            <div class="skroler">
              <a href="#about"><span class="glyphicon glyphicon-chevron-down" style="color:#ffc35b;"></span></a>
            </div>
        </center>
      </div>
    </header>
  </section>
 

    <div id="nav">
    <nav class="navbar navbar-default navbar-static affix-top" role="navigation">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index">Cat`riend</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
        </ul>
        <ul class="nav navbar-nav navbar-right">
         
          <li><a href="about">About us</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">고양이들<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#">고양이</a></li>
              <li><a href="#">나에게 맞는 고양이</a></li>
              
            </ul>
          </li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">게시판<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#">자유 게시판</a></li>
              <li><a href="#">후기 게시판</a></li>
              
            </ul>
          </li>
          <li><a href="#">Q & A</a></li>
          <li><a href="#">로그인</a></li>
          <li><a href="#">회원가입</a></li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div>
    </nav>
  </div>

   <section id="about">
		<div class="container mtb">
			<div class="row">
		        <div class="col-md-3">
		          <span class="glyphicon glyphicon-send"></span> <br>
		          <h3>Awesome Feature</h3>
		          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a tincidunt elit. Aliquam porta nibh at enim luctus, auctor consequat dolor vehicula.
		        </div>
		        <div class="col-md-3">
		          <span class="glyphicon glyphicon-heart"></span> <br>
		          <h3>Build with love</h3>
		          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a tincidunt elit. Aliquam porta nibh at enim luctus, auctor consequat dolor vehicula.
		        </div>
		        <div class="col-md-3">
		          <span class="glyphicon glyphicon-phone"></span> <br>
		          <h3>Responsive Layout</h3>
		          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a tincidunt elit. Aliquam porta nibh at enim luctus, auctor consequat dolor vehicula.
		        </div>
		        <div class="col-md-3">
		          <span class="glyphicon glyphicon-tint"></span> <br>
		          <h3>Customizeable</h3>
		          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a tincidunt elit. Aliquam porta nibh at enim luctus, auctor consequat dolor vehicula.
		        </div>
		      </div>
		      

			
			
				<center>
					<h3 class="mb" id="blue" style="color:#fff; padding:10px;">자주묻는질문(F.A.Q.)</h3>
				</center>
				

	<div class="container mtb">
      <div class="row">
         <div class="col-md-12">
            <h2>자주묻는질문(F.A.Q.)</h2>
            <p>자주 묻는 질문을 모아놓았습니다.</p>
            <hr class="margin-vert-40">
            <div class="row">
               <div class="col-md-8">
					 <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Collapsible Group 1</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Collapsible Group 2</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Collapsible Group 3</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
      </div>
    </div>
     <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Collapsible Group 4</a>
        </h4>
      </div>
      <div id="collapse4" class="panel-collapse collapse">
        <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
      </div>
    </div>
     <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">Collapsible Group 5</a>
        </h4>
      </div>
      <div id="collapse5" class="panel-collapse collapse">
        <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
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
            <form role="form" name="qnaFrm" method="post" onsubmit="return qnacheck();" action="qnaAction">
               <div class="form-group">
                  <label for="q_title">문의 제목</label>
                  <input type="text" class="form-control" id="q_title" name="q_title" />
               </div>
               <div class="form-group">
                  <label for="q_content">문의 내용</label>
                  <textarea class="form-control" id="q_content" rows="3" name="q_content"></textarea>
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

	

  <section id="sponsor" style="margin-top: 100px;">
    <div class="container">
      <div class="row">
        
      </div>
      <h3 style="color:#fff">Donec sed sapien</h3>
      Morbi felis lectus, ultricies nec tellus eu, faucibus eleifend lectus. In molestie augue leo, id imperdiet ante imperdiet at. Quisque ultrices neque sit amet felis tincidunt tristique at sed nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut suscipit ut massa in ultricies. Nunc nec tincidunt nunc, ut consectetur lorem. Sed non justo nisl.
       <center>
	            
	            <div class="skroler">
	              <a href="#top"><span class="glyphicon glyphicon-chevron-down"></span></a>
	            </div>
	    </center>
    </div>
  </section>

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <h4>KapukAlas</h4>
          <p>Duis viverra suscipit vehicula. Aenean eu massa leo. Sed ullamcorper pretium risus eu scelerisque. Mauris venenatis consequat ultrices. Quisque fringilla sed lacus eu volutpat.</p>
        </div>
        <div class="col-md-3">
          <h4>Our location</h4>
          <div class="row">
            <div class="col-md-1"><span class="glyphicon glyphicon-map-marker"></span></div>
            <div class="col-md-10">Vestibulum placerat, enim sit amet congue aliquet.</div>
          </div><br>
          <div class="row">
            <div class="col-md-1"><span class="glyphicon glyphicon-envelope"></span></div>
            <div class="col-md-10">varius@nibh.lectus.com</div>
          </div><br>
          <div class="row">
            <div class="col-md-1"><span class="glyphicon glyphicon-earphone"></span></div>
            <div class="col-md-10">08888-72738-23</div>
          </div>
        </div>
        <div class="col-md-3">
          <h4>Latest blogs</h4>
          <div class="row">
            <div class="col-md-1"><span class="glyphicon glyphicon-pencil"></span></div>
            <div class="col-md-10">Maecenas suscipit in est a placerat. Curabitur semper sed nibh sed egestas. </div>
          </div><br>
          <div class="row">
            <div class="col-md-1"><span class="glyphicon glyphicon-pencil"></span></div>
            <div class="col-md-10">Maecenas suscipit in est a placerat. Curabitur semper sed nibh sed egestas. </div>
          </div>
        </div>
        <div class="col-md-3">
          <h4>Subscribe</h4>
          <input type="text" class="form-control" placeholder="your email address">
        </div>
      </div>
    </div>
  </footer>  

  <footer id="copyright">
    <p>Copright by @andreyyann 2014, All right reserved.</p>
  </footer>

    <script src="./resources/KapukAlas/js/jquery.js"></script>
    <script src="./resources/KapukAlas/js/bootstrap.min.js"></script>

  </body>
</html>