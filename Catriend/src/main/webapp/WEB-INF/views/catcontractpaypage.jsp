<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>후기게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">

<title>계약</title>

<!-- datepicker 제이쿼리 임포트 -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
	$(function() {
		$("#datepickerin").datepicker(
				{
					//시작일. 끝일보다는 적어야 되게끔
					minDate : 0,
					dateFormat : "yy-mm-dd",
					defaultDate : "+1w",
					changeMonth : true,
					onClose : function(selectedDate) {
						$("#datepickerout").datepicker("option", "minDate",
								selectedDate);
					}
				});
	});
	$(function() {
		$("#datepickerout").datepicker(
				{
					//끝일. 시작일보다는 길어야 되게끔
					minDate : 0,
					dateFormat : "yy-mm-dd",
					defaultDate : "+1w",
					changeMonth : true,
					onClose : function(selectedDate) {
						$("#datepickerin").datepicker("option", "maxDate",
								selectedDate);
					},

					onSelect : function(dateText, inst) {
						// 일자 선택된 후 이벤트 발생

						//alert(parseInt(diffDays($('#datepickerin').datepicker(), $('#datepickerout').datepicker())));
						PayCheck();
					}
				});
	});

	function diffDays(sDate, eDate) {
		var start = new Date(sDate);
		var end = new Date(eDate);
		//날짜 계산 앞뒤 차이 수 + 1 총일자
		var days = parseInt((end.getTime() - start.getTime())
				/ (24 * 60 * 60 * 1000));
		return days+1;
	}

	function PayCheck() {
		var f = document.payFrm;
		var money = diffDays($('#datepickerin').datepicker("getDate"), $('#datepickerout').datepicker("getDate")) * 30000;

		f.money.value = money+"원";
	}

	$.datepicker.setDefaults({
		dateFormat : 'yy년 mm월 dd일',
		prevText : '이전 달',
		nextText : '다음 달',
		monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월',
				'10월', '11월', '12월' ],
		monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
				'9월', '10월', '11월', '12월' ],
		dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
		showMonthAfterYear : true,
		yearSuffix : '년'
	});
</script>

<style>
.panel-default>.panel-heading {
	color: #428BCA;
	background-color: #428BCA;
	border-color: #dddddd;
}
</style>
</head>
<body>
	<%@ include file="../../resources/common/layOutTop.jsp"%>

	<!-- 파란줄 -->
	<div id="blue">
		<div class="container">
			<div class="row">
				<center>
					<h3>계약하기</h3>
				</center>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /blue -->


	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-default">
					<br />
					<div class="paytable" style="margin-top: -10px;">
						<form name="payFrm" action="contractAction">
							<input type="hidden" name="u_id" value="<%=login.getU_id()%>" /> <input
								type="hidden" name="c_index" value="${c_index}" />
							<table class="table table-bordered"
								style="width: 98%; margin-left: auto; margin-right: auto;">
								<tr>
									<td rowspan="3" width="200px;">
										<div class="tab3img">
											<img class="center-block" width="400px"
												src="./resources/assets/img/catP/${dto.c_index}.jpg">
										</div>
									</td>
									<td style="vertical-align: middle;">이름 : ${dto.c_name}</td>
								</tr>
								<tr>
									<td style="vertical-align: middle;">성별 : ${dto.c_gender}</td>
								</tr>
								<tr>
									<td style="vertical-align: middle;">생일 : ${dto.c_birthday}</td>
								</tr>
								<tr>
									<td colspan="2" style="text-align: center;">IN : <input
										type="text" id="datepickerin" name="ct_sday"
										style="height: 30px; text-align: center;"> OUT : <input
										type="text" id="datepickerout" name="ct_eday"
										style="height: 30px; text-align: center;">
									</td>
								</tr>
								<tr>
									<td colspan="2" style="height: 100px;">
										<div id="payway" style="width: 100%;">
											<div id="paychoose" style="width: 100%;">
												<input type="radio" name="pay" id="pay" /><label for="pay">신용카드(일반)</label>
											</div>
											<div id="paychoose2" style="width: 100%;">
												<table class="table table-bordered">
													<tr>
														<td>카드선택</td>
														<td><select name="choosecard">
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
														</select></td>
													</tr>
													<tr>
														<td>할부방식</td>
														<td><select name="installmentplan">
																<option value="ready">선택하세요</option>
																<option value="1">1개월</option>
																<option value="2">2개월</option>
																<option value="3">3개월</option>
																<option value="4">4개월</option>
																<option value="5">5개월</option>
																<option value="6">6개월</option>
														</select></td>
													</tr>
												</table>
											</div>
										</div>
									</td>
								</tr>
							</table>
							<h3 align="center">최종결제금액</h3>
							<input class="form-control" type="text" name="money"
								style="color: black;" value="0원" readonly /> <br />
							<div align="center">
								<input type="submit" class="btn btn-danger"
									style="width: 110px;" value="결제하기" /> 
								<input type="button" class="btn btn-default"
									onclick="location.href='catProfile?c_index=${dto.c_index}'"
									style="width: 110px;" value="취소하기" />
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>

	<!-- 푸터 -->
	<%@ include file="../../resources/common/layOutBottom.jsp"%>
	<!-- bottom s -->
	<%@ include file="../../resources/common/menuScript.jsp"%>
	<!-- bottom e -->

</body>
</html>
