<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="http://webcoban.vn">Test</a>
	<form action="TrangTinh.jsp" method="post">
	  a=<input type="number" name="txta" placehoder="Nhap a" 
      value ="<%=request.getParameter("a")%>">
      <br>
      b=<input type="number" name="txtb" placehoder="Nhap b" 
      value ="<%=request.getParameter("b")%>">
      <br>
      kq=<input type="number" name="txtkq"  
      value ="<%=request.getParameter("kq")%>" disabled="disabled">
      <br>
        <input type="submit" name="txtcong"  value ="+">
        <input type="submit" name="txttru"  value ="-">
		<input type="submit" name="txtnhan"  value ="*">
        <input type="submit" name="txtchia"  value ="/">
   </form>
<%//Lay gia tri cua txta va txtb ve
    String a1=request.getParameter("txta");
    String b1=request.getParameter("txtb");
    if(a1!=null && b1!=null){//neu co du lieu
    	 long kq=0;
		 long a=Long.parseLong(a1);
		 long b=Long.parseLong(b1);
		 if(request.getParameter("txtcong")!=null)
			 kq=a+b;
		 if(request.getParameter("txttru")!=null)
			 kq=a-b;
		 //out.print(kq);
	response.sendRedirect(
			"TrangTinh.jsp?a="+a1+"&b="+b1+"&kq="+String.valueOf(kq));
  } %>
</body>
</html>