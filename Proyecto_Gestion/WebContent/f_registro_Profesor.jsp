<%@page import="BEAN.BeanProfesor"%>
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
BeanProfesor ins=new BeanProfesor();
ResultSet rs=null;
%>


<body>

<form name="f1" method="post" action="">
<center>
<table border=1>
<tr><td colspan=3>Filtro de Profesor</td></tr>
<tr><td >Ingrese Codigo</td><td ><input type="text" name="caja1"></td><td ><input type="submit" name="bt" value="Consultar"></td></tr>

</table>

</center>
</form><br>
<%


try{
	String cod=request.getParameter("caja1");
	rs=ins.filtro_Profesor(cod);
	String op=request.getParameter("bt");
	if(op.equalsIgnoreCase("Consultar")){
	
		out.println("<center><table border=1>");
		out.println("<th colspan=11>Listado de Profesor</th>");
		out.println("<tr><td>Codigo</td><td>Profesor</td><td>Nombre</td><td>Apellido</td><td>Mail</td><td>Fono</td><td>Fono2</td><td>Direccion</td><td>Sexo</td><td>Nacimiento</td><td>Fecha Ingreso</td></td><td>Dni</td></tr>");
		while (rs.next()){
		out.println("<tr><td>" + rs.getString("c_prof_id") +"</td>");
		out.println("<td>" + rs.getString("c_prof_prof") +"</td>");
		out.println("<td>" + rs.getString("c_prof_nomb") +"</td>");
		out.println("<td>" + rs.getString("c_prof_apes") +"</td>");
		out.println("<td>" + rs.getString("c_prof_mail") +"</td>");
		out.println("<td>" + rs.getString("c_prof_fono") +"</td>");
		out.println("<td>" + rs.getString("c_prof_fon2") +"</td>");
		out.println("<td>" + rs.getString("c_prof_dire") +"</td>");
		out.println("<td>" + rs.getString("c_prof_sexo") +"</td>");
		out.println("<td>" + rs.getString("c_prof_naci") +"</td>");
		out.println("<td>" + rs.getString("c_prof_fech") +"</td>");
		out.println("<td>" + rs.getString("c_prof_dni") +"</td></tr>");
		}
		out.println("</table></center>");
	}
}catch(Exception e){}
%>

</body>
</html>