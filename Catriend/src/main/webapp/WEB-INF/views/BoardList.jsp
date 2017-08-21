<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                  <th>날자</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td>1</td>
                  <td>제목은 제목일뿐</td>
                  <td>17/01/01</td>
               </tr>
               <tr>
                  <td>2</td>
                  <td>오늘은 엄청 더운날씨네요</td>
                  <td>17/07/17</td>
               </tr>
               <tr>
                  <td>3</td>
                  <td>35층 초고층 주상복합 랜드마크</td>
                  <td>17/10/24</td>
               </tr>
               <tr>
                  <td>4</td>
                  <td>레이아웃 잡기가 너무 어려운</td>
                  <td>17/10/24</td>
               </tr>
               <tr>
                  <td>5</td>
                  <td>홍길동의 이름은 홍길동이다</td>
                  <td>17/10/24</td>
               </tr>
               <tr>
                  <td>6</td>
                  <td>얼음의 이름은 왜 얼음일까</td>
                  <td>17/10/24</td>
               </tr>
               <tr>
                  <td>7</td>
                  <td>당근은 주황색이다 주황색은 당근색이다.</td>
                  <td>17/10/24</td>
               </tr>
               <tr>
                  <td>8</td>
                  <td>컴퓨터는 왜 느린걸까? 거북이도 아니고</td>
                  <td>17/10/24</td>
               </tr>
               <tr>
                  <td>9</td>
                  <td>지금시간은 세시삼십구분이다.</td>
                  <td>17/10/24</td>
               </tr>
               <tr>
                  <td>10</td>
                  <td>10번째 tr에 있는 내용은 지금 보이는 내용이다.</td>
                  <td>17/10/24</td>
               </tr>
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

<!-- 로그인 -->
<div class="modal fade" id="myModal" role="dialog">
   <div class="modal-dialog">
      <!-- Modal창의 내용 -->
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <center><h4 class="modal-title">Login</h4></center>
         </div>
         <!-- 폼 전달  -->
         <div class="container-fluid">                           
            <div class="modal-body">
               <form class="form-horizontal" name="loginFrm" method="post" action="LoginProcess.jsp" onsubmit="return loginFrmCheck();">
                  <div class="form-group">
                     <label class="control-label col-sm-2" for="email">ID:</label>
                     <div class="col-sm-10">
                        <input type="text" name="user_id" placeholder="ID를 입력해주세요." class="form-control" />
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="control-label col-sm-2" for="pwd">Password:</label>
                     <div class="col-sm-10">          
                        <input type="password" name="user_pw" placeholder="PW를 입력해주세요." class="form-control" />                 
                     </div>
                  </div>
                  <div class="form-group">        
                     <div class="col-sm-offset-2 col-sm-10">
                        <div class="modal-footer">
                           <div class="checkbox">                                  
                              <button type="submit" class="btn btn-primary">Submit</button>
                              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                           </div>                  
                        </div>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>

</body>
</html>