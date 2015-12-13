<%@page import="BEAN.BeanModulos"%>

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
BeanModulos ins=new BeanModulos();
ResultSet rs=null;
%>


<body>
<%
try{
rs=ins.mostrar_modulos_B();
	out.println("<center><table border=1>");
	out.println("<th colspan=11>Listado de Modulos</th>");
	out.println("<tr><td>Codigo</td><td>Modulo</td></tr>");
	while (rs.next()){
		out.println("<tr><td>" + rs.getString("c_modu_id") +"</td>");
		out.println("<td>" + rs.getString("c_modu_modu") +"</td>");
			}	out.println("</table></center>");
}catch(Exception e){}
%>
</body>
</html>