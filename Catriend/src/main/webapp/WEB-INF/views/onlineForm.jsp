<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>설문조사</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
</head>

<script type="text/javascript">
var isValidate = function(obj)
{
	var isTest1 = false;
	for(var i=0; i<obj.test1.length; i++)
	{
		if(obj.test1[i].checked==true)
		{
			isTest1 = true;
			break; 
		}
	}
	if(isTest1==false)
	{
		alert("문제1의 답을 선택하세요");
		obj.test1[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest2 = false;
	for(var i=0; i<obj.test2.length; i++)
	{
		if(obj.test2[i].checked==true)
		{
			isTest2 = true;
			break; 
		}
	}
	if(isTest2==false)
	{
		alert("문제2의 답을 선택하세요");
		obj.test2[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest3 = false;
	for(var i=0; i<obj.test3.length; i++)
	{
		if(obj.test3[i].checked==true)
		{
			isTest3 = true;
			break; 
		}
	}
	if(isTest3==false)
	{
		alert("문제3의 답을 선택하세요");
		obj.test3[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest4 = false;
	for(var i=0; i<obj.test4.length; i++)
	{
		if(obj.test4[i].checked==true)
		{
			isTest4 = true;
			break; 
		}
	}
	if(isTest4==false)
	{
		alert("문제4의 답을 선택하세요");
		obj.test4[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest5 = false;
	for(var i=0; i<obj.test5.length; i++)
	{
		if(obj.test5[i].checked==true)
		{
			isTest5 = true;
			break; 
		}
	}
	if(isTest5==false)
	{
		alert("문제5의 답을 선택하세요");
		obj.test5[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest6 = false;
	for(var i=0; i<obj.test6.length; i++)
	{
		if(obj.test6[i].checked==true)
		{
			isTest6 = true;
			break; 
		}
	}
	if(isTest6==false)
	{
		alert("문제6의 답을 선택하세요");
		obj.test6[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest7 = false;
	for(var i=0; i<obj.test7.length; i++)
	{
		if(obj.test7[i].checked==true)
		{
			isTest7 = true;
			break; 
		}
	}
	if(isTest7==false)
	{
		alert("문제7의 답을 선택하세요");
		obj.test7[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest8 = false;
	for(var i=0; i<obj.test8.length; i++)
	{
		if(obj.test8[i].checked==true)
		{
			isTest8 = true;
			break; 
		}
	}
	if(isTest8==false)
	{
		alert("문제8의 답을 선택하세요");
		obj.test8[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest9 = false;
	for(var i=0; i<obj.test9.length; i++)
	{
		if(obj.test9[i].checked==true)
		{
			isTest9 = true;
			break; 
		}
	}
	if(isTest9==false)
	{
		alert("문제9의 답을 선택하세요");
		obj.test9[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest10 = false;
	for(var i=0; i<obj.test10.length; i++)
	{
		if(obj.test10[i].checked==true)
		{
			isTest10 = true;
			break; 
		}
	}
	if(isTest10==false)
	{
		alert("문제10의 답을 선택하세요");
		obj.test10[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest11 = false;
	for(var i=0; i<obj.test11.length; i++)
	{
		if(obj.test11[i].checked==true)
		{
			isTest11 = true;
			break; 
		}
	}
	if(isTest11==false)
	{
		alert("문제11의 답을 선택하세요");
		obj.test11[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest12 = false;
	for(var i=0; i<obj.test12.length; i++)
	{
		if(obj.test12[i].checked==true)
		{
			isTest12 = true;
			break; 
		}
	}
	if(isTest12==false)
	{
		alert("문제12의 답을 선택하세요");
		obj.test12[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest13 = false;
	for(var i=0; i<obj.test13.length; i++)
	{
		if(obj.test13[i].checked==true)
		{
			isTest13 = true;
			break; 
		}
	}
	if(isTest13==false)
	{
		alert("문제13의 답을 선택하세요");
		obj.test13[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest14 = false;
	for(var i=0; i<obj.test14.length; i++)
	{
		if(obj.test14[i].checked==true)
		{
			isTest14 = true;
			break; 
		}
	}
	if(isTest14==false)
	{
		alert("문제14의 답을 선택하세요");
		obj.test14[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest15 = false;
	for(var i=0; i<obj.test15.length; i++)
	{
		if(obj.test15[i].checked==true)
		{
			isTest15 = true;
			break; 
		}
	}
	if(isTest15==false)
	{
		alert("문제15의 답을 선택하세요");
		obj.test15[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest16 = false;
	for(var i=0; i<obj.test16.length; i++)
	{
		if(obj.test16[i].checked==true)
		{
			isTest16 = true;
			break; 
		}
	}
	if(isTest16==false)
	{
		alert("문제16의 답을 선택하세요");
		obj.test16[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest17 = false;
	for(var i=0; i<obj.test17.length; i++)
	{
		if(obj.test17[i].checked==true)
		{
			isTest17 = true;
			break; 
		}
	}
	if(isTest17==false)
	{
		alert("문제17의 답을 선택하세요");
		obj.test17[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest18 = false;
	for(var i=0; i<obj.test18.length; i++)
	{
		if(obj.test18[i].checked==true)
		{
			isTest18 = true;
			break; 
		}
	}
	if(isTest18==false)
	{
		alert("문제18의 답을 선택하세요");
		obj.test18[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest19 = false;
	for(var i=0; i<obj.test19.length; i++)
	{
		if(obj.test19[i].checked==true)
		{
			isTest19 = true;
			break; 
		}
	}
	if(isTest19==false)
	{
		alert("문제19의 답을 선택하세요");
		obj.test19[0].focus();
		return false;
	}
	//////////////////////////////////////////
	var isTest20 = false;
	for(var i=0; i<obj.test20.length; i++)
	{
		if(obj.test20[i].checked==true)
		{
			isTest20 = true;
			break; 
		}
	}
	if(isTest20==false)
	{
		alert("문제20의 답을 선택하세요");
		obj.test20[0].focus();
		return false;
	}
	//////////////////////////////////////////

	return true;
}
</script>

<body>

	<!-- Fixed navbar -->
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<div class="row">
		<div class="container">
			<form action="onlineFormAction" onsubmit="return isValidate(this);">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h1>설 문 조 사</h1>
							<h3>잘 읽고, 물음에 답해주세요.</h3>
							<h3>
								이 문제의 점수로 등급이 매겨집니다.
								<h3>
						</div>
						<div class="panel-body">
							<h4>1. 다음중 고양이과 동물이 아닌것은?</h4>
							<p>
								<label for="test1(1)"><input type="radio" name="test1"
									id="test1(1)" value="0" />삵</label>
							</p>
							<p>
								<label for="test1(2)"><input type="radio" name="test1"
									id="test1(2)" value="0" />치타</label>
							</p>
							<p>
								<label for="test1(3)"><input type="radio" name="test1"
									id="test1(3)" value="5" />곰</label>
							</p>
							<p>
								<label for="test1(4)"><input type="radio" name="test1"
									id="test1(4)" value="0" />퓨마</label>
							</p>

							<hr />

							<h4>2. 다음중 고양이가 만지면 싫어하는 부위는?</h4>
							<p>
								<label for="test2(1)"><input type="radio" name="test2"
									id="test2(1)" value="0" />목 뒷덜미</label>
							</p>
							<p>
								<label for="test2(2)"><input type="radio" name="test2"
									id="test2(2)" value="0" />턱</label>
							</p>
							<p>
								<label for="test2(3)"><input type="radio" name="test2"
									id="test2(3)" value="5" />배</label>
							</p>
							<p>
								<label for="test2(4)"><input type="radio" name="test2"
									id="test2(4)" value="0" />엉덩이</label>
							</p>

							<hr />

							<h4>3. 맛동산이라고 불리우는 것은?</h4>
							<p>
								<label for="test3(1)"><input type="radio" name="test3"
									id="test3(1)" value="0" />고양이발</label>
							</p>
							<p>
								<label for="test3(2)"><input type="radio" name="test3"
									id="test3(2)" value="0" />과자</label>
							</p>
							<p>
								<label for="test3(3)"><input type="radio" name="test3"
									id="test3(3)" value="0" />장난감</label>
							</p>
							<p>
								<label for="test3(4)"><input type="radio" name="test3"
									id="test3(4)" value="5" />고양이변</label>
							</p>

							<hr />

							<h4>4. 고양이가 사냥할때 내는 소리의 용어는?</h4>
							<p>
								<label for="test4(1)"><input type="radio" name="test4"
									id="test4(1)" value="0" />마이어</label>
							</p>
							<p>
								<label for="test4(2)"><input type="radio" name="test4"
									id="test4(2)" value="5" />채터링</label>
							</p>
							<p>
								<label for="test4(3)"><input type="radio" name="test4"
									id="test4(3)" value="0" />포레스트</label>
							</p>
							<p>
								<label for="test4(4)"><input type="radio" name="test4"
									id="test4(4)" value="0" />플랙시블</label>
							</p>

							<hr />

							<h4>5. 고양이가 배변을 보고 묻는 이유는?</h4>
							<p>
								<label for="test5(1)"><input type="radio" name="test5"
									id="test5(1)" value="5" />냄새를 숨기기 위해</label>
							</p>
							<p>
								<label for="test5(2)"><input type="radio" name="test5"
									id="test5(2)" value="0" />청결을 유지하기 위해</label>
							</p>
							<p>
								<label for="test5(3)"><input type="radio" name="test5"
									id="test5(3)" value="0" />일종의 놀이를 위해</label>
							</p>
							<p>
								<label for="test5(4)"><input type="radio" name="test5"
									id="test5(4)" value="0" />거름을 주기 위해</label>
							</p>

							<hr />

							<h4>6. 털이 없는 고양이는?</h4>
							<p>
								<label for="test6(1)"><input type="radio" name="test6"
									id="test6(1)" value="0" />샴고양이</label>
							</p>
							<p>
								<label for="test6(2)"><input type="radio" name="test6"
									id="test6(2)" value="0" />코리안 숏헤어</label>
							</p>
							<p>
								<label for="test6(3)"><input type="radio" name="test6"
									id="test6(3)" value="5" />스핑크스 고양이</label>
							</p>
							<p>
								<label for="test6(4)"><input type="radio" name="test6"
									id="test6(4)" value="0" />터키시 앙고라</label>
							</p>

							<hr />

							<h4>7. 고양이가 좋아하는 물건은?</h4>
							<p>
								<label for="test7(1)"><input type="radio" name="test7"
									id="test7(1)" value="0" />당근</label>
							</p>
							<p>
								<label for="test7(2)"><input type="radio" name="test7"
									id="test7(2)" value="0" />시계</label>
							</p>
							<p>
								<label for="test7(3)"><input type="radio" name="test7"
									id="test7(3)" value="0" />장난감</label>
							</p>
							<p>
								<label for="test7(4)"><input type="radio" name="test7"
									id="test7(4)" value="5" />상자</label>
							</p>

							<hr />

							<h4>8. 고양이가 먹어도 되는 음식은?</h4>
							<p>
								<label for="test8(1)"><input type="radio" name="test8"
									id="test8(1)" value="0" />날생선</label>
							</p>
							<p>
								<label for="test8(2)"><input type="radio" name="test8"
									id="test8(2)" value="0" />우유</label>
							</p>
							<p>
								<label for="test8(3)"><input type="radio" name="test8"
									id="test8(3)" value="0" />치킨</label>
							</p>
							<p>
								<label for="test8(4)"><input type="radio" name="test8"
									id="test8(4)" value="5" />당근</label>
							</p>

							<hr />

							<h4>9. 고양이는 입으로도 냄새를 맡을 수 있다. 이 용어는?</h4>
							<p>
								<label for="test9(1)"><input type="radio" name="test9"
									id="test9(1)" value="5" />플레맨 반응</label>
							</p>
							<p>
								<label for="test9(2)"><input type="radio" name="test9"
									id="test9(2)" value="0" />산화 반응</label>
							</p>
							<p>
								<label for="test9(3)"><input type="radio" name="test9"
									id="test9(3)" value="0" />테라 반응</label>
							</p>
							<p>
								<label for="test9(4)"><input type="radio" name="test9"
									id="test9(4)" value="0" />이상 반응</label>
							</p>

							<hr />

							<h4>10. 고양이는 하루에 몇번 그루밍을 할까?</h4>
							<p>
								<label for="test10(1)"><input type="radio" name="test10"
									id="test10(1)" value="0" />200번이상</label>
							</p>
							<p>
								<label for="test10(2)"><input type="radio" name="test10"
									id="test10(2)" value="0" />400번이상</label>
							</p>
							<p>
								<label for="test10(3)"><input type="radio" name="test10"
									id="test10(3)" value="5" />600번이상</label>
							</p>
							<p>
								<label for="test10(4)"><input type="radio" name="test10"
									id="test10(4)" value="0" />800번이상</label>
							</p>

							<hr />

							<h4>11. 흰색털의 무슨색의 눈을 가진 고양이는 귀가 안좋을까?</h4>
							<p>
								<label for="test11(1)"><input type="radio" name="test11"
									id="test11(1)" value="5" />파란색</label>
							</p>
							<p>
								<label for="test11(2)"><input type="radio" name="test11"
									id="test11(2)" value="0" />갈색</label>
							</p>
							<p>
								<label for="test11(3)"><input type="radio" name="test11"
									id="test11(3)" value="0" />옅은노란색</label>
							</p>
							<p>
								<label for="test11(4)"><input type="radio" name="test11"
									id="test11(4)" value="0" />녹색</label>
							</p>

							<hr />

							<h4>12. 고양이의 마약이라 불리우는것은?</h4>
							<p>
								<label for="test12(1)"><input type="radio" name="test12"
									id="test12(1)" value="0" />비닐봉투</label>
							</p>
							<p>
								<label for="test12(2)"><input type="radio" name="test12"
									id="test12(2)" value="5" />캣닢</label>
							</p>
							<p>
								<label for="test12(3)"><input type="radio" name="test12"
									id="test12(3)" value="0" />대마초</label>
							</p>
							<p>
								<label for="test12(4)"><input type="radio" name="test12"
									id="test12(4)" value="0" />향기나는모래</label>
							</p>

							<hr />

							<h4>13. 고양이가 느끼지 못하는 맛은?</h4>
							<p>
								<label for="test13(1)"><input type="radio" name="test13"
									id="test13(1)" value="5" />단맛</label>
							</p>
							<p>
								<label for="test13(2)"><input type="radio" name="test13"
									id="test13(2)" value="0" />신맛</label>
							</p>
							<p>
								<label for="test13(3)"><input type="radio" name="test13"
									id="test13(3)" value="0" />매운맛</label>
							</p>
							<p>
								<label for="test13(4)"><input type="radio" name="test13"
									id="test13(4)" value="0" />쓴맛</label>
							</p>

							<hr />

							<h4>14. 고양이가 도리도리 행위를 하는 이유는?</h4>
							<p>
								<label for="test14(1)"><input type="radio" name="test14"
									id="test14(1)" value="5" />귀에 이물질이 들어가서</label>
							</p>
							<p>
								<label for="test14(2)"><input type="radio" name="test14"
									id="test14(2)" value="0" />부정적인 반응을 표현</label>
							</p>
							<p>
								<label for="test14(3)"><input type="radio" name="test14"
									id="test14(3)" value="0" />이유 없이 하는 행동</label>
							</p>
							<p>
								<label for="test14(4)"><input type="radio" name="test14"
									id="test14(4)" value="0" />세상이 신기해보여서</label>
							</p>

							<hr />

							<h4>15. 고양이가 주인에게 무언가를 잡아다 주는 이유는?</h4>
							<p>
								<label for="test15(1)"><input type="radio" name="test15"
									id="test15(1)" value="0" />주인이 배고플까봐</label>
							</p>
							<p>
								<label for="test15(2)"><input type="radio" name="test15"
									id="test15(2)" value="5" />보답을 위해</label>
							</p>
							<p>
								<label for="test15(3)"><input type="radio" name="test15"
									id="test15(3)" value="0" />재미를 위해</label>
							</p>
							<p>
								<label for="test15(4)"><input type="radio" name="test15"
									id="test15(4)" value="0" />취미를 위해</label>
							</p>

							<hr />

							<h4>16. 고양이의 하루 평균 수면시간은?</h4>
							<p>
								<label for="test16(1)"><input type="radio" name="test16"
									id="test16(1)" value="0" />10시간</label>
							</p>
							<p>
								<label for="test16(2)"><input type="radio" name="test16"
									id="test16(2)" value="0" />12시간</label>
							</p>
							<p>
								<label for="test16(3)"><input type="radio" name="test16"
									id="test16(3)" value="0" />14시간</label>
							</p>
							<p>
								<label for="test16(4)"><input type="radio" name="test16"
									id="test16(4)" value="5" />16시간</label>
							</p>

							<hr />

							<h4>17. 고양이의 치아의 총 갯수는?</h4>
							<p>
								<label for="test17(1)"><input type="radio" name="test17"
									id="test17(1)" value="0" />28개</label>
							</p>
							<p>
								<label for="test17(2)"><input type="radio" name="test17"
									id="test17(2)" value="0" />30개</label>
							</p>
							<p>
								<label for="test17(3)"><input type="radio" name="test17"
									id="test17(3)" value="5" />32개</label>
							</p>
							<p>
								<label for="test17(4)"><input type="radio" name="test17"
									id="test17(4)" value="0" />34개</label>
							</p>

							<hr />

							<h4>18. 고양이의 체온은?</h4>
							<p>
								<label for="test18(1)"><input type="radio" name="test18"
									id="test18(1)" value="0" />37.5도</label>
							</p>
							<p>
								<label for="test18(2)"><input type="radio" name="test18"
									id="test18(2)" value="0" />38.0도</label>
							</p>
							<p>
								<label for="test18(3)"><input type="radio" name="test18"
									id="test18(3)" value="5" />38.5도</label>
							</p>
							<p>
								<label for="test18(4)"><input type="radio" name="test18"
									id="test18(4)" value="0" />39.0도</label>
							</p>

							<hr />

							<h4>19. 고양이의 비만척도는?</h4>
							<p>
								<label for="test19(1)"><input type="radio" name="test19"
									id="test19(1)" value="0" />뱃살</label>
							</p>
							<p>
								<label for="test19(2)"><input type="radio" name="test19"
									id="test19(2)" value="5" />갈비뼈</label>
							</p>
							<p>
								<label for="test19(3)"><input type="radio" name="test19"
									id="test19(3)" value="0" />다리</label>
							</p>
							<p>
								<label for="test19(4)"><input type="radio" name="test19"
									id="test19(4)" value="0" />목살</label>
							</p>

							<hr />

							<h4>20. 고양이의 척추뼈 갯수는?</h4>
							<p>
								<label for="test20(1)"><input type="radio" name="test20"
									id="test20(1)" value="0" />27개</label>
							</p>
							<p>
								<label for="test20(2)"><input type="radio" name="test20"
									id="test20(2)" value="0" />28개</label>
							</p>
							<p>
								<label for="test20(3)"><input type="radio" name="test20"
									id="test20(3)" value="0" />29개</label>
							</p>
							<p>
								<label for="test20(4)"><input type="radio" name="test20"
									id="test20(4)" value="5" />30개</label>
							</p>



						</div>
						<div class="panel-footer">
							<button type="submit" class="btn btn-info">재출하기</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

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