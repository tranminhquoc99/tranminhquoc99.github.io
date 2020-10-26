<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>Insert title here</title>

<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
</head>
<body>
<%@page import="java.util.Calendar"%>
      <h1>
       <%Calendar calendar = Calendar.getInstance(); %>
      Hôm nay là ngày: <%=calendar.get(Calendar.DAY_OF_MONTH) %>
      tháng <%=calendar.get(Calendar.MONTH)+1 %>
      năm <%=calendar.get(Calendar.YEAR) %>
      </h1>
      
	<H1> BẢNG CỬU CHƯƠNG</H1>
    <table class="table table-bordered table-hover" >
   
    <% for(int j = 1 ; j<=10 ; j++){ %>
    <tr>
      <%for(int i=1;i<=10;i++){ %>
            <td>
            	<%=i %> x <%=j %> = <%=(j*i) %>
            </td>
       <%}%>
       </tr>
     <%}%>
      
       
     
    </table>
</body>
</html>