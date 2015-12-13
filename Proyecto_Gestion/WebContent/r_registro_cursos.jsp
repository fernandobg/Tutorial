<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<%!
BEAN.BeanCursos ins3=new BEAN.BeanCursos();
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
		String dur=request.getParameter("caja3");
		String hor=request.getParameter("caja4");
		ins3.grabar_cursos_C(cod, nom, dur, hor);
		 javax.swing.JOptionPane.showMessageDialog(null, "Grabacion Satisfactoria");
	}
	if(op.equalsIgnoreCase("eliminar")){
		String cod=request.getParameter("caja1");
		ins3.eliminar_cursos_C(cod);
		javax.swing.JOptionPane.showMessageDialog(null, "Eliminacion Satisfactoria");
	}
	if(op.equalsIgnoreCase("consultar")){
		String cod=request.getParameter("caja1");
		rs=ins3.filtro_cursos(cod);
		while(rs.next()){
		cod=rs.getString("c_curs_id");
		nom=rs.getString("c_curs_curs");
		dur=rs.getString("c_curs_dura");
		hor=rs.getString("c_curs_hora");
		
		}
		javax.swing.JOptionPane.showMessageDialog(null, "Eliminacion Satisfactoria");
	}
	
	if(op.equalsIgnoreCase("actualizar")){
		String cod=request.getParameter("caja1");
		
		
		cod=rs.getString("c_curs_id");
		nom=rs.getString("c_curs_curs");
		dur=rs.getString("c_curs_dura");
		hor=rs.getString("c_curs_hora");
		ins3.actualizar_cursos_C(cod, nom,dur, hor);
		javax.swing.JOptionPane.showMessageDialog(null, "Actualizacion Satisfactoria");
	}
	
	
}catch(Exception e){
	javax.swing.JOptionPane.showMessageDialog(null, e.toString());
}

%>
<form name=f1 method=post action="">
<center><table border=1>
<th colspan="5"> MANTENIMIENTO DE CURSOS</th>
<tr><td>CODIGO</td><td><input type="text" name="caja1" value="<%=cod%>"></td></tr>
<tr><td>NOMBRE</td><td><input type="text" name="caja2" value="<%=nom%>"></td></tr>
<tr><td>DURACION</td><td><input type="text" name="caja3" value="<%=dur%>"></td></tr>
<tr><td>HORA</td><td><input type="text" name="caja4" value="<%=hor%>"></td></tr>
<tr><td><center><input type=submit name=bt value="Grabar"></center></td><td><center><input type=submit name=bt value="Eliminar"></center></td></tr>
<tr><td><center><input type=submit name=bt value="Actualizar"></center></td><td><center><input type=submit name=bt value="Consultar"></td></center></tr>

</table></center></form>
</body>
</html>
