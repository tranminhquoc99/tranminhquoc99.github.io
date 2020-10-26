<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NgayVuaChon</title>
</head>
<body>
<%Calendar calendar = Calendar.getInstance(); %>
<%int ngay = calendar.get(Calendar.DAY_OF_MONTH); %>
<% int thang = calendar.get(Calendar.MONTH)+1; %>
<% int nam = calendar.get(Calendar.YEAR); %>
<form action="NgayVuaChon.jsp" method="post">	
	<label>Chọn Ngày Tháng Năm</label>
	<br>
	<label>Ngày:</label>
	<select name="ngay" >
	       <%for(int i=1;i<=31;i++){%>
	          <option  <%if(i==ngay){%>selected="selected"<%} %>">
	   					<%=i %>
	          </option>
	       <%} %>
	    </select>
	<label>&nbsp;Tháng:</label>
	<select name="thang">
	       <%for(int i=1;i<=12;i++){%>
	          <option <%if(i==thang){%>selected="selected"<%} %>">
	   					<%=i %>
	          </option>
	       <%} %>
	    </select>
	<label>&nbsp;Năm:</label>
	<select name="nam">
	       <%for(int i=nam-10;i<=nam;i++){%>
	          <option <%if(i==nam){%>selected="selected"<%} %>">
	   					<%=i %>
	          </option>
	       <%} %>
	    </select>
	    <br>
	   <input type="submit" name= "xong" value="Xong">
	   <br>
	   <label>Ngày Vừa Chọn Xong</label>
	   <br>
	   <label>
	      Ngày: <%=request.getParameter("ngay") %>
	      Tháng <%=request.getParameter("thang") %>
	      Năm<%=request.getParameter("nam") %>
      </label>
	  

</form>
<%//Lay gia tri cua txta va txtb ve
    String a1 =request.getParameter("ngay");
    String b1 =request.getParameter("thang");
    String c1 =request.getParameter("nam");		
%>


</body>
</html>