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

  <body>
  <section id="top">
    <header>
      <div class="container">
        <center>
         	<h1>Welcome to Cat`riend</h1>
	        <h3>ed non massa quis nisl tincidunt posuere sit amet vitae sem.</h3>
            
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
        <a class="navbar-brand" href="#top">Cat`riend</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
        </ul>
        <ul class="nav navbar-nav navbar-right">
         
          <li><a href="about2">About us</a></li>
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
          <li><a href="regist2">회원가입</a></li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div>
    </nav>
  </div>
    <section id="about" class="container">
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
     <div id="blue" style="width:1170px;">
		
					<center>
						<h3 style=" font-size: 20px; line-height: 1.428571429; color: #fff; padding:10px;">회원가입</h3>
					</center>
			
			<!-- /container -->
	</div>
      
      
      <div class="container-fluid">   
   <div class="row" style="margin-top:80px;">
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
    </section>
	 
  <section id="sponsor">
    <div class="container">
      <div class="row">
        
      </div>
      <h3>Donec sed sapien</h3>
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
    <script>
      $(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});

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


      $( document ).ready(function() {
    $("[rel='tooltip']").tooltip();    
 
    $('.thumbnail').hover(
        function(){
            $(this).find('.caption').fadeIn(250);
        },
        function(){
            $(this).find('.caption').fadeOut(205);
        }
    ); 
});
    </script>
  </body>
</html>