<%@page import="javax.swing.JOptionPane"%>
<%@page import="BEAN.BeanProfesor"%>

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
public String codigo=null;
public String nombre=null;
public String apellido=null;
public String mail=null;
public String telefono1=null;
public String telefono2=null;
public String direccion=null;
public String sexo=null;
public String nacimiento=null;
public String fecha=null;
public String dni=null;
ResultSet rs=null;
ResultSet rs1=null;
public String cod_pub=null;
%>


<body>
<%
try{
	String op1=request.getParameter("bt");
		if(op1.equalsIgnoreCase("Nuevo")){

		out.print("<script language='javascript'>"); 
		out.print("document.f1.caja1.value=''");
		out.print("document.f1.caja2.value=''");
		out.print("document.f1.caja3.value=''");
		out.print("document.f1.caja4.value=''");
		out.print("document.f1.caja5.value=''");
		out.print("document.f1.caja6.value=''");
		out.print("document.f1.caja7.value=''");
		out.print("document.f1.caja8.value=''");
		out.print("document.f1.caja7.value=''");
		out.print("document.f1.caja6.value=''");
		out.print("document.f1.caja7.value=''");
		out.print("document.f1.caja8.value=''");
		out.print("</script>");	
		rs1=ins.genera_Profesor_B();
		
		while (rs1.next()){
			codigo=rs1.getString("num");
		}
		if (codigo!=null){
		codigo=codigo.substring(1,4);
		int num=Integer.parseInt(codigo)+1001;
		codigo="P" + String.valueOf(num).substring(1,4);
		
		JOptionPane.showMessageDialog(null,codigo);
		}else{
			codigo="P001";
		}
		}
		
		
		
		
/////////////////////////////////////////////////////////////////////////7



try{


if(op1.equalsIgnoreCase("Consultar")){
	String cod=JOptionPane.showInputDialog("Ingrese Codigo a Buscar");
	rs1=ins.filtro_Profesor(cod);

while (rs1.next()){
codigo=rs1.getString("c_prof_id");	
cod_pub=rs1.getString("c_prof_id");	
nombre= rs1.getString("c_prof_nomb") ;
apellido=rs1.getString("c_prof_apes");
mail=rs1.getString("c_prof_mail") ;
telefono1=rs1.getString("c_prof_fono");
telefono2=rs1.getString("c_prof_fon2") ;
direccion=rs1.getString("c_prof_dire");
sexo=rs1.getString("c_prof_sexo");
nacimiento=rs1.getString("c_prof_naci");
dni=rs1.getString("c_prof_dni");
fecha=rs1.getString("c_prof_fech");
}

}
}catch(Exception e){}


	


}
	catch(Exception e){
		
		JOptionPane.showMessageDialog(null,e.toString());
	}


%>

<form name="f1" method="post" action="">
<center>
<table border=1>
<tr><td colspan=3>MANTENIMIENTO DE PROFESORES</td></tr>
<tr><td >Codigo</td><td ><input type="text" name="caja1" disabled value="<%=codigo%>"></td></tr>
<tr><td >Nombre</td><td ><input type="text" name="caja2" value="<%=nombre%>"></td></tr>
<tr><td >Apellido</td><td ><input type="text" name="caja3" value="<%=apellido%>"></td></tr>
<tr><td >Mail</td><td ><input type="text" name="caja4" value="<%=mail%>"></td></tr>
<tr><td >Telefono 1</td><td ><input type="text" name="caja5" value="<%=telefono1%>"></td></tr>
<tr><td >Telefono2</td><td ><input type="text" name="caja6" value="<%=telefono2%>"></td></tr>
<tr><td >Direccion</td><td ><input type="text" name="caja7" value="<%=direccion%>"></td></tr>
<tr><td >Sexo</td><td ><select name="sexo">
<option value="M">Masculino</option>
<option value="F">Femenino</option>
</select></td></tr>
<tr><td >Nacimiento</td><td ><input type="text" name="caja8" value="<%=nacimiento%>"></td></tr>
<tr><td >Fecha</td><td ><input type="text" name="caja9" value="<%=fecha%>"></td></tr>
<tr><td >Dni</td><td ><input type="text" name="caja10" value="<%=dni%>"></td></tr>


