package DAO;
import java.io.*;
import java.sql.*;

public class DaoAlumnos {

	public ResultSet mostrar_alumnos(){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from T_alumno";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	
	public ResultSet filtro_alumnos(String cod){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from T_alumno where c_alum_id='"+ cod + "'";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	
}
