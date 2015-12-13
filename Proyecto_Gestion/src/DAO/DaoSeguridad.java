package DAO;
import java.io.*;
import java.sql.*;

public class DaoSeguridad {

	public ResultSet valida_seguridad(String usu,String cla,String car){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from seguridad where usu_seg='" + usu + "'" + " and cla_seg='" + cla + "' and car_seg='" + car  + "' and est_seg='A'";
			javax.swing.JOptionPane.showMessageDialog(null,sql);
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	

	
	
	
}
