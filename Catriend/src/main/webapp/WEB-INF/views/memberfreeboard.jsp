<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>자유게시판</title>
    
<style>   
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
body
{
background-color:#222223;
font-family: 'Noto Sans KR', sans-serif;
font-weight: 300;
}
.paychoose2:hover
{
   cursor:pointer;
}
</style>

    <!-- Bootstrap core CSS -->
    <link href="./resources/assets/css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="./resources/assets/css/style.css" rel="stylesheet">
    <link href="./resources/assets/css/font-awesome.min.css" rel="stylesheet">
    <script src="./resources/assets/js/modernizr.js"></script>
    
</head>
  <body>
    <%@ include file ="../../resources/common/top.jsp" %>

   <!-- 파란줄 -->
   <div id="blue">
       <div class="container">
         <div class="row">
            <center><h3>자유게시판</h3></center>
         </div>
       </div>
   </div>

    <!-- 컨텐츠영역 -->
    <div class="row">
      <div class="col-sm-2"></div>
      <div class="col-sm-8" >
      
         <table class="table table-bordered">
            <thead>
               <tr>
                  <th>No</th>
                  <th>제목</th>
                  <th>작성자</th>
                  <th>날자</th>
               </tr>
            </thead>
            <tbody>
               <!-- 반복시작 -->
               <tr>
                  <td>1</td>
                  <td>제목은 제목일뿐</td>
                  <td>나쁜놈</td>
                  <td>17/01/01</td>
               </tr>
               <!-- 반복종료 -->
            </tbody>
         </table>
         <div class="row" style="text-align:center; padding-right:10px;">
            <div class="container-fluid">
               <div class="col-sm-2"></div>
               <div class="col-sm-8" >   
                    <!-- 페이지번호 -->
                    <nav>
                     <ul class="pagination" style="font-color:black;">
                        <li>
                           <a href="#" aria-label="Previous">
                              <span aria-hidden="true">&laquo;</span>
                           </a>
                         </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                           <a href="#" aria-label="Next">
                              <span aria-hidden="true">&raquo;</span>
                           </a>
                        </li>
                     </ul>
                  </nav>
                 </div>
            </div>
            <div class="col-sm-2"></div>
         </div>
      </div>
   </div>

   <!-- 푸터 -->
   <%@ include file ="../../resources/common/footer.jsp" %>

  </body>
</html>