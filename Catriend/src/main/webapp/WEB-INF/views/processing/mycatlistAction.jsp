<%@page import="catriend.model.UsersDTO"%>
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

	int i = 0;
	for (String str : keywords) {
		paramMap.put("str" + i, str);
		i++;
	}
	UsersDTO user = (UsersDTO)session.getAttribute("loginUser");
	
	paramMap.put("u_grade", user.getU_grade());
	paramMap.put("keyCount", i);

	//DAO 연결
	CatsDAO dao = new CatsDAO();

	//DAO에서 list메소드로 목록가져오기
	List<CatsDTO> listRows = dao.selectAllKeyword(paramMap);
%>
<%
		if (listRows.size() == 0) {
	%>
<div class="row" align="center">
	<br /> <img src="./resources/assets/img/notsign.png" alt="Not" /><span
		style="font-size: 1.3em;">등록된 글이 없습니다.</span> <br />
</div>
<%
		} else {
	%>

<section id="portfolio">
	<div class="container">
		<div class="row">
			<%
						for (CatsDTO dto : listRows) {
					%>
			<div class="col-md-4">
				<a href="catProfile?c_index=<%=dto.getC_index()%>">
					<div class="thumbnail">
						<div class="caption">
							<br />
							<br />
							<p id="catname" style="font-size: 1.8em;"><%=dto.getC_name()%></p>
							<p><%=dto.getC_gender()%></p>
							<p><%=dto.getC_keyword()%></p>
						</div>
						<img src="./resources/assets/img/catP/<%=dto.getC_index()%>.jpg"
							width="100%" height="100%">
					</div>
				</a>
			</div>
			<%
					}
						}
				%>
		</div>
	</div>
</section>

<script src="./resources/KapukAlas/js/jquery.js"></script>
	<script src="./resources/KapukAlas/js/bootstrap.min.js"></script>
<!-- bottom s -->
	<%@ include file="../../../resources/common/menuScript.jsp"%>
<!-- bottom e -->
