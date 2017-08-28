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
<script>
	function checkWriteFrm(){
		var f = document.writeFrm;
		if(f.title.value==""){
			alert("제목을 입력하세요");
			f.title.focus();
			return false;
		}
		if(f.content.value==""){
			alert("내용을 입력하세요");
			f.content.focus();
			return false;
		}
		
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
					<h3>게시판</h3>
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
<div class="row">
	<div class="container">
	<div class="row">
	
	<div class="col-lg-12">
			가로이미지 들어갈 부분
	</div>
	<div class="col-lg-4">
	
	
				<h2>새로운 글</h2>
				<ul class="list-group">
					
					<li class="list-group-item">공지사항<span class="badge">99</span></li>
					<li class="list-group-item active">자유게시판<span class="badge">5</span></li>
					<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
					<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
					<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
				</ul>
			</div>
		<!-- 인기글 -->
		<div class="col-lg-4">
				<h2>인기 글</h2>
				<ul class="list-group">
					
					<li class="list-group-item">공지사항<span class="badge">99</span></li>
					<li class="list-group-item active">자유게시판<span class="badge">5</span></li>
					<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
					<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
					<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
				</ul>
			</div>
			<!--  -->
			<div class="col-lg-4">
				<h2>인기 글</h2>
				<ul class="list-group">
					
					<li class="list-group-item">공지사항<span class="badge">99</span></li>
					<li class="list-group-item active">자유게시판<span class="badge">5</span></li>
					<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
					<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
					<li class="list-group-item disabled">새알림없음<span class="badge">0</span></li>
				</ul>
			</div>
	
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            	게시판
                        </div>
                        <div class="panel-body">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#free" data-toggle="tab">자유 게시판</a>
                                </li>
                                
                                
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="free">
                                      <div class="panel panel-default">
					                        
					                        <div class="panel-body">
					                            <div class="table-responsive">
				 <div class="col-md-12">
               <div class="panel panel-info">
                        
                        <div class="panel-body">
                            <form name="writeFrm" method="post" onsubmit="return checkWriteFrm()" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>제목</label>
                                            <input class="form-control" name="title" type="text" />
                                            
                                        </div>
                                 <div class="form-group">
                                            <label>첨부파일</label>
                                            <input type="file" name="attachedfile" style="width:90%;"/>
                                     
                                        </div>
                                            <div class="form-group">
                                            <label>내용</label>
                                            <textarea name="content"  class="form-control" rows="3"></textarea>
                                        </div>
                                  
                                 
                                        <button type="submit" class="btn btn-info">등록하기</button>
                                        <button class="btn btn-danger" type="button" onclick="javascript:history.go(-1)">취소하기</button>

                                    </form>
                            </div>
                        </div>
                     </div>
					                               
					                            </div>
					                        </div>
					                    </div>
                                </div>
                                
                              
                                
                            </div>
                        </div>
                    </div>
                </div>
               
            </div>
    <div class="col-lg-12">
			가로이미지 들어갈 부분
	</div>
          </div>
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
