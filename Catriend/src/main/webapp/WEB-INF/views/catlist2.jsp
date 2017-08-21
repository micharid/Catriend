<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="./resources/assets/ico/favicon.ico">

    <title>고양이리스트</title>
    
    <link rel="stylesheet" href="./resources/common/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	  <script>
	  $( function() {
	    $( "input" ).checkboxradio({
	      icon: false
	    });
	  } );
	  </script>
<style>	
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
body
{
background-color:#222223;
font-family: 'Noto Sans KR', sans-serif;
font-weight: 300;
}
#testtable
{
	border:1px solid #000000;
}
.thumbnail
{
	background-color:#D8D8D8;
}
.thumbnail .caption
{
    padding: 0px;
    color: #333;
}
#image
{
	width: 300px;
	height: 300px;
}
table
{
	color:black;
}
</style>

    <!-- Bootstrap core CSS -->
    <link href="./resources/assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./resources/assets/css/style.css" rel="stylesheet">
    <link href="./resources/assets/css/font-awesome.min.css" rel="stylesheet">

    
    <script src="./resources/assets/js/modernizr.js"></script>
    
    
  </head>

  <body>

    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">SOLID.</a>
        </div>
        <div class="navbar-collapse collapse navbar-right">
          <ul class="nav navbar-nav">
            <li><a href="index.html">HOME</a></li>
            <li><a href="about.html">ABOUT</a></li>
            <li><a href="qna2.html">Q&A</a></li>
            <li class="dropdown active">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">PAGES <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="catlist2.jsp">고양이목록</a></li>
                <li><a href="review2.jsp">후기게시판</a></li>
                <li><a href="portfolio.html">PORTFOLIO</a></li>
                <li><a href="single-project.html">SINGLE PROJECT</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

	<!-- *****************************************************************************************************************
	 BLUE WRAP
	 ***************************************************************************************************************** -->
	<div id="blue">
	    <div class="container">
			<div class="row">
				<center><h3>고양이 리스트</h3></center>
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /blue -->

	 
	<!-- *****************************************************************************************************************
	 BLOG CONTENT
	 ***************************************************************************************************************** -->

	 <div class="container-fluid">
	<div class="row">
		<div class="container-fluid">
			<div class="col-sm-2"></div>
			<div class="col-sm-8" >
				<table class="table table-bordered">
					<tr>
						<td style="text-align:center">
							<div class="widget">
								<fieldset>
									<label for="checkbox-1">분류1</label>
									<input type="checkbox" name="checkbox-1" id="checkbox-1">
									<label for="checkbox-2">분류2</label>
									<input type="checkbox" name="checkbox-2" id="checkbox-2">
									<label for="checkbox-3">분류3</label>
									<input type="checkbox" name="checkbox-3" id="checkbox-3">
									<label for="checkbox-4">분류4</label>
									<input type="checkbox" name="checkbox-4" id="checkbox-4">
									<label for="checkbox-5">분류5</label>
									<input type="checkbox" name="checkbox-5" id="checkbox-5">
									<label for="checkbox-6">분류6</label>
									<input type="checkbox" name="checkbox-6" id="checkbox-6">
									<label for="checkbox-7">분류7</label>
									<input type="checkbox" name="checkbox-7" id="checkbox-7">
									<label for="checkbox-8">분류8</label>
									<input type="checkbox" name="checkbox-8" id="checkbox-8">
									
									<label for="checkbox-9">분류9</label>
									<input type="checkbox" name="checkbox-9" id="checkbox-9">
									<label for="checkbox-10">분류10</label>
									<input type="checkbox" name="checkbox-10" id="checkbox-10">
									<label for="checkbox-11">분류11</label>
									<input type="checkbox" name="checkbox-11" id="checkbox-11">
									<label for="checkbox-12">분류12</label>
									<input type="checkbox" name="checkbox-12" id="checkbox-12">
									<label for="checkbox-13">분류13</label>
									<input type="checkbox" name="checkbox-13" id="checkbox-13">
									<label for="checkbox-14">분류14</label>
									<input type="checkbox" name="checkbox-14" id="checkbox-14">
									<label for="checkbox-15">분류15</label>
									<input type="checkbox" name="checkbox-15" id="checkbox-15">
									<label for="checkbox-16">분류16</label>
									<input type="checkbox" name="checkbox-16" id="checkbox-16">
								</fieldset>
							</div>
						</td>
					</tr>
				</table>
			<div class="col-sm-2"></div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="container-fluid">
			<div class="col-sm-2"></div>
			<div class="col-sm-8" >
				<div class="row">
					<div class="col-md-4">
						<div class="thumbnail">
							<img src="./resources/images/Bbs10.jpg" id="image">
							<div class="caption">
								<h3 align="center">CAT A</h3>
								<center>
									<p>
										이고양이는 귀엽습니다.
									</p>
								</center>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<img src="./resources/images/Bbs10.jpg" id="image">
							<div class="caption">
								<h3 align="center">CAT B</h3>
								<center>
									<p>
										이고양이는 귀엽습니다.
									</p>
								</center>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<img src="./resources/images/Bbs10.jpg" id="image">
							<div class="caption">
								<h3 align="center">CAT C</h3>
								<center><p>이고양이는 귀엽습니다.</p></center>
							</div>
						</div>
					</div>
				</div>
			<div class="col-sm-2"></div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="container-fluid">
			<div class="col-sm-2"></div>
			<div class="col-sm-8" >
				<div class="row">
					<div class="col-md-4">
						<div class="thumbnail">
							<img src="./resources/images/Bbs10.jpg" id="image">
							<div class="caption">
								<h3 align="center">CAT A</h3>
								<center>
									<p>
										이고양이는 귀엽습니다.
									</p>
								</center>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<img src="./resources/images/Bbs10.jpg" id="image">
							<div class="caption">
								<h3 align="center">CAT B</h3>
								<center><p>이고양이는 귀엽습니다.</p></center>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<img src="./resources/images/Bbs10.jpg" id="image">
							<div class="caption">
								<h3 align="center">CAT C</h3>
								<center><p>이고양이는 귀엽습니다.</p></center>
							</div>
						</div>
					</div>
				</div>
			<div class="col-sm-2"></div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="container-fluid">
			<div class="col-sm-2"></div>
			<div class="col-sm-8" >
				<div class="row">
					<div class="col-md-4">
						<div class="thumbnail">
							<img src="./resources/images/Bbs10.jpg" id="image">
							<div class="caption">
								<h3 align="center">CAT A</h3>
								<center><p>이고양이는 귀엽습니다.</p></center>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<img src="./resources/images/Bbs10.jpg" id="image">
							<div class="caption">
								<h3 align="center">CAT B</h3>
								<center><p>이고양이는 귀엽습니다.</p></center>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<img src="./resources/images/Bbs10.jpg" id="image">
							<div class="caption">
								<h3 align="center">CAT C</h3>
								<center><p>이고양이는 귀엽습니다.</p></center>
							</div>
						</div>
					</div>
				</div>
			<div class="col-sm-2"></div>
			</div>
		</div>
	</div>
