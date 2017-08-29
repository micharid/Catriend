<%@page import="catriend.model.UsersDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <div id="nav">
    <nav class="navbar navbar-default navbar-static affix-top" role="navigation">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#top">Cat`riend</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
        </ul>
        <ul class="nav navbar-nav navbar-right">
         
          <li><a href="about2">About us</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">고양이들<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#">고양이</a></li>
              <li><a href="#">나에게 맞는 고양이</a></li>
              
            </ul>
          </li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">게시판<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#">자유 게시판</a></li>
              <li><a href="#">후기 게시판</a></li>
              
            </ul>
          </li>
          <li><a href="#">Q & A</a></li>
          <li><a href="login2">로그인</a></li>
          <li><a href="registRe">회원가입</a></li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div>
    </nav>
  </div>
