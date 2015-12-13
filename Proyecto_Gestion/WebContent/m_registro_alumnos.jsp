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
BEAN.BeanAlumnos ins=new BEAN.BeanAlumnos();
ResultSet rs=null;
%>


<body>
<%
rs=ins.mostrar_alumnos_B();
try{
	out.println("<center><table border=1>");
	out.println("<th colspan=11>Listado de Alumnos</th>");
	out.println("<tr><td>Codigo</td><td>Nombre</td><td>Apellido</td><td>Direccion</td><td>Nacimiento</td><td>Mail</td><td>Fono</td><td>Fono2</td><td>Sexo</td><td>Dni</td></tr>");
	while (rs.next()){
		out.println("<tr><td>" + rs.getString("c_alum_id") +"</td>");
		out.println("<td>" + rs.getString("c_alum_nomb") +"</td>");
		out.println("<td>" + rs.getString("c_alum_apes") +"</td>");
		out.println("<td>" + rs.getString("c_alum_dire") +"</td>");
		out.println("<td>" + rs.getString("c_alum_naci") +"</td>");
		out.println("<td>" + rs.getString("c_alum_mail") +"</td>");
		out.println("<td>" + rs.getString("c_alum_fono") +"</td>");
		out.println("<td>" + rs.getString("c_alum_fon2") +"</td>");
		out.println("<td>" + rs.getString("c_alum_sexo") +"</td>");
		out.println("<td>" + rs.getString("c_alum_dni") +"</td></tr>");
	}	out.println("</table></center>");
}catch(Exception e){}
%>
</body>
</html>