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

<title>설문조사</title>
<style>	
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
body
{
background-color:#222223;
font-family: 'Noto Sans KR', sans-serif;
font-weight: 300;
}
table
{
	color:white;
}
th
{
	text-align:center;
}
tbody
{
	 text-align:center;
}
.title
{
	text-align:left;
}
</style>
</head>
<body>
<center><h1 style="color:white;">설문조사 폼</h1></center>
<div class="container-fluid">
	<div class="row">
		<div class="container-fluid">
			<div class="col-sm-2"></div>
			<div class="col-sm-8" >
				<table class="table table-bordered">
				<colgroup>
					<col style="width:5%;">
					<col style="width:auto;">
					<col style="width:8%;">
					<col style="width:8%;">
					<col style="width:8%;">
					<col style="width:8%;">
					<col style="width:8%;">
				</colgroup>
					<thead>
					<tr>
						<th>No</th>
						<th style="text-align:left;">설문조사내용</th>
						<th>매우그렇다</th>
						<th>그렇다</th>
						<th>보통</th>
						<th>그렇지않다</th>
						<th>전혀아니다</th>
					</tr>
					</thead>
					
					<tbody>
					<tr>
						<td>1</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="1" value="5"/></td>
						<td><input type="radio" name="1" value="4"/></td>
						<td><input type="radio" name="1" value="3"/></td>
						<td><input type="radio" name="1" value="2"/></td>
						<td><input type="radio" name="1" value="1"/></td>
					</tr>
					<tr>
						<td>2</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="2" value="5"/></td>
						<td><input type="radio" name="2" value="4"/></td>
						<td><input type="radio" name="2" value="3"/></td>
						<td><input type="radio" name="2" value="2"/></td>
						<td><input type="radio" name="2" value="1"/></td>
					</tr>
					<tr>
						<td>3</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="3" value="5"/></td>
						<td><input type="radio" name="3" value="4"/></td>
						<td><input type="radio" name="3" value="3"/></td>
						<td><input type="radio" name="3" value="2"/></td>
						<td><input type="radio" name="3" value="1"/></td>
					</tr>
					<tr>
						<td>4</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="4" value="5"/></td>
						<td><input type="radio" name="4" value="4"/></td>
						<td><input type="radio" name="4" value="3"/></td>
						<td><input type="radio" name="4" value="2"/></td>
						<td><input type="radio" name="4" value="1"/></td>
					</tr>
					<tr>
						<td>5</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="5" value="5"/></td>
						<td><input type="radio" name="5" value="4"/></td>
						<td><input type="radio" name="5" value="3"/></td>
						<td><input type="radio" name="5" value="2"/></td>
						<td><input type="radio" name="5" value="1"/></td>
					</tr>
					<tr>
						<td>6</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="6" value="5"/></td>
						<td><input type="radio" name="6" value="4"/></td>
						<td><input type="radio" name="6" value="3"/></td>
						<td><input type="radio" name="6" value="2"/></td>
						<td><input type="radio" name="6" value="1"/></td>
					</tr>
					<tr>
						<td>7</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="7" value="5"/></td>
						<td><input type="radio" name="7" value="4"/></td>
						<td><input type="radio" name="7" value="3"/></td>
						<td><input type="radio" name="7" value="2"/></td>
						<td><input type="radio" name="7" value="1"/></td>
					</tr>
					<tr>
						<td>8</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="8" value="5"/></td>
						<td><input type="radio" name="8" value="4"/></td>
						<td><input type="radio" name="8" value="3"/></td>
						<td><input type="radio" name="8" value="2"/></td>
						<td><input type="radio" name="8" value="1"/></td>
					</tr>
					<tr>
						<td>9</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="9" value="5"/></td>
						<td><input type="radio" name="9" value="4"/></td>
						<td><input type="radio" name="9" value="3"/></td>
						<td><input type="radio" name="9" value="2"/></td>
						<td><input type="radio" name="9" value="1"/></td>
					</tr>
					<tr>
						<td>10</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="10" value="5"/></td>
						<td><input type="radio" name="10" value="4"/></td>
						<td><input type="radio" name="10" value="3"/></td>
						<td><input type="radio" name="10" value="2"/></td>
						<td><input type="radio" name="10" value="1"/></td>
					</tr>
					<tr>
						<td>11</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="11" value="5"/></td>
						<td><input type="radio" name="11" value="4"/></td>
						<td><input type="radio" name="11" value="3"/></td>
						<td><input type="radio" name="11" value="2"/></td>
						<td><input type="radio" name="11" value="1"/></td>
					</tr>
					<tr>
						<td>12</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="12" value="5"/></td>
						<td><input type="radio" name="12" value="4"/></td>
						<td><input type="radio" name="12" value="3"/></td>
						<td><input type="radio" name="12" value="2"/></td>
						<td><input type="radio" name="12" value="1"/></td>
					</tr>
					<tr>
						<td>13</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="13" value="5"/></td>
						<td><input type="radio" name="13" value="4"/></td>
						<td><input type="radio" name="13" value="3"/></td>
						<td><input type="radio" name="13" value="2"/></td>
						<td><input type="radio" name="13" value="1"/></td>
					</tr>
					<tr>
						<td>14</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="14" value="5"/></td>
						<td><input type="radio" name="14" value="4"/></td>
						<td><input type="radio" name="14" value="3"/></td>
						<td><input type="radio" name="14" value="2"/></td>
						<td><input type="radio" name="14" value="1"/></td>
					</tr>
					<tr>
						<td>15</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="15" value="5"/></td>
						<td><input type="radio" name="15" value="4"/></td>
						<td><input type="radio" name="15" value="3"/></td>
						<td><input type="radio" name="15" value="2"/></td>
						<td><input type="radio" name="15" value="1"/></td>
					</tr>
					<tr>
						<td>16</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="16" value="5"/></td>
						<td><input type="radio" name="16" value="4"/></td>
						<td><input type="radio" name="16" value="3"/></td>
						<td><input type="radio" name="16" value="2"/></td>
						<td><input type="radio" name="16" value="1"/></td>
					</tr>
					<tr>
						<td>17</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="17" value="5"/></td>
						<td><input type="radio" name="17" value="4"/></td>
						<td><input type="radio" name="17" value="3"/></td>
						<td><input type="radio" name="17" value="2"/></td>
						<td><input type="radio" name="17" value="1"/></td>
					</tr>
					<tr>
						<td>18</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="18" value="5"/></td>
						<td><input type="radio" name="18" value="4"/></td>
						<td><input type="radio" name="18" value="3"/></td>
						<td><input type="radio" name="18" value="2"/></td>
						<td><input type="radio" name="18" value="1"/></td>
					</tr>
					<tr>
						<td>19</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="19" value="5"/></td>
						<td><input type="radio" name="19" value="4"/></td>
						<td><input type="radio" name="19" value="3"/></td>
						<td><input type="radio" name="19" value="2"/></td>
						<td><input type="radio" name="19" value="1"/></td>
					</tr>
					<tr>
						<td>20</td>
						<td class="title">설문조사내용</td>
						<td><input type="radio" name="20" value="5"/></td>
						<td><input type="radio" name="20" value="4"/></td>
						<td><input type="radio" name="20" value="3"/></td>
						<td><input type="radio" name="20" value="2"/></td>
						<td><input type="radio" name="20" value="1"/></td>
					</tr>
					
					
					</tbody>
				</table>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
</div>

</body>
</html>