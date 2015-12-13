

  <%@page import="javax.swing.JOptionPane"%>
<%@page language="java" import="java.sql.*"%>
<%@page language="java" import="BEAN.BeanProfesor"%>
<%@page language="java" import="java.util.HashMap"%>
<%@page language="java" import="java.util.Map"%>
<%@page language="java" import="CONEXION.conecta"%>
<%@page language="java" import="net.sf.jasperreports.engine.*"%>
<%@page language="java" import="net.sf.jasperreports.view.JasperViewer"%>
<html>
<head>
<title></title>
</head>
<%! private static final String user = ""; 
private static final String password = ""; 
private static final String report_path = "c:\\reportes\\rpt_cursos.jrxml"; 
private static final String export_path = "c:\\reportes\\rpt_cursos.pdf"; 
private static final Connection cn = null; 

BEAN.BeanHojaVida ins1=new BEAN.BeanHojaVida();
public ResultSet rs = null;
%>
<body>
<form name="frmReporte1" method="post" action="">
<center>
<h2>REPORTE DE CURSOS</h2>
<BR><BR>


<input type="submit" name="boton" value="Reporte"/>
<% 

	
CONEXION.conecta Conecta=new CONEXION.conecta();
String op = request.getParameter("boton"); 

if (op != null && op.length() > 0) { 
if (op.equalsIgnoreCase("Reporte")) { 
	try { 
		//String codigo=request.getParameter("datos");
	//	codigo=codigo.substring(0,4);
	//	JOptionPane.showMessageDialog(null,codigo);
		
Map parameters = new HashMap(); 
parameters.put("",""); 
JasperReport report = JasperCompileManager.compileReport(report_path); 
JasperPrint print = JasperFillManager.fillReport(report, parameters, Conecta.xcon()); 
JasperExportManager.exportReportToPdfFile(print, export_path); 
JasperViewer.viewReport(print, false); 
}
 catch (Throwable e) { 
out.print("Error" + report_path + " (error : " + e + ")"); 
} 
} 
} 

%>

</center>
</form>
</body>
</html>
   