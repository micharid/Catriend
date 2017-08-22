<%@page import="catriend.model.CatBoarderDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<CatBoarderDTO> listRows = (List<CatBoarderDTO>)request.getAttribute("listRows");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./resources/common/AFTboard.css"/>
<link rel="stylesheet" href="./resources/common/divstyle.css"/>

<title>후기</title>
</head>
<body>
<div class="photo_recent">
		<div class="inner_g">
			<h3 class="screen_out">최신 포토</h3>
			
<div class="bundle_recent">
<%
if(listRows.size() == 0){
%>
<!-- 등록된 글이 없는경우 노출 -->
<span>등록된 글이 없습니다.</span>
<%} 
else{
%>
<%
	int nextrow=0;
	for(CatBoarderDTO dto : listRows){
		if(nextrow == 0 || nextrow%4 != 0 ){
%>
	<a href="#" class="link_cont">
		<span class="wrap_thumb">
			<img src="./resources/images/Bbs<%=nextrow+1 %>.jpg" class="thumb_g" alt="">
		</span>
		<span class="dimmed_g"></span>
		<strong class="tit_thumb"><%=dto.getCb_title() %></strong>
	</a>
<%
	nextrow++;
	}
	else{
%>
</div>
<div class="bundle_recent">
	<a href="#" class="link_cont">
		<span class="wrap_thumb">
			<img src="./resources/images/Bbs<%=nextrow+1 %>.jpg" class="thumb_g" alt="">
		</span>
		<span class="dimmed_g"></span>
		<strong class="tit_thumb"><%=dto.getCb_title() %></strong>
	</a>
<%
		nextrow++;
		}
	}
}
%>
</div>

	</div>
</div>
	
	<footer>
      <div class="wrapper">
        <div class="row">
          <div class="col-sm-1"><a href="door">HOME</a></div>
          <div class="col-sm-1"><a href="regist">REGIST</a></div>
          <div class="col-sm-1"><a href="login">LOGIN</a></div>
          <div class="col-sm-7 hidden-xs"></div>
          <div class="col-sm-2">&#169; 2017, CAT,Inc.</div>
        </div>
      </div>
    </footer>
</body>
</html>