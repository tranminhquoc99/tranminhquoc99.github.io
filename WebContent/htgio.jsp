
<%@page import="bean.cartbean"%>
<%@page import="bo.cartbo"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@page import="bean.sachbean"%>
<%@page import="dao.sachdao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@page import="bo.cartbo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body> 
 <%	
	//layloai
	loaibo lbo = new loaibo();
	ArrayList<loaibean> dsloai = lbo.getloai();
	int nloai = dsloai.size();
	cartbo cart1 = (cartbo)session.getAttribute("cart");
	int soluongcart = 0;
	if(cart1 != null)
		soluongcart = cart1.Size();
		
		
	
%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="TrangChu.jsp">Trang Chủ</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="htgio.jsp">Giỏ Hàng(<%=soluongcart %>)</a></li>
      <li><a href="#">Lịch Sử Mua Hàng</a></li>
    </ul>
  </div>
</nav>
<table width="1580" align = "center" border="0.1">
		<tr>
			<td width="300" valign="top">
				<table>
					<%for(loaibean loai:dsloai){ %>
					<tr>
						<td>
							<a href="TrangChu.jsp?ml=<%=loai.getMaloai()%>"><%=loai.getTenloai() %></a>
						</td>
					</tr>
					<%}%>
				</table>
			</td>
			<td>	
				<table border="1" style="width: 100%">
				<h1> Giỏ Hàng </h1>
					<%
					cartbo cart = (cartbo)session.getAttribute("cart");
					if(cart !=null){
						for(cartbean g: cart.ds){%>
						<tr>
							<td><%=g.getMaSach() %></td>
							<td><%=g.getTensach() %></td>
							<td><%=g.getGia() %></td>
							<td><%=g.getSoLuong() %></td>
							<td><%=g.getThanhTien() %></td>
							<td><a href="DeleteCart?ms=<%=g.getMaSach()%>">Delete</a></td>
							
						</tr>	
						<%}%>
						<tr align="right">
							<td colspan="5">
								<h4>Total: <%=cart.Total_Cart() %> VNĐ</h4>
							</td>
						</tr>
					<%}%>	
					</table>
			</td>
			<td width="30" valign="top">
			 <table >
				<form action="TrangChu.jsp" method="post" >
					<input class="form-control" type="text" placeholder="Search" aria-label="Search">
					<input type="submit" name="timkiem" value="Tìm Kiếm" >
				</form>
			</table>
			</td>
		</tr>
		
</table>
</body>
</html>
