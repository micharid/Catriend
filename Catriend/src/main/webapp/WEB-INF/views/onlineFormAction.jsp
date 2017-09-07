<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int u_grade = 0;

	int test1 = Integer.parseInt(request.getParameter("test1"));
	int test2 = Integer.parseInt(request.getParameter("test2"));
	int test3 = Integer.parseInt(request.getParameter("test3"));
	int test4 = Integer.parseInt(request.getParameter("test4"));
	int test5 = Integer.parseInt(request.getParameter("test5"));
	int test6 = Integer.parseInt(request.getParameter("test6"));
	int test7 = Integer.parseInt(request.getParameter("test7"));
	int test8 = Integer.parseInt(request.getParameter("test8"));
	int test9 = Integer.parseInt(request.getParameter("test9"));
	int test10 = Integer.parseInt(request.getParameter("test10"));
	int test11 = Integer.parseInt(request.getParameter("test11"));
	int test12 = Integer.parseInt(request.getParameter("test12"));
	int test13 = Integer.parseInt(request.getParameter("test13"));
	int test14 = Integer.parseInt(request.getParameter("test14"));
	int test15 = Integer.parseInt(request.getParameter("test15"));
	int test16 = Integer.parseInt(request.getParameter("test16"));
	int test17 = Integer.parseInt(request.getParameter("test17"));
	int test18 = Integer.parseInt(request.getParameter("test18"));
	int test19 = Integer.parseInt(request.getParameter("test19"));
	int test20 = Integer.parseInt(request.getParameter("test20"));
	
	u_grade = u_grade + test1 + test2 + test3 + test4 + test5 + test6 + test7 + test8 + test9 + test10 + test11 + test12 + test13 + test14 + test15 + test16 + test17 + test18 + test19 + test20;
	

	request.setAttribute("u_grade", u_grade);
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("location.href='regist?u_grade="+u_grade+"'");
	script.println("</script>");
%>