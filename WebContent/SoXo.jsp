<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.util.Calendar"%>
       <%Calendar calendar = Calendar.getInstance(); %>
       <%int ngay = calendar.get(Calendar.DAY_OF_MONTH); %>
      <% int thang = calendar.get(Calendar.MONTH)+1; %>
      <% int nam = calendar.get(Calendar.YEAR); %>
 	
<label>Ngày:</label>
<select name="ngay">
       <%for(int i=1;i<=31;i++){%>
          <option <%if(i==ngay){%>selected="selected"<%} %> >
   					<%=i %>
          </option>
       <%} %>
    </select>
<label>&nbsp;Tháng:</label>
<select name="thang">
       <%for(int i=1;i<=12;i++){%>
          <option <%if(i==thang){%>selected="selected"<%} %> >
   					<%=i %>
          </option>
       <%} %>
    </select>
<label>&nbsp;Năm:</label>
<select name="ngay">
       <%for(int i=nam-10;i<=nam;i++){%>
          <option <%if(i==nam){%>selected="selected"<%} %> >
   					<%=i %>
          </option>
       <%} %>
    </select>
</body>
</html>