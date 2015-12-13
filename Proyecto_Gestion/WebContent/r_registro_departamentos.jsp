<%@page import="BEAN.BeanDepartamentos"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<%!
BEAN.BeanDepartamentos ins3=new BeanDepartamentos();
public ResultSet rs=null;
public String cod;
public String nom;
public String dur;
public String hor; 
%>

<body>
<%
try{
	String op=request.getParameter("bt");
	if(op.equalsIgnoreCase("Grabar")){
		String cod=request.getParameter("caja1");
		String nom=request.getParameter("caja2");

		ins3.grabar_departamentos_C(cod,nom);
		 javax.swing.JOptionPane.showMessageDialog(null, "Grabacion Satisfactoria");
	}
	if(op.equalsIgnoreCase("eliminar")){
		String cod=request.getParameter("caja1");
		ins3.eliminar_departamentos_C(cod);
		javax.swing.JOptionPane.showMessageDialog(null, "Eliminacion Satisfactoria");
	}
	if(op.equalsIgnoreCase("consultar")){
		String cod=request.getParameter("caja1");
		rs=ins3.filtro_departamentos(cod);
		while(rs.next()){
		cod=rs.getString("c_depa_id");
		nom=rs.getString("c_depa_depa");
		
		
		}
		javax.swing.JOptionPane.showMessageDialog(null, "Eliminacion Satisfactoria");
	}
	
	if(op.equalsIgnoreCase("actualizar")){
		String cod=request.getParameter("caja1");
		
		
		cod=rs.getString("c_depa_id");
		nom=rs.getString("c_depa_depa");
	
		ins3.actualizar_departamento_C(cod, nom);
		javax.swing.JOptionPane.showMessageDialog(null, "Actualizacion Satisfactoria");
	}
	
	
}catch(Exception e){
	javax.swing.JOptionPane.showMessageDialog(null, e.toString());
}

%>
<form name=f1 method=post action="">
<center><table border=1>
<th colspan="5"> MANTENIMIENTO DE DEPARTAMENTOS</th>
<tr><td>CODIGO</td><td><input type="text" name="caja1" value="<%=cod%>"></td></tr>
<tr><td>DEPARTAMENTOS</td><td><input type="text" name="caja2" value="<%=nom%>"></td></tr>
<tr><td><center><input type=submit name=bt value="Grabar"></center></td><td><center><input type=submit name=bt value="Eliminar"></center></td></tr>
<tr><td><center><input type=submit name=bt value="Actualizar"></center></td><td><center><input type=submit name=bt value="Consultar"></td></center></tr>

</table></center></form>
</body>
</html>
