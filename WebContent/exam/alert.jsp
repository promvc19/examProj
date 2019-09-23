<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
alert("<%= session.getAttribute("msg")%>");
location.href="Login.jsp"
</script>

<%

	session.removeAttribute("data");
%>
</head>
<body>

</body>
</html>