<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>소개</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="./resources/KapukAlas/css/bootstrap.css" rel="stylesheet">
<link href="./resources/KapukAlas/css/style.css" rel="stylesheet">
</head>
</head>
<style>
#blue {
	background: #428BCA;
	margin-bottom: 20px;
}

h2, h3, h4, h5, h6 {
	font-family: 'Raleway', sans-serif;
	font-weight: 900;
}

.col-lg-6 {
	margin-top: 30px;
}

.ctitle {
	color: #00b3fe;
	font-weight: 700;
	margin-bottom: 15px;
}

html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

#map {
	height: 500px;
	width: 100%;
}
</style>

<body>
	<!-- top s -->
	<%@ include file="../../resources/common/layOutTop.jsp"%>
	<!-- top e -->

	<section id="about">
		<div class="container mtb">
			<!-- bottom s -->
			<%@ include file="../../resources/common/sectionAd.jsp"%>
			<!-- bottom e -->


			<div class="row">

				<center>
					<h3 class="mb" id="blue" style="color: #fff; padding: 10px;">More
						About Our Agency</h3>
				</center>
				<div class="col-lg-6">
					<img class="img-responsive"
						src="./resources/assets/img/OfficeCat.jpg" alt=""
						style="width: 100%; height: 100%;">
				</div>

				<div class="col-lg-6 text" style="margin-top: 70px;">

					<p>이곳은 고양이와 사람들이 친구가 될 수 있도록 기회를 제공해주는 곳입니다.</p>
					<p>이곳에서는 고양이를 빌려주는 일을 하고 있습니다.일상생활의 스트레스와 외로움을 고양이로 잊어보는게 어떠세요?</p>
					<p>저희 캣랜드에서는 지치고 , 외로운 분들을 기달리고 있습니다.</p>
					<p>캣랜드에 대한 어떠한 의견도 환영합니다.주저 없이 저희에게 연락 주세요.</p>



					<p>This is where cats and people get a chance to be friends.</p>
					<p>I am lending a cat here. How about forgetting the stress and
						loneliness of everyday life as a cat?</p>
					<p>At Cat`riend we are waiting for tired, lonely people.</p>
					<p>Any comments on Cat`riend are welcome. Please do not
						hesitate to contact us.</p>



					<p>
						<a href="contact" class="btn btn-info">Contact Us</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- *****************************************************************************************************************
    TEEAM MEMBERS
    ***************************************************************************************************************** -->
	<section id="contact">
		<div class="container mtb">
			<div class="row centered">
				<center>
					<h3 class="mb" id="blue"
						style="margin-bottom: 20px; color: #fff; padding: 10px;">OUR
						TEAM</h3>
				</center>

				<div class="col-lg-3 col-md-3 col-sm-3">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/teams/team1.jpg" alt="">


					</div>
					<!-- he wrap -->
					<h4>Kim ByungHoon</h4>
					<h5 class="ctitle">CEO</h5>
					<p>
						안녕하세요? <br />캣렌드를 운영하고 있는 김병훈 입니다. 잘 부탁드립니다^^.
					</p>
					<div class="hline"></div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-3">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/teams/team2.jpg" alt="">

						<!-- he view -->
					</div>
					<!-- he wrap -->
					<h4>Kim JaeMin</h4>
					<h5 class="ctitle">CEO</h5>
					<p>
						안녕하세요? <br />캣렌드를 운영하고 있는 김재민 입니다. 잘 부탁드립니다^^.
					</p>
					<div class="hline"></div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-3">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/teams/team3.jpg" alt="">

					</div>
					<h4>Kim JinSoo</h4>
					<h5 class="ctitle">CEO</h5>
					<p>
						안녕하세요? <br />캣렌드를 운영하고 있는 김진수 입니다. 잘 부탁드립니다^^.
					</p>
					<div class="hline"></div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-3">
					<div class="he-wrap tpl6">
						<img src="./resources/assets/img/teams/team4.jpg" alt="">

					</div>
					<h4>Park choHee</h4>
					<h5 class="ctitle">CEO</h5>
					<p>
						안녕하세요? <br />캣렌드를 운영하고 있는 박초희 입니다. 잘 부탁드립니다^^.
					</p>
					<div class="hline"></div>
				</div>

			</div>
		</div>
	</section>

	<div class="container mtb">
		<div class="row centered">
			<center>
				<h3 class="mb" id="blue"
					style="margin-bottom: 20px; color: #fff; padding: 10px;">찾아
					오시는 길</h3>
			</center>
			<div class="row centerd">

				<div id="map" style="margin-left: 14px; width: 97.5%"></div>
				<script>
            function initMap() {
              var catriend = {lat: 37.478684, lng: 126.878650};
              var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 16,
                center: catriend
              });
              var marker = new google.maps.Marker({
                position: catriend,
                map: map
              });
            }
          </script>
				<script async defer
					src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBIdJx20DV8nrMvmKs-K2V1bTooztdK4bI&callback=initMap">
          </script>
				<br />
				<div align="center">
					<span style="font-size: 1.7em;">가산디지털역 5,6번 출구에서 안양천 방향 보도
						5분</span>
				</div>
			</div>
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