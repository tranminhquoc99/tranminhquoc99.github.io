
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
<title>TestBTVeNha</title>
</head>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<body> 
 <%	
 	//laysach
	sachbo sbo = new sachbo();
	ArrayList<sachbean> dssach = sbo.getsach();
	int nsach = dssach.size();

	//layloai
	loaibo lbo = new loaibo();
	ArrayList<loaibean> dsloai = lbo.getloai();
	int nloai = dsloai.size();
%>
<form action="" method="post">
<div class="container">
    <div class="row">
        <div class="col-sm-3 col-md-3">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close">
                            </span> Thể Loại Sách</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                            	<%for(int i = 0 ; i < nloai ; i++){ %>
                                <tr>
                                    <td>
                                        <a id = <%=dsloai.get(i).getMaloai()%> href="test.jsp/id=<%=dsloai.get(i).getMaloai()%>" > <%= dsloai.get(i).getTenloai()%></a>
                                    </td>
                                </tr>
                                <%}%>
                            </table>
                        </div>
                    </div>
                </div>   
            </div>
        </div>
        <div class="col-sm-9 col-md-9">
            <div class="well">
				<table>
					<%for(int i = 0 ; i < nsach ; i++){ %>
						<tr>
							<td>
								<img src="<%=dssach.get(i).getAnh()%>"> <br>
								<%=dssach.get(i).getTensach() %> <br>
								<%=dssach.get(i).getTacgia() %> <br>
								<%=dssach.get(i).getGia() %> <br>
								<!-- <a href="datmua.jpg" ><img  src="bynow.jpg"></a> -->
								</td>
							</tr>
					<%} %>
				</table>
            </div>
        </div>
    </div>
</div>
</form>
<%
	//String loai = request.get;
%>
</body>
</html>
