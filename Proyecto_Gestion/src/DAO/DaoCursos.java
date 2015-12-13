package DAO;
import java.io.*;
import java.sql.*;

public class DaoCursos {

	public ResultSet mostrar_cursos(){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from T_cursos";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	
	public ResultSet filtro_cursos(String cod){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from T_cursos where c_curs_id='" + cod + "'";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	public boolean grabar_cursos(String id,String curs,String dura,String hora){
		ResultSet rs=null;
		Statement stmt=null;
		
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			
		
		
			String sql="insert into t_cursos (c_curs_id,c_curs_curs,c_curs_dura,c_curs_hora) values ('" + id + "','" + curs + "','" + dura + "','" +hora+"')";
			 javax.swing.JOptionPane.showMessageDialog(null,sql);
			stmt=cn.xcon().createStatement();
			stmt.executeQuery(sql);
			
		}catch(Exception e){
			
		}
		return true;
	}
	
	
	public boolean actualizar_cursos(String id,String curs,String dura,String hora){
		ResultSet rs=null;
		Statement stmt=null;
		
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			
		
		
			String sql="update t_cursos set c_curs_curs='" + curs +"',c_curs_dura='" + dura +"',c_curs_hora='" + hora +"'"  + " where c_curs_id='" + id + "'" ;
			 javax.swing.JOptionPane.showMessageDialog(null,sql);
			stmt=cn.xcon().createStatement();
			stmt.executeQuery(sql);
			
		}catch(Exception e){
			
		}
		return true;
	}
	
	public boolean eliminar_cursos(String id){
		ResultSet rs=null;
		Statement stmt=null;
		
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			
		
		
			String sql="delete from t_cursos where c_curs_id='" + id + "'";
			 javax.swing.JOptionPane.showMessageDialog(null,sql);
			stmt=cn.xcon().createStatement();
			stmt.executeQuery(sql);
			
		}catch(Exception e){
			
		}
		return true;
	}
	

	
	
	
}
