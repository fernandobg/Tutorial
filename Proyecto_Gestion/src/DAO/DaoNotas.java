package DAO;

import java.sql.ResultSet;
import java.sql.Statement;

public class DaoNotas {
	public ResultSet mostrar_notas(){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from T_notas";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	public ResultSet filtros_notas(String cod){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from T_notas where c_nota_insc_id='"+ cod +"'";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
}
