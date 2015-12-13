package DAO;
import java.io.*;
import java.sql.*;

public class DaoProfesor {
	public CONEXION.conecta cn=new CONEXION.conecta();
	public ResultSet mostrar_Profesor(){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			
			String sql="select * from T_Profesor";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	public ResultSet filtro_Profesor(String cod){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			
			String sql="select * from T_Profesor where c_prof_id='" + cod +"'";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	
	
	public Boolean grabar_Profesor(String cod,String nom,String ape,String mail,String fono,String fono2,String dire,String sexo,String naci,String fecha,String dni){
		Statement stmt=null;
	
		ResultSet rs=null;
	String esta="A";
		try{
			
			String sql="insert into T_Profesor (c_prof_id,c_prof_nomb,c_prof_apes,c_prof_mail,c_prof_fono,c_prof_fon2,c_prof_dire,c_prof_sexo,c_prof_esta,c_prof_naci,c_prof_fech,c_prof_dni) values ('" + cod +"','" + nom +"','" + ape +"','" + mail +"','" + fono +"','" + fono2 +"','" + dire +"','" + sexo +"','A','" +naci +"','" + fecha +"','" + dni +"')";
			javax.swing.JOptionPane.showMessageDialog(null, sql);
			stmt=cn.xcon().createStatement();
		stmt.executeQuery(sql);
			
		}catch(Exception e){javax.swing.JOptionPane.showMessageDialog(null,e.toString());}
		return true;
	}
	//////////////////////////////////////////////////////////////////////////
	public Boolean eliminar_Profesor(String cod){
		try{
		Statement stmt=null;
		String sql="delete from T_Profesor where c_prof_id='" + cod +"'";
		
		stmt=cn.xcon().createStatement();
		stmt.executeQuery(sql);
		
		}catch(Exception e){}
		return true;
	}
	
	/////////////////////////////////////////////////////////////////////////////
	
	public ResultSet genera_Profesor(){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			
			String sql="select max(c_prof_id) as 'num' from T_Profesor";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
/////////////////////////////////////////////////////////////////////////////
	
	public Boolean actualizar_Profesor(String cod,String nom,String ape,String mail,String fono,String fono2,String dire,String sexo,String naci,String fecha,String dni){
		Statement stmt=null;
	
		ResultSet rs=null;
			try{
			
			String sql="update T_Profesor set c_prof_nomb='" + nom +"'" + ", c_prof_apes='" + ape + "'" + ", c_prof_mail='" + mail + "'"
			+", c_prof_fono='" + fono + "'"+", c_prof_fon2='" + fono2 + "'"+", c_prof_dire='" + dire + "'"+", c_prof_sexo='" + sexo + "'"
			+", c_prof_naci='" + naci + "'"+", c_prof_fech='" + fecha + "'"+", c_prof_dni='" + dni + "'" + " where c_prof_id='" +  cod +"'";
			javax.swing.JOptionPane.showMessageDialog(null, sql);
			stmt=cn.xcon().createStatement();
		stmt.executeQuery(sql);
			
		}catch(Exception e){
			javax.swing.JOptionPane.showMessageDialog(null,e.toString());
		}
		return true;
	}
	
	
	
}
