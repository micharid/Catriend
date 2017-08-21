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

<title>Q&A</title>

<style>	
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
body
{
background-color:#222223;
font-family: 'Noto Sans KR', sans-serif;
font-weight: 300;
}
table
{
	color:white;
}
th
{
	text-align:center;
}
tbody
{
	 text-align:center;
}
.title
{
	text-align:left;
}
</style>
</head>
<body>
<center><h1 style="color:white;">자주묻는질문</h1></center>
<div class="container-fluid">
	<div class="row">
		<div class="container-fluid">
			<div class="col-sm-2"></div>
			<div class="col-sm-8" >
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
									자주 묻는 질문1
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">
								이것은 자주 묻는 질문 1입니다. 그만 물어봐주세요.
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									자주 묻는 질문2
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">
								이것은 자주 묻는 질문 2입니다. 그만 물어봐주세요.
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
									자주 묻는 질문3
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body">
								이것은 자주 묻는 질문 3입니다. 그만 물어봐주세요.
							</div>
						</div>
					</div>
					
					
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFour">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
									자주 묻는 질문4
								</a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
							<div class="panel-body">
								이것은 자주 묻는 질문 4입니다. 그만 물어봐주세요.
							</div>
						</div>
					</div>
					
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFive">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
									자주 묻는 질문5
								</a>
							</h4>
						</div>
						<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
							<div class="panel-body">
								이것은 자주 묻는 질문 5입니다. 그만 물어봐주세요.
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
</div>

<br /><br />

<center><h1 style="color:white;">내 질문</h1></center>
<div class="container-fluid">
	<div class="row">
		<div class="container-fluid">
			<div class="col-sm-2"></div>
			<div class="col-sm-8" >
				<table class="table table-bordered">
				<colgroup>
					<col style="width:5%;">
					<col style="width:auto;">
					<col style="width:8%;">
					<col style="width:8%;">
				</colgroup>
					<thead>
					<tr>
						<th>No</th>
						<th style="text-align:left;">제목</th>
						<th>답변여부</th>
						<th>글작성일</th>
					</tr>
					</thead>
					
					<tbody>
					<tr>
						<td>1</td>
						<td class="title">이것은 제목1입니다.</td>
						<td><span class="glyphicon glyphicon-ok" aria-hidden="true"></span></td>
						<td>1930/05/07</td>
					</tr>
					<tr>
						<td>2</td>
						<td class="title">이것은 제목2입니다.</td>
						<td><span class="glyphicon glyphicon-remove" aria-hidden="true"></td>
						<td>2587/10/11</td>
					</tr>
					<tr>
						<td>3</td>
						<td class="title">이것은 제목3입니다.</td>
						<td><span class="glyphicon glyphicon-ok" aria-hidden="true"></td>
						<td>9754/12/25</td>
					</tr>
					</tbody>
				</table>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
</div>

</body>
</html>