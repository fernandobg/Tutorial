<%@page import="BEAN.BeanCursos"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>

</head>
<%!
BeanCursos ins3=new BeanCursos();
BEAN.BeanProfesor ins4=new BEAN.BeanProfesor();
ResultSet rs=null;
ResultSet rs4=null;

%>
<body>
<form name ="f3" method="post" action="">
<center><table border="">
<th colspan=5>ASIGNACION DE CURSOS POR PROFESOR</th>
<tr><td>CURSOS</td><td></td>&nbsp;<td>&nbsp;</td><td>&nbsp;</td><td>PROFESOR</td> </tr>
<tr><td><select name="cursos" rows=20>

</select></td><td></td>&nbsp;<td>&nbsp;</td><td>&nbsp;</td><td>
<select name="cursos">
<%
rs=ins3.mostrar_cursos_B();
rs4=ins4.mostrar_profesor_B();
while(rs.next()){
%>

<%
}
%>

</select></td> 
<td>
<select name=profesor>

<%
rs4=ins4.mostrar_profesor_B();
while(rs4.next()){
%>

<%
}
%>

</select>
</td>
</tr>
<tr><td><input type="submit" name="bt" value="Retornar"></td><td></td>&nbsp;<td></td><td>&nbsp;</td><td><input type=submit name=bt value=Enviar></td> </tr>

</table></center>
</form>
</body>
</html>