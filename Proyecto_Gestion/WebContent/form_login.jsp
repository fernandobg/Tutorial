<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="BEAN.BeanSeguridad"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css"> 
body {font-family: Arial, Helvetica, sans-serif;}

table {     font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
    font-size: 12px;       width: 320px; text-align: left;    border-collapse: collapse; }

th {     font-size: 13px;     font-weight: normal;     padding: 8px;     background: #b9c9fe;
    border-top: 8px solid #aabcfe;    border-bottom: 1px solid #fff; color: #039; }

td {    padding: 2px;     background: #e8edff;     border-bottom: 1px solid #fff;
    color: #669;    border-top: 1px solid transparent; }

tr:hover td { background: #d0dafd; color: #339; }
</style>
</head>
<%!
public BEAN.BeanSeguridad ins1=new BEAN.BeanSeguridad();
public ResultSet rs=null;
int rpta=0;

%>
<body>
<%
try{

String op=request.getParameter("bt");
if(op.equalsIgnoreCase("Enviar")){
	
String usuario=request.getParameter("text1");
String clave=request.getParameter("text2");
String tipo=request.getParameter("tipo");	

rs=ins1.valida_seguridad(usuario, clave, tipo);
if(rs.next()){
	rpta=1;
}else{
	rpta=0;
}

	
if(rpta==1){	

out.print("<script>window.open('http://localhost:8082/Gestion_Academica/pantallas/Menu_Principal.jsp','_blank');</script>");

		

}
}else{
	response.sendRedirect("http://localhost:8082/Gestion_Academica/form_login.jsp");	
	
	
}
}catch(Exception e){}
%>

<form name="f2" method="post" action="">
<table border=0>
<tr><th colspan=2><center>INTRANET DEL SISTEMA</center></th></tr>
<tr><td>Usuario</td><td><input type="text" name="text1"></td><tr>
<tr><td>Clave</td><td><input  type="password" name="text2"></td><tr>
<tr><td>Cargo</td><td><select name="tipo">
<option value="P">Profesor</option>
<option value="A">Alumno</option>
<option value="C">Coordinador</option>
</select></td><tr>
<tr><td><center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="bt" value="Enviar"></center></td>
<td><center><input type="reset" name="bt" value="Limpiar"></center></td><tr>

</table>

</form>
</body>
</html>