<%@page import="java.util.HashMap"%>
<%@page import="catriend.model.CatsDTO"%>
<%@page import="java.util.List"%>
<%@page import="catriend.model.CatsDAO"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//한글처리
request.setCharacterEncoding("UTF-8");
String[] keywords = request.getParameter("msg").split("_");

Map<String, Object> paramMap = new HashMap<String, Object>();

int i=0;
for(String str : keywords){
	paramMap.put("str"+i, str);
	i++;
}

paramMap.put("keyCount", i);

//DAO 연결
CatsDAO dao = new CatsDAO();

//총수
int totalRecordCount = dao.getTotalCatsCount(paramMap);

//DAO에서 list메소드로 목록가져오기
List<CatsDTO> listRows = dao.selectAllKeyword(paramMap);

%>
<div class="row">
	<div class="container-fluid">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<div class="row">
				<%
								if (listRows.size() == 0) {
							%>
				<!-- 등록된 글이 없는경우 노출 -->
				<span>등록된 글이 없습니다.</span>
				<%
								} else {
							%>
				<%
								int nextrow = 0;
									for (CatsDTO dto : listRows) {
										if (nextrow == 0 || nextrow % 3 != 0) {
							%>
				<div class="col-md-4">
					<div class="thumbnail">
						<a
							href="<%=request.getContextPath() %>/membercatview?c_index=<%=dto.getC_index()%>">
							<img src="./resources/images/<%=dto.getC_index()%>.jpg"
							id="image">
							<div class="caption">
								<h3 align="center"><%=dto.getC_name()%></h3>
								<center>
									<p>
										<%=dto.getC_keyword()%>
									</p>
								</center>
							</div>
						</a>
					</div>
				</div>
				<%
								nextrow++;
										} else {
							%>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
</div>
<div class="row">
	<div class="container-fluid">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<a
							href="<%=request.getContextPath() %>/membercatview?c_index=<%=dto.getC_index()%>">
							<img src="./resources/images/<%=dto.getC_index()%>.jpg"
							id="image">
							<div class="caption">
								<h3 align="center"><%=dto.getC_name()%></h3>
								<center>
									<p>
										<%=dto.getC_keyword()%>
									</p>
								</center>
							</div>
						</a>
					</div>
				</div>
				<%
								nextrow++;
										}
									}
								}
							%>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
</div>