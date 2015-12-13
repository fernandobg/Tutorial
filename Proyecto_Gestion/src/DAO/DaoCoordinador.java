package DAO;
import java.io.*;
import java.sql.*;

public class DaoCoordinador {

	public ResultSet mostrar_coordinador(){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from T_coordinador";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	public ResultSet filtro_coordinador(String cod){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from T_coordinador where c_coor_id='" + cod + "'";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	
	
}