<tr><td ><input type="submit" name="bt" value="Grabar"></td>
<td><input type="submit" name="bt" value="Eliminar"></td></tr>
<tr><td ><input type="submit" name="bt" value="Mostrar"></td><td>
<input type="submit" name="bt" value="Actualizar"></td></tr>

<tr><td ><input type="submit" name="bt" value="Nuevo"></td><td>
<input type="submit" name="bt" value="Consultar"></td></tr>

<tr><td ><input type="submit" name="bt" value="Retornar"></td></tr>

</table>

</center>
</form><br>
<%
try{
	String op=request.getParameter("bt");
	
	if(op.equalsIgnoreCase("Grabar")){

		
		javax.swing.JOptionPane.showMessageDialog(null,codigo);
		String nom=request.getParameter("caja2");
		String ape=request.getParameter("caja3");
		String mail=request.getParameter("caja4");
		String fono=request.getParameter("caja5");
		String fono2=request.getParameter("caja6");
		String dire=request.getParameter("caja7");
		String sexo=request.getParameter("sexo");
		String naci=request.getParameter("caja8");
		String fecha=request.getParameter("caja9");
		String dni=request.getParameter("caja10");
		
		ins.grabar_Profesor_B(codigo, nom, ape, mail, fono, fono2, dire, sexo, naci, fecha,dni);
		javax.swing.JOptionPane.showMessageDialog(null,"Grabacion Ok");
	}
	///////////////////////////////////////////////
	if(op.equalsIgnoreCase("Eliminar")){
		String cod="";
		cod=String.valueOf(JOptionPane.showInputDialog("Ingrese Codigo a Eliminar"));
		ins.eliminar_Profesor_B(cod);
		JOptionPane.showMessageDialog(null, "Eliminacion OK...!");
	}
	
	///////////////////////////////////////////////
	if(op.equalsIgnoreCase("Mostrar")){

		rs=ins.mostrar_profesor_B();
		try{
			out.println("<center><table border=1>");
			out.println("<th colspan=11>Listado de Profesor</th>");
			out.println("<tr><td>Codigo</td><td>Nombre</td><td>Apellido</td><td>Mail</td><td>Fono</td><td>Fono2</td><td>Direccion</td><td>Sexo</td><td>Nacimiento</td><td>Dni</td></tr>");
			while (rs.next()){
			out.println("<tr><td>" + rs.getString("c_prof_id") +"</td>");

			out.println("<td>" + rs.getString("c_prof_nomb") +"</td>");
			out.println("<td>" + rs.getString("c_prof_apes") +"</td>");
			out.println("<td>" + rs.getString("c_prof_mail") +"</td>");
			out.println("<td>" + rs.getString("c_prof_fono") +"</td>");
			out.println("<td>" + rs.getString("c_prof_fon2") +"</td>");
			out.println("<td>" + rs.getString("c_prof_dire") +"</td>");
			out.println("<td>" + rs.getString("c_prof_sexo") +"</td>");
			out.println("<td>" + rs.getString("c_prof_naci") +"</td>");
			out.println("<td>" + rs.getString("c_prof_dni") +"</td></tr>");
			}
			out.println("</table></center>");
		}catch(Exception e){}
	}
	
	////////////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////
	if(op.equalsIgnoreCase("Retornar")){
	
	 out.print("<script>window.open('http://localhost:8082/Gestion_Academica/pantallas/Menu_Principal.jsp','_blank');</script>"); 
	}
	
	////////////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////
	if(op.equalsIgnoreCase("Actualizar")){

		
		String cod=cod_pub;
		javax.swing.JOptionPane.showMessageDialog(null,cod);
		String nom=request.getParameter("caja2");
		String ape=request.getParameter("caja3");
		String mail=request.getParameter("caja4");
		String fono=request.getParameter("caja5");
		String fono2=request.getParameter("caja6");
		String dire=request.getParameter("caja7");
		String sexo=request.getParameter("sexo");
		String naci=request.getParameter("caja8");
		String fecha=request.getParameter("caja9");
		String dni=request.getParameter("caja10");
				
		ins.actualizar_Profesor_B(cod, nom, ape, mail, fono, fono2, dire, sexo, naci, fecha,dni);
		javax.swing.JOptionPane.showMessageDialog(null,"Actualizar Ok");
	}
	
	
	
	
	
	
	
}catch(Exception e){}

%>


</body>
</html>