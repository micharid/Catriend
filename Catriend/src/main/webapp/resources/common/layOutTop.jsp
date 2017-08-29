<%@page import="catriend.model.UsersDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UsersDTO login = session.getAttribute("loginUser") != null ? (UsersDTO)session.getAttribute("loginUser") : null;
%>
<section id="top">
	<header>
		<div class="container">
			<center>
				<h1>Welcome to Cat`riend</h1>
				<h3>ed non massa quis nisl tincidunt posuere sit amet vitae
					sem.</h3>

				<div class="skroler">
					<a href="#about"><span class="glyphicon glyphicon-chevron-down"
						style="color: #ffc35b;"></span></a>
				</div>
			</center>
		</div>
	</header>
</section>

<div id="nav">
	<nav class="navbar navbar-default navbar-static affix-top"
		role="navigation">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#top">Cat`riend</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="mainPage">홈</a></li>
					<li><a href="about">소개</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">게시판<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="freeBoardList ">자유게시판</a></li>
							<li><a href="catBoardList ">후기게시판</a></li>
						</ul> <%
							if(login != null){
						%>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">고양이들<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="catlist ">고양이들</a></li>
							<li><a href="mycatlist ">나에게맞는고양이들</a></li>
						</ul> <%}
					else{%>
					<li><a href="catlist ">고양이들</a></li>
					<%} %>
					<li><a href="qna">Q & A</a></li>
					<%
				if(login != null){
				%>
					<li><a href="myPageindex">마이페이지</a></li>
					<li><a href="logoutAction">로그아웃</a></li>
					<%}
				else{
				%>
					<li><a href="loginPage">로그인</a></li>
					<li><a href="onlineForm">회원가입</a></li>
					<%} %>
				</ul>
			</div>
		</div>
	</nav>
</div>
