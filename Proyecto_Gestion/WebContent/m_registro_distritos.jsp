<%@page import="BEAN.BeanDistritos"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page  import="java.io.*"%>
<%@page  import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%!
BeanDistritos ins=new BeanDistritos();
ResultSet rs=null;
%>


<body>
<%
try{
rs=ins.mostrar_Distritos_B();
	out.println("<center><table border=1>");
	out.println("<th colspan=11>Listado de Distritos</th>");
	out.println("<tr><td>Codigo</td><td>Distritos</td></tr>");
	while (rs.next()){
		out.println("<tr><td>" + rs.getString("c_dist_id") +"</td>");
		out.println("<td>" + rs.getString("c_dist_dist") +"</td></tr>");
			}	out.println("</table></center>");
}catch(Exception e){}
%>
</body>
</html>