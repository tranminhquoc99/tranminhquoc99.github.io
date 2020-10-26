<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Sumsession.jsp" method="post" >
	n= <input type="number" name="txtn" value="0">
	<input type="submit" name="button" value="Tinh">

</form>
<%
	String st = request.getParameter("txtn");
	if(session.getAttribute("s") == null){//Kiem tra da khoi tao session chua
		session.setAttribute("s", 0);
	}
	if(st!=null){
		long a = (long)session.getAttribute("s");//Gan session cho bien
		a = a+Long.parseLong(st);// Thay doi bien
		session.setAttribute("s",a);// Luu session vao bien
		out.print(a);
	}
%>
</body>
</html>