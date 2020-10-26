<%@page import="bo.cartbo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	cartbo cart = (cartbo)session.getAttribute("cart");
	cart.Delete_Cart(request.getParameter("ms"));
	session.setAttribute("cart", cart);
	response.sendRedirect("htgio.jsp");
%>
</body>
</html>