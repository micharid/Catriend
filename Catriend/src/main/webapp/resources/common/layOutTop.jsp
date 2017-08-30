<%@page import="catriend.model.UsersDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            <a class="navbar-brand" href="mainPage">Cat`riend</a>
         </div>
         <!-- Collect the nav links, forms, and other content for toggling -->
         <div class="collapse navbar-collapse"
            id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
            </ul>
            <ul class="nav navbar-nav navbar-right">
               
               <%if(request.getAttribute("pageGroup") == "about"){ %><li class="active"><%}else{%><li><%}%>
               <a href="about">소개</a></li>
               <%if(request.getAttribute("pageGroup") == "board"){ %><li class="dropdown active"><%}else{%><li class="dropdown"><%}%>
               <a href="#" class="dropdown-toggle"
                  data-toggle="dropdown">게시판<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li><a href="freeBoardList ">자유게시판</a></li>
                     <li><a href="catBoardList ">후기게시판</a></li>
                  </ul> <%
                     if(login != null){
                  %>
               <%if(request.getAttribute("pageGroup") == "cats"){ %><li class="dropdown active"><%}else{%><li class="dropdown"><%}%>
               <a href="#" class="dropdown-toggle"
                  data-toggle="dropdown">고양이들<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li><a href="catlist ">고양이들</a></li>
                     <li><a href="mycatlist ">나에게맞는고양이들</a></li>
                  </ul> <%}
               else{%>
               <%if(request.getAttribute("pageGroup") == "cats"){ %><li class="active"><%}else{%><li><%}%>
               <a href="catlist ">고양이들</a></li>
               <%} %>
               <%if(request.getAttribute("pageGroup") == "qna"){ %><li class="active"><%}else{%><li><%}%>
               <a href="qna">Q & A</a></li>
               <%
            if(login != null){
            %>
               <%if(request.getAttribute("pageGroup") == "myInfo"){ %><li class="active"><%}else{%><li><%}%>
               <a href="myPageindex">마이페이지</a></li>
               <li><a href="logoutAction">로그아웃</a></li>
               <%}
            else{
            %>
               <%if(request.getAttribute("pageGroup") == "login"){ %><li class="active"><%}else{%><li><%}%>
               <a href="loginPage">로그인</a></li>
               <%if(request.getAttribute("pageGroup") == "regist"){ %><li class="active"><%}else{%><li><%}%>
               <a href="onlineForm">회원가입</a></li>
               <%} %>
            </ul>
         </div>
      </div>
   </nav>
</div>