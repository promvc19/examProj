<%@page import="exam.MemberDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	HashMap<String , MemberDTO> res = new HashMap();
	res.put("gwak", new MemberDTO("gwak","1111","곽철용"));
	res.put("goni", new MemberDTO("goni","1111","고니"));
	res.put("gogwang", new MemberDTO("gogwang","1111","고광렬"));
	res.put("hwaran", new MemberDTO("hwaran","1111","화란"));
	res.put("sunjeong", new MemberDTO("sunjeong","1111","순정"));
	
	
	String msg = "로그인 실패";
	String goUrl ="Login.jsp";
	String id = request.getParameter("id");
	/* String pw = request.getParameter("pw"); */
 	if(res.containsKey(id) && request.getParameter("pw").equals(res.get(id).getPw())){
 		msg ="로그인 성공";
 		goUrl="insertForm.jsp";
 	}	
	
 	HttpSession	se = request.getSession();	
		
 	se.setAttribute("data", res.get(id));

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertReg</title>
</head>
<body>
<script>
alert("<%=msg%>");
location.href="<%= goUrl%>";
</script>
</body>
</html>
