<%@page import="exam.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InsertForm</title>
<%
	MemberDTO dto = (MemberDTO)session.getAttribute("data");

	
%>
<% 
	String msg = dto.getName()+"안녕히가세요";
	session.setAttribute("msg", msg);
	session.setAttribute("data", dto.getId());
%>
</head>
<body>
<form action="alert.jsp">
<%= dto.getName()  %>님 안녕하셔유
	<table border="">
		<tr>
			<td>id</td><td><%= dto.getId()%></td>
		</tr>
		
		<tr>
			<td>name</td><td><%= dto.getName()%></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="로그아웃" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>