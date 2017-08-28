<%@page import="catriend.model.UsersDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UsersDTO login = session.getAttribute("loginUser") != null ? (UsersDTO)session.getAttribute("loginUser") : null;
%>
<!-- Fixed navbar -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="mainPage">Cat`riend</a>
		</div>
		<div class="navbar-collapse collapse navbar-right">
			<ul class="nav navbar-nav">
				<li class="active"><a href="mainPage">HOME</a></li>
				<li><a href="about">ABOUT</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">게시판<b class="caret"></b></a>
					<ul class="dropdown-menu">


						<li><a href="freeBoardList ">자유게시판</a></li>
						<li><a href="catBoardList ">후기게시판</a></li>


					</ul>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">고양이들<b class="caret"></b></a>
					<ul class="dropdown-menu">


						<li><a href="catlist ">고양이들</a></li>
						<li><a href="catlist ">고양이들</a></li>


					</ul> 
				<li><a href="contact">CONTACT</a></li>	
				<%
				if(login != null){
				%>
				<li><a href="myPage">마이페이지</a></li>
				<li><a href="logoutAction">로그아웃</a></li>
				<%}
				else{
				%>
				<li><a href="loginPage">로그인</a></li>
				<li><a href="regist">회원가입</a></li>
				<%} %>
				</li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</div>
