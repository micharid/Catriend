<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>내후기게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
</head>
<style>
#blue {
	background: #428BCA;
	margin-bottom: 20px;
}

h3 {
	
}

h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-weight: 500;
	line-height: 1.1;
	color: inherit;
}
</style>

<script>
var isValidate = function(obj)
{
	if(obj.searchWord.value=="")
	{
		alert("검색내용을 입력하세요");
		obj.searchWord.focus();
		return false;
	}
}
</script>
</head>

<body>

	<!-- Fixed navbar -->
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->
	<!-- top s -->
	<%@ include file="../../resources/common/sectionAd.jsp"%>
	<!-- top e -->

	<div class="container">
		<div class="row">
			<div id="blue" style="margin-top: 60px;">
				<center>
					<h3
						style="font-size: 20px; line-height: 1.428571429; color: #fff; padding: 10px;">
						내가 작성한 글 목록</h3>
				</center>
			</div>
			<div class="col-md-2">
				<div class="list-group text-center">
					<a href="myfreeboardhistory" class="list-group-item active">자유게시판</a>
					<a href="mycatboardhistory?u_id=${loginUser.u_id}"
						class="list-group-item">후기게시판</a> <a
						class="btn btn-default list-group-item" href="myPageindex">마이
						페이지로</a>
				</div>
			</div>
			<div class="col-md-10">

				<div class="panel panel-default">
					<div class="panel-heading"
						style="font-size: 1.5em; font-weight: 700;">자유게시판</div>
					<form method="get" onsubmit="return isValidate(this);">
						<input type="hidden" name="nowPage" value="1" />
						<table width="100%" style="text-align: center;">
							<tr>
								<td><select name="searchColumn">
										<option value="fb_title">제목</option>
										<option value="fb_content">내용</option>
								</select> <input type="text" name="searchWord" /> <input type="submit"
									value="검색하기" /></td>
							</tr>
						</table>
					</form>
					<div class="panel-body">
						<table class="table table-hover table-bordered">
							<tr style="text-align: center;">
								<th width="5%" class="text-center">NO</th>
								<th width="50%">제목</th>
								<th class="text-center">작성자</th>
								<th class="text-center">조회수</th>
								<th width="12%" class="text-center">작성일</th>
							</tr>
							<!--  게시판 반복 부분 s -->
							<c:forEach items="${myFreeList}" var="row">
								<tr>
									<td class="text-center">${totalRecordCount - row.rNum +1}</td>
									<td><a
										href="freeBoardView?fb_index=${row.fb_index}&nowPage=${nowPage}">${row.fb_title}</a></td>
									<td class="text-center">${row.u_id}</td>
									<td class="text-center">${row.fb_hits}</td>
									<td class="text-center">${row.fb_date}</td>
								</tr>
							</c:forEach>
							<!-- 게시판 반복 부분 e  -->
						</table>
						<div class="col-md-12 text-right">
							<button class="btn" type="button"
								style="background-color: #00b3fe; color: white;"
								onclick="location.href='freeBoardList'">게시판으로</button>
						</div>
						<div class="col-md-12 text-center">
							<!-- 페이지 처리 -->
							${pagingImg}
						</div>
						<div class="col-md-12 text-center">
							<button class="btn" type="button"
								style="background-color: #00b3fe; color: white;"
								onclick="location.href='myPageindex'">마이페이지로</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<br />
	<br />
	<!-- bottom s -->
	<%@ include file="../../resources/common/layOutBottom.jsp"%>
	<!-- bottom e -->

	<script src="./resources/KapukAlas/js/jquery.js"></script>
	<script src="./resources/KapukAlas/js/bootstrap.min.js"></script>
	<!-- bottom s -->
	<%@ include file="../../resources/common/menuScript.jsp"%>
	<!-- bottom e -->

</body>
</html>