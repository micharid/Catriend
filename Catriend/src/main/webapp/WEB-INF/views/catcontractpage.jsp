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

    <title>고양이 계약</title>
    
    <!-- datepicker 제이쿼리 임포트 -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
<script>
$( function(){
  $( "#datepickerin" ).datepicker();
});
$( function(){
  $( "#datepickerout" ).datepicker();
});

$.datepicker.setDefaults({
    dateFormat: 'yy년 mm월 dd일',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
});
</script>
    
<style>	
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
body
{
background-color:#222223;
font-family: 'Noto Sans KR', sans-serif;
font-weight: 300;
}
.paychoose2:hover
{
	cursor:pointer;
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
    <%@ include file ="../../resources/common/top.jsp" %>

	<!-- 파란줄 -->
	<div id="blue">
	    <div class="container">
			<div class="row">
				<center><h3>계약하기</h3></center>
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /blue -->

	 <!-- 컨텐츠영역 -->
	 <div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8" >
		
			<table class="table table-bordered">
				<tr>
					<td rowspan="3"></td>
					<td>이름</td>
				</tr>
				<tr>
					<td>성별</td>
				</tr>
				<tr>
					<td>나이</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:center;">
						IN : <input type="text" id="datepickerin" style="height:30px; text-align:center;">
						OUT : <input type="text" id="datepickerout" style="height:30px; text-align:center;">
					</td>
				</tr>
				<tr>
					<td colspan="2" style="height:300px;">
						<div class="payway" style="width:100%;">
							<div class="paychoose" style="width:100%;">
								<input type="radio" name="pay"/>신용카드(일반)
							</div>
							<div class="paychoose2" style="width:100%;">
								<table class="table table-bordered">
									<tr>
										<td style="width:10%;">카드선택</td>
										<td style="width:90%;">
											<!-- 반복시작(카드이름/이미지만 바뀌면됨) -->
											<div style="border:1px solid black; width:80px; height:80px; display:inline-block;">
												신한
											</div>
											<!-- 반복끝 -->
											<div style="border:1px solid black; width:80px; height:80px; display:inline-block;">
												비씨
											</div>
											<div style="border:1px solid black; width:80px; height:80px; display:inline-block;">
												삼성
											</div>
											<div style="border:1px solid black; width:80px; height:80px; display:inline-block;">
												KB국민
											</div>
											<div style="border:1px solid black; width:80px; height:80px; display:inline-block;">
												현대
											</div>
											<div style="border:1px solid black; width:80px; height:80px; display:inline-block;">
												롯데
											</div>
											<div style="border:1px solid black; width:80px; height:80px; display:inline-block;">
												하나
											</div>
										</td>
									</tr>
									<tr>
										<td>할부방식</td>
										<td>
											<select name="Installmentplan">
												<option value="ready">선택하세요</option>
												<option value="1">1개월</option>
												<option value="2">2개월</option>
												<option value="3">3개월</option>
												<option value="4">4개월</option>
												<option value="5">5개월</option>
												<option value="6">6개월</option>
											</select>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button class="btn" style="width:100%; background-color:#00b3fe; font-size:1.5em; color:white;" >
								결제완료하기
						</button>
					</td>
				</tr>
			</table>
		</div>
		<div class="col-sm-2"></div>
	</div>

	<!-- 푸터 -->
	<%@ include file ="../../resources/common/footer.jsp" %>

  </body>
</html>
