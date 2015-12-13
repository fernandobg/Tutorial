package DAO;

import java.sql.ResultSet;
import java.sql.Statement;

public class DaoModulos {
	public ResultSet mostrar_modulos(){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from T_modulos";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	public ResultSet filtro_modulos(String cod){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from T_modulos where c_modu_id='"+ cod + "'";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	public boolean grabar_modulos(String id,String mod){
		ResultSet rs=null;
		Statement stmt=null;
		
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			
		
		
			String sql="insert into t_modulos (c_modu_id,c_modu_modu) values ('" + id + "','" + mod + "')";
			 javax.swing.JOptionPane.showMessageDialog(null,sql);
			stmt=cn.xcon().createStatement();
			stmt.executeQuery(sql);
			
		}catch(Exception e){
			
		}
		return true;
	}
	
	
	public boolean actualizar_modulos(String id,String dep){
		ResultSet rs=null;
		Statement stmt=null;
		
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			
		
		
			String sql="update t_modulos set c_modu_modu='" + dep +"'"  + " where c_modu_id='" + id + "'" ;
			 javax.swing.JOptionPane.showMessageDialog(null,sql);
			stmt=cn.xcon().createStatement();
			stmt.executeQuery(sql);
			
		}catch(Exception e){
			
		}
		return true;
	}
	
	public boolean eliminar_modulos(String id){
		ResultSet rs=null;
		Statement stmt=null;
		
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			
		
		
			String sql="delete from t_modulos where c_modu_id='" + id + "'";
			 javax.swing.JOptionPane.showMessageDialog(null,sql);
			stmt=cn.xcon().createStatement();
			stmt.executeQuery(sql);
			
		}catch(Exception e){
			
		}
		return true;
	}

	
	
}
