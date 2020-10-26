
<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@page import="bean.sachbean"%>
<%@page import="dao.sachdao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chu</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body> 
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="TrangChu.jsp">Trang Chủ</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="htgio.jsp">Giỏ Hàng</a></li>
      <li><a href="#">Lịch Sử Mua Hàng</a></li>
    </ul>
  </div>
</nav>
 <%	
 	//laysach
	sachbo sbo = new sachbo();
	ArrayList<sachbean> ds = sbo.getsach();
	String ml = request.getParameter("ml");
	String key = request.getParameter("txttk");
	if(ml!=null)
		ds = sbo.TimSachTheoMa(ml);
	if(key!= null)
		ds = sbo.TimSach(key);
	int nsach = ds.size();

	//layloai
	loaibo lbo = new loaibo();
	ArrayList<loaibean> dsloai = lbo.getloai();
	int nloai = dsloai.size();
%>
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
				<table >
						<%for(int i = 0 ; i < nsach ; i++){ %>
							<!-- <tr> -->
								<td align="center">
									<img src="<%=ds.get(i).getAnh()%>"> <br>
									<%=ds.get(i).getTensach() %> <br>
									<%=ds.get(i).getTacgia() %> <br>
									<%=ds.get(i).getGia() %> <br>
									<a href="datmua.jsp?ms=<%=ds.get(i).getMasach()%>&ts=<%=ds.get(i).getTensach()%>&gia=<%=ds.get(i).getGia()%>&ml=<%=ds.get(i).getMaloai()%>" ><img  src="image/bynow.png" height="50"></a>
									</td>
							<!-- </tr> -->
						<%} %>
						
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
