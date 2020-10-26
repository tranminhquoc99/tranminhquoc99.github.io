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
	String ms = request.getParameter("ms");
	String ts = request.getParameter("ts");
	String giatam = request.getParameter("gia");
	String ml = request.getParameter("ml");
	if(ms != null){
		cartbo cart;
		//Nếu mua hàng lần đầu tiên
		if(session.getAttribute("cart")==null){
			cart = new cartbo();//Tao giỏ hàng
			session.setAttribute("cart",cart);//Khởi tạo session lưu sách trong phiên giao dich
		}
		cart = (cartbo)session.getAttribute("cart");//Buocws1: Lất session gắn ra biến
		cart.Add_Cart(ms,ts,1,Long.parseLong(giatam),ml);//Bước 2 : Thay đổi điến
		session.setAttribute("cart", cart);//Bước 3: Lưu biến vào lại session
		response.sendRedirect("htgio.jsp");
	}

%>

</body>
</html>