</div>


	<!-- *****************************************************************************************************************
	 FOOTER
	 ***************************************************************************************************************** -->
	 <div id="footerwrap">
	 	<div class="container">
		 	<div class="row">
		 		<div class="col-lg-4">
		 			<h4>About</h4>
		 			<div class="hline-w"></div>
		 			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
		 		</div>
		 		<div class="col-lg-4">
		 			<h4>Social Links</h4>
		 			<div class="hline-w"></div>
		 			<p>
		 				<a href="#"><i class="fa fa-dribbble"></i></a>
		 				<a href="#"><i class="fa fa-facebook"></i></a>
		 				<a href="#"><i class="fa fa-twitter"></i></a>
		 				<a href="#"><i class="fa fa-instagram"></i></a>
		 				<a href="#"><i class="fa fa-tumblr"></i></a>
		 			</p>
		 		</div>
		 		<div class="col-lg-4">
		 			<h4>Our Bunker</h4>
		 			<div class="hline-w"></div>
		 			<p>
		 				Some Ave, 987,<br/>
		 				23890, New York,<br/>
		 				United States.<br/>
		 			</p>
		 		</div>
		 	
		 	</div><! --/row -->
	 	</div><! --/container -->
	 </div><! --/footerwrap -->
	 
    


  </body>
</html>
