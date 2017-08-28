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

#inputbox
{
	text-align:center;
	background-color:white;
	cursor:text;
	font-size:1.5em;
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
    <%@ include file ="../../resources/common/layOutTop.jsp" %>

	<!-- 파란줄 -->
	<div id="blue">
	    <div class="container">
			<div class="row">
				<center><h3>계약하기</h3></center>
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /blue -->

	 
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-default">
					<br />
					<div class="paytable" style="margin-top:-10px;">
						<table class="table table-bordered" style="width: 98%; margin-left: auto; margin-right: auto;">
							<tr>
								<td rowspan="3" width="200px;">
									<div class="tab3img"><img class="center-block" src="./resources/assets/img/CatMade.jpg"></div>
								</td>
								<td style="vertical-align:middle;">이름 : 홍길동</td>
							</tr>
							<tr>
								<td style="vertical-align:middle;">성별 : 남자</td>
							</tr>
							<tr>
								<td style="vertical-align:middle;">나이 : 35살</td>
							</tr>
							<tr>
								<td colspan="2" style="text-align: center;">IN : <input
									type="text" id="datepickerin"
									style="height: 30px; text-align: center;"> OUT : <input
									type="text" id="datepickerout"
									style="height: 30px; text-align: center;">
								</td>
							</tr>
							<tr>
								<td colspan="2" style="height: 100px;">
									<div class="payway" style="width: 100%;">
										<div class="paychoose" style="width: 100%;">
											<input type="radio" name="pay" />신용카드(일반)
										</div>
										<div class="paychoose2" style="width: 100%;">
											<table class="table table-bordered">
												<tr>
													<td>카드선택</td>
													<td>
														<select name="choosecard">
																<option value="ready">카드사선택</option>
																<option value="hyundae">현대카드</option>
																<option value="kb">KB국민카드</option>
																<option value="shinhan">신한카드</option>
																<option value="samsung">삼성카드</option>
																<option value="lotte">롯데카드</option>
																<option value="woorie">우리카드</option>
																<option value="hana">하나카드</option>
																<option value="bc">비씨카드</option>
																<option value="nh">NH농협카드</option>
																<option value="city">씨티카드</option>
																<option value="gwangju">광주은행카드</option>
																<option value="suhyeop">수협은행카드</option>
																<option value="jenonbuk">전북은행카드</option>
																<option value="jeju">제주은행카드</option>
																<option value="gangwon">강원은행카드(신한)</option>
																<option value="bankcheck">저축은행체크카드</option>
																<option value="kakao">카카오뱅크</option>
														</select>
													</td>
												</tr>
												<tr>
													<td>할부방식</td>
													<td>
														<select name="installmentplan">
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
						</table>
						<center>
							<h3>최종결제금액</h3>
						</center>
						<input id="inputbox" class="form-control" type="text"
							placeholder="50,000원" readonly>
						<div class="text-center" style="margin-top: 0.5em;">
							<a href="catcontractsuccess">
								<button class="btn btn-danger" style="width: 110px;">결제하기</button>
							</a>
							<a href=""><!-- 고양이상세보기로넘어감 -->
								<button class="btn btn-default" style="width: 110px;">취소하기</button>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>

	<!-- 푸터 -->
	<%@ include file="../../resources/common/layOutBottom.jsp"%>

  </body>
</html>
