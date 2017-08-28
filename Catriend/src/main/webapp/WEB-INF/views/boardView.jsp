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

<title>Cat`riend</title>

<!-- Bootstrap core CSS -->
<link href="./resources/assets/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./resources/assets/css/style.css" rel="stylesheet">
<link href="./resources/assets/css/font-awesome.min.css" rel="stylesheet">
</head>

<style>
body{
	background: #ffc35b;
}

.up{
    width: 78px;
    height: 78px;
    background: url('./resources/assets/img/up.PNG') 0 -244px no-repeat;
}

.up{
    position: relative;
    clear: both;
    width: 619px;
    padding: 40px 0 60px 0;
    margin: 0 auto;
    text-align: center;
}
textarea {
    display: block;
    width: 100%;
    height: 42px;
    padding: 4px 0 0 6px;
    border: 0;
    background:white;
    font-size: 15px;
    color: #24272B;
    vertical-align: top;
    -webkit-appearance: none;
    
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
					<h3>글쓰기</h3>
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
		  
		  <form action="">
                  <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <center><h1>제목</h1></center>
                        </div>
                        
		                        <table class="table" width="100%"  cellspacing="0" cellpadding="2">
								<tr>
									<td width="15%">번호</td>
									<td width="15%">1</td>
									
									<td width="20%">닉네임</td>
									<td width="20%">빵꾸똥꾸</td>
									
								</tr>
								<tr>
									<td width="20%">작성일</td>
									<td width="30%">2017.08.27</td>
									
									<td width="20%">조회수</td>
									<td width="30%">3</td>
								</tr>
								<tr>
									<td width="20%">추천수</td>
									<td width="80%" colspan="3">
									11
									</td>
									
								</tr>
								<tr>
									<td width="20%">제목</td>
									<td width="80%" colspan="3">
									아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ 졸리다 ㅜㅜ
									
									
									
										
									</td>
									
								</tr>
								<tr>
									<td>내용</td>
									<td colspan="3" style="height:150px; padding:10px;">
									졸려 죽겠네 ....
									</td>
								</tr>
								<tr>
									<td align="center" width="100%" colspan="3">
											
											<span class="badge">99</span><button></button>			
											
									</td>
									
									
								</tr>
								<tr>
									<td width="20%">첨부파일</td>
									<td width="80%" colspan="3"> 갈매기.jpg
								
									</td>
									
								</tr>
								<tr>
									<td colspan="4" style="text-align:center; padding:10px 0;" >
										<button class="btn btn-info" type="button" onclick="javascript:location.href='../DataRoom/DataPassword?idx=${dto.idx}&mode=edit';">수정하기</button>&nbsp;&nbsp;
										<button class="btn btn-info" type="button" onclick="location.href='../DataRoom/DataPassword?idx=${dto.idx}&mode=delete';">삭제하기</button>&nbsp;&nbsp;
										<button class="btn btn-info" type="button" onclick="location.href='../DataRoom/DataList?nowPage=${param.nowPage}';">리스트보기</button>
									</td>
								</tr>
							
							
							</table>
							
                        <div class="panel-footer">
                        <form name="cmt" action="#">
			
				
				<p><textarea id="textAreaComment" cols="30" rows="5" title="" placeholder="댓글을 입력해 주세요"></textarea></p>
				<table width="100%">
						<tr>
							<td align="right">
							<button type="button" class="btn btn-info" onclick="">
							댓글달기</button>
							
							</td>
						</tr>
				</table>
				<table class="table">
				
				
					<tr>
						<th>닉네임</td>
						<th>내용</td>
						<th>작성일</td>
						
					</tr>
					
					<!-- 댓글 반복 부분  s-->
					<tr>
						<td>날아라통닭</td>
						<td>ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ나도 졸려</td>
						<td>2017-08-27</td>
						
					</tr>
					<!-- 댓글 반복 부분  e-->
				
				
				</table>
				
			
				</form>
             		</div>
             		
       </div>
     </div>
    </form>
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
