package DAO;

import java.sql.ResultSet;
import java.sql.Statement;

public class DaoDiatritos {
	public ResultSet mostrar_distritos(){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from T_distritoS";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	
	public ResultSet filtro_distritos(String cod){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			CONEXION.conecta cn=new CONEXION.conecta();
			String sql="select * from T_distritos where c_dist_id='" + cod + "'";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
}
