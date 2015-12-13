package DAO;

import java.sql.ResultSet;
import java.sql.Statement;

public class DaoDepartamentos {
	public ResultSet mostrar_departamentoss(){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from T_departamentos";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	
	public ResultSet filtro_departamentos(String cod){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from T_departamentos where c_depa_id='" + cod + "'";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	
	public boolean grabar_departamentos(String id,String dep){
		ResultSet rs=null;
		Statement stmt=null;
		
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			
		
		
			String sql="insert into t_departamentos (c_depa_id,c_depa_depa) values ('" + id + "','" + dep + "')";
			 javax.swing.JOptionPane.showMessageDialog(null,sql);
			stmt=cn.xcon().createStatement();
			stmt.executeQuery(sql);
			
		}catch(Exception e){
			
		}
		return true;
	}
	
	
	public boolean actualizar_departamentos(String id,String dep){
		ResultSet rs=null;
		Statement stmt=null;
		
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			
		
		
			String sql="update t_cursos set c_depa_depa='" + dep +"'"  + " where c_depa_id='" + id + "'" ;
			 javax.swing.JOptionPane.showMessageDialog(null,sql);
			stmt=cn.xcon().createStatement();
			stmt.executeQuery(sql);
			
		}catch(Exception e){
			
		}
		return true;
	}
	
	public boolean eliminar_departamentos(String id){
		ResultSet rs=null;
		Statement stmt=null;
		
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			
		
		
			String sql="delete from t_departamentos where c_depa_id='" + id + "'";
			 javax.swing.JOptionPane.showMessageDialog(null,sql);
			stmt=cn.xcon().createStatement();
			stmt.executeQuery(sql);
			
		}catch(Exception e){
			
		}
		return true;
	}

	
}
