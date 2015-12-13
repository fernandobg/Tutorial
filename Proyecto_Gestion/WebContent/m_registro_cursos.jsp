<%@page import="BEAN.BeanCursos"%>
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
BeanCursos ins=new BeanCursos();
ResultSet rs=null;
%>


<body>
<%
rs=ins.mostrar_cursos_B();
try{
	out.println("<center><table border=1>");
	out.println("<th colspan=11>Listado de CURSOS</th>");
	out.println("<tr><td>Codigo</td><td>Curso</td><td>Modulo</td><td>Duracion</td><td>Hora</td></tr>");
	while (rs.next()){
		out.println("<tr><td>" + rs.getString("c_curs_id") +"</td>");
		out.println("<td>" + rs.getString("c_curs_curs") +"</td>");
		out.println("<td>" + rs.getString("c_curs_dura") +"</td>");
		out.println("<td>" + rs.getString("c_curs_hora") +"</td></tr>");
	}	out.println("</table></center>");
}catch(Exception e){}
%>
</body>
</html>