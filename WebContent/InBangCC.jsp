<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
 
</head>
<body>
<form action="InBangCC.jsp" method="post">
	  a=<input min="2" max="9" type="number" name="txta" placehoder="Nhap a" 
      value ="<%=request.getParameter("a")%>">
      <br>
	<input type="submit" name="thuchien"  value ="In">
	<% if(request.getParameter("a")!=null ){ %>
	<table class="table table-bordered table-hover" >
      <%for(int i=1;i<=10;i++){ %>
      	<tr>
            <td>
            	<%=request.getParameter("a") %> x <%=i %> = <%= Integer.valueOf(request.getParameter("a")) * i %>
            </td>
            </tr>
       <%}%>
      
    </table>
    <%}%>
</form>
<%//Lay gia tri cua txta va txtb ve
    String a1 =request.getParameter("txta");	
	if(a1!= null){//neu co du lieu
		response.sendRedirect("InBangCC.jsp?a="+a1);
}
%>
</body>
</html>