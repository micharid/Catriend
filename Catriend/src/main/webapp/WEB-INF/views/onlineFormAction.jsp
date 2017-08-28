<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int u_grade = 0;

	int test1 = Integer.parseInt(request.getParameter("test1"));
	int test2 = Integer.parseInt(request.getParameter("test2"));
	
	u_grade = u_grade + test1 + test2;
	

	request.setAttribute("u_grade", u_grade);
	System.out.println("온라인폼엑션 u_grade : "+u_grade);
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("location.href='regist?u_grade="+u_grade+"'");
	script.println("</script>");
%>