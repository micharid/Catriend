<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>KapukAlas - Multipurpose template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
</head>



<body>

   <!-- Fixed navbar -->
   <!-- top s -->
   <%@ include file="../../resources/common/layOutTop.jsp"%>
   <!-- top e -->


   <!-- *****************************************************************************************************************
    CONTACT WRAP
    ***************************************************************************************************************** -->
   <div class="row">
      <div class="container">
         <form action="onlineFormAction">
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
                        <input type="radio" name="test1" value="0" />삵
                     </p>
                     <p>
                        <input type="radio" name="test1" value="0" />치타
                     </p>
                     <p>
                        <input type="radio" name="test1" value="5" />곰
                     </p>
                     <p>
                        <input type="radio" name="test1" value="0" />퓨마
                     </p>

                     <hr />

                     <h4>2. 다음중 고양이가 만지면 싫어하는 부위는?</h4>
                     <p>
                        <input type="radio" name="test2" value="0" />목 뒷덜미
                     </p>
                     <p>
                        <input type="radio" name="test2" value="0" />턱
                     </p>
                     <p>
                        <input type="radio" name="test2" value="5" />배
                     </p>
                     <p>
                        <input type="radio" name="test2" value="0" />엉덩이
                     </p>
                     
                     <hr />

                     <h4>3. 맛동산이라고 불리우는 것은?</h4>
                     <p>
                        <input type="radio" name="test" value="0" />고양이발
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />과자
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />장난감
                     </p>
                     <p>
                        <input type="radio" name="test" value="5" />고양이변
                     </p>
                     
                     <hr />

                     <h4>4. 고양이가 사냥할때 내는 소리의 용어는?</h4>
                     <p>
                        <input type="radio" name="test" value="0" />마이어
                     </p>
                     <p>
                        <input type="radio" name="test" value="5" />채터링
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />포레스트
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />플랙시블
                     </p>
                     
                     <hr />

                     <h4>5. 고양이가 배변을 보고 묻는 이유는?</h4>
                     <p>
                        <input type="radio" name="test" value="5" />냄새를 숨기기 위해
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />청결을 유지하기 위해
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />일종의 놀이를 위해
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />거름을 주기 위해
                     </p>
                     
                     <hr />

                     <h4>6. 털이 없는 고양이는?</h4>
                     <p>
                        <input type="radio" name="test" value="0" />샴고양이
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />코리안 숏헤어
                     </p>
                     <p>
                        <input type="radio" name="test" value="5" />스핑크스 고양이
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />터키시 앙고라
                     </p>
                     
                     <hr />

                     <h4>7. 고양이가 좋아하는 물건은?</h4>
                     <p>
                        <input type="radio" name="test" value="0" />당근
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />시계
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />장난감
                     </p>
                     <p>
                        <input type="radio" name="test" value="5" />상자
                     </p>
                     
                     <hr />

                     <h4>8. 고양이가 먹어도 되는 음식은?</h4>
                     <p>
                        <input type="radio" name="test" value="0" />날생선
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />우유
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />치킨
                     </p>
                     <p>
                        <input type="radio" name="test" value="5" />당근
                     </p>
                     
                     <hr />

                     <h4>9. 고양이는 입으로도 냄새를 맡을 수 있다. 이 용어는?</h4>
                     <p>
                        <input type="radio" name="test" value="5" />플레맨 반응
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />산화 반응
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />테라 반응
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />이상 반응
                     </p>
                     
                     <hr />

                     <h4>10. 고양이는 하루에 몇번 그루밍을 할까?</h4>
                     <p>
                        <input type="radio" name="test" value="0" />200번이상
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />400번이상
                     </p>
                     <p>
                        <input type="radio" name="test" value="5" />600번이상
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />800번이상
                     </p>
                     
                     <hr />

                     <h4>11. 흰색털의 무슨색의 눈을 가진 고양이는 귀가 안좋을까?</h4>
                     <p>
                        <input type="radio" name="test" value="5" />파란색
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />갈색
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />옅은노란색
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />녹색
                     </p>
                     
                     <hr />

                     <h4>12. 고양이의 마약이라 불리우는것은?</h4>
                     <p>
                        <input type="radio" name="test" value="0" />비닐봉투
                     </p>
                     <p>
                        <input type="radio" name="test" value="5" />캣닢
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />대마초
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />향기나는모래
                     </p>
                     
                     <hr />

                     <h4>13. 고양이가 느끼지 못하는 맛은?</h4>
                     <p>
                        <input type="radio" name="test" value="5" />단맛
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />신맛
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />매운맛
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />쓴맛
                     </p>
                     
                     <hr />

                     <h4>14. 고양이가 도리도리 행위를 하는 이유는?</h4>
                     <p>
                        <input type="radio" name="test" value="5" />귀에 이물질이 들어가서
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />부정적인 반응을 표현
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />이유 없이 하는 행동
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />세상이 신기해보여서
                     </p>
                     
                     <hr />

                     <h4>15. 고양이가 주인에게 무언가를 잡아다 주는 이유는?</h4>
                     <p>
                        <input type="radio" name="test" value="0" />주인이 배고플까봐
                     </p>
                     <p>
                        <input type="radio" name="test" value="5" />보답을 위해
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />재미를 위해
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />취미를 위해
                     </p>
                     
                     <hr />

                     <h4>16. 고양이의 하루 평균 수면시간은?</h4>
                     <p>
                        <input type="radio" name="test" value="0" />10시간
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />12시간
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />14시간
                     </p>
                     <p>
                        <input type="radio" name="test" value="5" />16시간
                     </p>
                     
                     <hr />

                     <h4>17. 고양이의 치아의 총 갯수는?</h4>
                     <p>
                        <input type="radio" name="test" value="0" />28개
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />30개
                     </p>
                     <p>
                        <input type="radio" name="test" value="5" />32개
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />34개
                     </p>
                     
                     <hr />

                     <h4>18. 고양이의 체온은?</h4>
                     <p>
                        <input type="radio" name="test" value="0" />37.5도
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />38.0도
                     </p>
                     <p>
                        <input type="radio" name="test" value="5" />38.5도
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />39.0도
                     </p>
                     
                     <hr />

                     <h4>19. 고양이의 비만척도는?</h4>
                     <p>
                        <input type="radio" name="test" value="0" />뱃살
                     </p>
                     <p>
                        <input type="radio" name="test" value="5" />갈비뼈
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />다리
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />목살
                     </p>
                     
                     <hr />

                     <h4>20. 고양이의 척추뼈 갯수는?</h4>
                     <p>
                        <input type="radio" name="test" value="0" />27개
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />28개
                     </p>
                     <p>
                        <input type="radio" name="test" value="0" />29개
                     </p>
                     <p>
                        <input type="radio" name="test" value="5" />30개
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

   <!-- *****************************************************************************************************************
    FOOTER
    ***************************************************************************************************************** -->

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