<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="right">
	Xin chao:
	<%=session.getAttribute("user") %>
</div>
<%@include file = "MenuSs.jsp" %>
<hr>
	Noi dung trang 1;
</body>
</html>