<%@page import="BEAN.BeanDepartamentos"%>
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
BEAN.BeanDepartamentos ins=new BeanDepartamentos();
ResultSet rs=null;
%>


<body>

<form name="f1" method="post" action="">
<center>
<table border=1>
<tr><td colspan=3>Filtro de Departamentos</td></tr>
<tr><td >Ingrese Codigo</td><td ><input type="text" name="caja1"></td><td ><input type="submit" name="bt" value="Consultar"></td></tr>

</table>

</center>
</form><br>
<%


try{
	String cod=request.getParameter("caja1");
	rs=ins.filtro_departamentos(cod);
	String op=request.getParameter("bt");
	if(op.equalsIgnoreCase("Consultar")){
	
		out.println("<center><table border=1>");
		out.println("<th colspan=11>Listado de Departamentos</th>");
		out.println("<tr><td>Codigo</td><td>Departamentos</td></tr>");
		while (rs.next()){
			out.println("<tr><td>" + rs.getString("c_depa_id") +"</td>");
			out.println("<td>" + rs.getString("c_depa_depa") +"</td></tr>");
				}	out.println("</table></center>");
	}
}catch(Exception e){}
%>

</body>
</html>