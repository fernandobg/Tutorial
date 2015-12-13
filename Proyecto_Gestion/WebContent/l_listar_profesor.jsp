<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script language="javascript">
function carga(){
	var cod;
	cod=document.f22.caja1.value;
	alert(cod);
}

</script>



</head>


<%
BEAN.BeanHojaVida ins=new BEAN.BeanHojaVida();
ResultSet rs=null;
int num=0;
%>
<body>
<form name=f22 method=post action="">
<td><b>SELECCIONE UN PROFESOR </b>&nbsp;  </td><td><select name="caja1" onchange="carga();">
<% 
rs=ins.lista_profesor_B();
while(rs.next()){
%>
<option value="<%=rs.getString("dato") %>"><%=rs.getString("dato") %></option>

<% 	
}
%>

</select></td></form>
</body>
</html>