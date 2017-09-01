<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"
%>
<% 
int resultSet = Integer.parseInt(request.getAttribute("resultSet").toString()); 
out.print(resultSet);
%>