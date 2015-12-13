<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page language="java" import="BEAN.BeanHojaVida" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<%
BEAN.BeanHojaVida ins=new BEAN.BeanHojaVida();
ResultSet rs=null;
int num=0;
%>
<body>
<%
try{
String op=request.getParameter("bt");
if(op.equalsIgnoreCase("Grabar")){
String cod,dir,tel1,tel2,dni,eda,sex,nac,dis,estp,estse,ests,expl,conf,ref,obj;
int id;
cod=request.getParameter("caja1");
cod=cod.substring(0,4);

JOptionPane.showMessageDialog(null,cod);
dir=request.getParameter("caja3");
tel1=request.getParameter("caja4");
tel2=request.getParameter("caja5");
dni=request.getParameter("caja6");
eda=request.getParameter("caja7");
sex=request.getParameter("caja8");
nac=request.getParameter("caja9");
dis=request.getParameter("caja10");
estp=request.getParameter("primario");
estse=request.getParameter("secundario");
ests=request.getParameter("superior");
expl=request.getParameter("experiencia");
conf=request.getParameter("semcon");
ref=request.getParameter("refcon");
obj=request.getParameter("Objetivos");

ins.grabar_hojavida_B(cod, dir, tel1, tel2, dni,eda, sex, nac, dis, estp, estse, ests,expl, conf, ref, obj);
JOptionPane.showMessageDialog(null,"Hoja de Vida Registrada....!");


}	


if(op.equalsIgnoreCase("Nuevo")){
int codigo=0;

rs=ins.genera_Hoja_Vida_B();

while (rs.next()){
	num=Integer.parseInt(rs.getString("num"));
}
if (num>0){

num=num+1;
JOptionPane.showMessageDialog(null,num);
}else{
	num=1000;

}
JOptionPane.showMessageDialog(null,num);  
}


if(op.equalsIgnoreCase("Retornar")){
	
	 out.print("<script>window.open('http://localhost:8082/Gestion_Academica/pantallas/Menu_Principal.jsp','_blank');</script>"); 
	}	
}catch(Exception e){}
%>








<form name=f2 method="post">
<center><b><h1> HOJA DE VIDA </h1></b></center>
<hr>
<tr>
<td><iframe src="http://localhost:8082/Gestion_Academica/l_listar_profesor.jsp" height=30 frameborder= 0 scrolling=no width=600></iframe></td>
<td>&nbsp;</td>
</tr>

<hr>
<B> DATOS PERSONALES</B>
<center><table border=0>
<br>
<tr><td>&nbsp;</td><td>&nbsp;</td></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>

<tr><td>Nombre Profesor </td><td><input type=text name="caja2" ></td><td>&nbsp;</td></tr>
<tr><td>Dirección</td><td><input type=text name="caja3" ></td><td>&nbsp;</td><td>Telefono 1 </td><td><input type=text name="caja4" ></td><td>&nbsp;</td></tr>
<tr><td>Telefono 2</td><td><input type=text name="caja5" ></td> <td>&nbsp;</td> <td>Dni</td><td><input type=text name="caja6" ></td></tr>
<tr><td>Edad</td><td><input type=text name="caja7" ></td> <td>&nbsp;</td> <td>Sexo</td><td><input type=text name="caja8" ></td></tr>
<tr><td>Fecha de Nacimiento </td><td><input type=text name="caja9" ></td> <td>&nbsp;</td> <td>Disponibilidad</td><td><input type=text name="caja10" ></td></tr>

</table>
<hr>
</center>
<br>
<b> ESTUDIOS PRIMARIOS </b>
<center>
<table border=0 >
<tr><td> Procedencia Colegio Primario:  </td><td><textarea rows="4" cols="50" name="primario"></textarea></td></tr>
</table></center>
<br>
<hr>
<b> ESTUDIOS SECUNDARIOS </b>

<CENTER><table border=0 >
<tr><td> Procedencia Secundario Primario:  </td><td><textarea rows="4" cols="50"  name="secundario"></textarea></td></tr>
</table></CENTER>


<br>
<hr>
<b> ESTUDIOS SUPERIORES </b>

<CENTER><table border=0 >
<tr><td> Procedencia Secundario Superiores:  </td><td><textarea rows="4" cols="50"  name="superior"></textarea></td></tr>
</table></CENTER>


<br>
<hr>
<b> EXPERIENCIA LABORAL </b>

<CENTER><table border=0 >
<tr><td> Experiencia Laboral:  </td><td><textarea rows="4" cols="50"  name="experiencia"></textarea></td></tr>
</table></CENTER>


<br>
<hr>
<b> Seminarios y/o Conferencias </b>

<CENTER><table border=0 >
<tr><td> Seminarios, Conferencias:  </td><td><textarea rows="4" cols="50"  name="semcon"></textarea></td></tr>
</table></CENTER>

<br>
<hr>
<b> REFERENCIAS </b>

<CENTER><table border=0 >
<tr><td> Referencias y/o Contactos:  </td><td><textarea rows="4" cols="50"  name="refcon"></textarea></td></tr>
</table></CENTER>

<br>
<hr>
<b> OBJETIVOS </b>

<CENTER><table border=0 >
<tr><td> Objetivos  </td><td><textarea rows="4" cols="50"  name="Objetivos"></textarea></td></tr>
</table></CENTER>
<br>
<hr>

<center><input type=submit name="bt" value="Grabar">&nbsp;<td ><input type="submit" name="bt" value="Retornar"></td>&nbsp;<input type=reset name="bt" value="Limpiar"> </center>

</form>
</body>
</html>