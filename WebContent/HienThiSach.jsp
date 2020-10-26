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
<title>Insert title here</title>
</head>
<body>
<%	
	sachbo sbo = new sachbo();
	ArrayList<sachbean> ds = sbo.getsach();
	int n = ds.size();
%>
<table>
	<%for(int i = 0 ; i < 3 ; i++){ %>
		<tr>
			<td>
				<img src="<%=ds.get(i).getAnh()%>"> <br>
				<%=ds.get(i).getTensach() %> <br>
				<%=ds.get(i).getTacgia() %> <br>
				<%=ds.get(i).getGia() %> <br>
				<!-- <a href="datmua.jpg" ><img  src="bynow.jpg"></a> -->
				</td>
			</tr>
	<%} %>
</table>


</body>
</html>