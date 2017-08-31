<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section id="sponsor" style="margin-top: 100px;">
	<div class="container">
		<div class="row"></div>
		<h3 style="color: #fff">오늘의 명언</h3>
		<p>매일 행복 할 수는 없어.</p>
		<p>하지만 행복한 일은 매일 있어</p>
		<p>-&nbsp;&nbsp;곰돌이푸&nbsp;&nbsp;-</p>

		<%
			if (request.getAttribute("pageGroup") == "about" || request.getAttribute("pageGroup") == "main") {
		%>
		<center>
			<div class="skroler">
				<a href="#top"><span class="glyphicon glyphicon-chevron-up"
					style="color: #ffc35b;"></span></a>
			</div>
		</center>
		<%
			}
		%>
	</div>
</section>

<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<h4>Cat`riend</h4>
				<p>우리 캣 랜드에서는 외롭고, 일상에 지친 현대인과</p>
				<p>반려동물에 대한 접근성이
				부족해 분양을 받기가 고민되는 사람들에게</p>
				<p>고양이와 친구가 될 수 있는 기회를 제공하고있습니다.</p>
			</div>
			<div class="col-md-3">
				<h4>Our location</h4>
				<div class="row">
					<div class="col-md-1">
						<span class="glyphicon glyphicon-map-marker"></span>
					</div>
					<div class="col-md-10">대한민국 고양시 냐옹구 캣동 캣랜드건물 1004호</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-1">
						<span class="glyphicon glyphicon-envelope"></span>
					</div>
					<div class="col-md-10">catRiend@Corea.com</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-1">
						<span class="glyphicon glyphicon-earphone"></span>
					</div>
					<div class="col-md-10">02-1004-1004</div>
				</div>
			</div>
			<div class="col-md-3">
				<h4>Latest blogs</h4>
				<div class="row">
					<div class="col-md-1">
						<span class="glyphicon glyphicon-pencil"></span>
					</div>
					<div class="col-md-10">
						자격 조건
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-1">
						<span class="glyphicon glyphicon-pencil"></span>
					</div>
					<div class="col-md-10">
						주의 사항
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<h4>더 자세히..</h4>
					<a href="about" class="btn btn-warning" role="button">후기 게시판
						바로가기</a>
			</div>
		</div>
	</div>
</footer>

<footer id="copyright">
	<p>Copright by @andreyyann 2014, All right reserved.</p>
</footer>