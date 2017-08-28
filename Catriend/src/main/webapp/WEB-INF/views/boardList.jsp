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
                                <li class=""><a href="#after" data-toggle="tab">후기 게시판</a>
                                </li>
                                <li class=""><a href="#img" data-toggle="tab">이미지 게시판</a>
                                </li>
                                
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="free">
                                      <div class="panel panel-default">
					                        
					                        <div class="panel-body">
					                            <div class="table-responsive">
					<form method="get">
					<input type="hidden" name="nowPage" value="1" />
					<table width="100%" style="text-align:center;">
						<tr>
							<td>
								<select name="searchColumn">
									<option value="title">제목</option>
									<option value="name">작성자</option>
									<option value="content">내용</option>
								</select>
								<input type="text"  name="searchWord"/>
								<input type="submit"  value="검색하기" />
							</td>
						
						</tr>
					
					</table>
					
					</form>
					                          			
					                          				
					<table width="100%">
						<tr>
							<td align="right">
							<button type="button" class="btn btn-info" onclick="">
							글쓰기</button>
							
							</td>
						</tr>
					</table>
					                          				
															                            	
					                                	<table class="table table-bordered table-hover">
					                                               	
				         									
				         									
			         									
					                                
					                                    <thead>
					                                        <tr>
					                                            <th>#</th>
					                                            <th>제목</th>
					                                            <th>작성자</th>
					                                            <th>조회수</th>
					                                           	<th>작성일</th>
					                                        </tr>
					                                    </thead>
					                                    <tbody>
					                                    <!--  게시판 반복 부분 s -->
					                                        <tr>
					                                            <td>1</td>
					                                            <td><a href="">Mark</a></td>
					                                            <td>Otto</td>
					                                            <td>@mdo</td>
					                                            <td>2017.08.27</td>
					                                        </tr>
					                                    <!-- 게시판 반복 부분 e  -->
					                                        <tr>
					                                            <td>2</td>
					                                            <td><a href="">acob</a></td>
					                                            <td>Thornton</td>
					                                            <td>@fat</td>
					                                            <td>2017.08.27</td>
					                                        </tr>
					                                        <tr>
					                                            <td>3</td>
					                                            <td><a href="">Larry</a></td>
					                                            <td>the Bird</td>
					                                            <td>@twitter</td>
					                                            <td>2017.08.27</td>
					                                        </tr>
					                                    </tbody>
					                                    
					                                	</table>
					 
					                                
					                               
					                            </div>
					                        </div>
					                    </div>
                                </div>
                                
                                <!-- 후기 게시판  -->
                                
                                   
                                <div class="tab-pane fade" id="after">
                                       <div class="panel panel-default">
					                        
					                        <div class="panel-body">
					                            <div class="table-responsive">
					<form method="get">
					<input type="hidden" name="nowPage" value="1" />
					<table width="100%" style="text-align:center;">
						<tr>
							<td>
								<select name="searchColumn">
									<option value="title">제목</option>
									<option value="name">작성자</option>
									<option value="content">내용</option>
								</select>
								<input type="text"  name="searchWord"/>
								<input type="submit"  value="검색하기" />
							</td>
						
						</tr>
					
					</table>
					
					</form>
					<table width="100%">
						<tr>
							<td align="right">
							<button type="button" class="btn btn-info" onclick="">
							글쓰기</button>
							
							</td>
						</tr>
					</table>
					   <div class="row">
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>Web Developer</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>User Experience</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>Web Designer</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>Web Analyst</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
					</div>
					 <div class="row">
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>Web Developer</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>User Experience</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>Web Designer</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>Web Analyst</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
					</div>
					                            </div>
					                        </div>
					                    </div>
                                </div>
                                
                                
                                <!-- 이미지 게시판 -->
                                
                                
                                <div class="tab-pane fade" id="img">
                                       <div class="panel panel-default">
					                        
					                        <div class="panel-body">
					                            <div class="table-responsive">
					<form method="get">
					<input type="hidden" name="nowPage" value="1" />
					<table width="100%" style="text-align:center;">
						<tr>
							<td>
								<select name="searchColumn">
									<option value="title">제목</option>
									<option value="name">작성자</option>
									<option value="content">내용</option>
								</select>
								<input type="text"  name="searchWord"/>
								<input type="submit"  value="검색하기" />
							</td>
						
						</tr>
					
					</table>
					
					</form>
					<table width="100%">
						<tr>
							<td align="right">
							<button type="button" class="btn btn-info" onclick="">
							글쓰기</button>
							
							</td>
						</tr>
					</table>
					   <div class="row">
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>Web Developer</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>User Experience</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>Web Designer</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>Web Analyst</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
					</div>
					 <div class="row">
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>Web Developer</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>User Experience</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>Web Designer</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 animate-box">
							<a class="fh5co-card" href="#">
								<img src="./resources/assets/img/notsign.png" alt="Free HTML5 Bootstrap template" class="img-responsive">
								<div class="fh5co-card-body">
									<h3>Web Analyst</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste sunt porro delectus cum officia magnam.</p>
								</div>
							</a>
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
         </div>
         </div>
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