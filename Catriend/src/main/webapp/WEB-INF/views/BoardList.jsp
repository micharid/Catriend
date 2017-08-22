<%@page import="catriend.model.FreeBoarderDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./resources/bootstrap3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="./resources/bootstrap3.3.7/js/bootstrap.min.js"></script>

<title>Review</title>
<style>   
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
body
{
background-color:#E1E1E1;
font-family: 'Noto Sans KR', sans-serif;
font-weight: 300;
}

#signul
{
   color:#FFFFFF;
}
table
{
   border:1px solid #000000;
}
#verticalmenu
{
   border:1px solid #000000;
   width:40%;
   vertical-align:center;
   text-align:center;
   font-color:#000000;
}
.nav-pills
{
   
}
#mainmenu.a
{
   font-size:2.0em;
}
#testtable
{
   border:1px solid #000000;
}
#footerp
{
   color:white;
   padding-top:7px;
}
.pagination>li>a, .pagination>li>span
{
   color : black;
}

</style>
</head>
<body>
<div class="container-fluid">
   
   
   <div class="row">
      <div class="col-sm-2"></div>
      <div class="col-sm-8" >
         <table class="table table-bordered">
            <thead>
               <tr>
                  <th>No</th>
                  <th>제목</th>
                  <th>날짜</th>
                  <th>좋아요</th>
                  <th>작성자</th>
               </tr>
            </thead>
            <tbody>
            <c:choose>
               <c:when test="${empty listRows}">
                  <!-- 등록된 글이 없는경우 노출 -->
                  <tr>
                     <td colspan="5" style="height:100px;">등록된 글이 없습니다.</td>
                  </tr>   
               </c:when>
               <c:otherwise>
                  <c:forEach items="${listRows}" var="row" varStatus="loop">
                     <!-- 등록된 글이 있는경우 노출 -->
                     <tr>
                        <td style="text-align:center;">${totalRecordCount - row.rNum + 1}</td>
                        <td><a href="./view.do?idx=${row.fb_index }&nowPage=${nowPage}">${row.fb_title }</a></td>
                        <td style="text-align:center;">${row.fb_date }</td>
                        <td style="text-align:center;">${row.fb_likecount }</td>
                        <td style="text-align:center;">${row.u_id }</td>
                     </tr>
                  </c:forEach>
               </c:otherwise>
            </c:choose>
            </tbody>
         </table>
         <div class="row" style="text-align:center; padding-right:10px;">
            <div class="container-fluid">
               <div class="col-sm-9" >
                  <!-- 게시판 검색 폼 -->
                    <!-- 게시판검색은 get방식 -->
                    <form action="" class="form-inline text-left" name="searchFrm" 
                    method="get" onsubmit="return searchFrmChk();">
                       <div class="form-group">
                          <select name="" class="form-control">
                             <option value="">제목</option>
                             <option value="">작성자</option>
                             <option value="">내용</option>
                          </select>   
                       </div>
                       <div class="input-group">
                          <input type="text" name="" class="form-control" placeholder="검색어입력"/>
                          <div class="input-group-btn">
                             <button class="btn btn-default" type="submit">
                                <i class="glyphicon glyphicon-search"></i>
                             </button>
                          </div>
                       </div>
                    </form>
               </div>
               <div class="col-sm-3" >
                  <!-- 버튼 -->
                    <div class="row text-right">
                       
                       <button type="button" class="btn btn-warning"
                       onclick="javascript:location.href='ReviewWrite.jsp';">글쓰기</button>
                       
                    </div>
               </div>      
              </div>
              <!-- 페이지 처리 -->
              ${pagingImg}
           </div>
      </div>
      <div class="col-sm-2"></div>
   </div>
   
</div>
</body>
</html>