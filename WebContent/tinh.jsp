<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
		 out.print(kq);
		 
  } %>

</body>
</html>