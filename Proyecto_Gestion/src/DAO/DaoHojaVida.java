package DAO;
import java.io.*;
import java.sql.*;


public class DaoHojaVida {
	public CONEXION.conecta cn=new CONEXION.conecta();
	public boolean grabar_hojavida(String codprof,String dir,String tel1,String tel2,String dni,
			String eda,String sex,String naci,String dis,String est_pri,String est_sec,String est_sup,String exp_lab,
			String conf,String ref,String obj){
		ResultSet rs=null;
		Statement stmt=null;
		
		try{
			
			
		
		   
			String sql="insert into T_hoja_vida  values ('" + codprof + "','" + dir + "','" + tel1 + "',"
					+ "'" + tel2 + "','" + dni + "','" + eda + "','" + sex + "','" + naci + "','" + dis + "',"
							+ "'" + est_pri + "','" + est_sec + "','" + est_sup + "','" + exp_lab + "','" + conf + "',"
									+ "'" + ref + "','" + obj + "')";
			
			 javax.swing.JOptionPane.showMessageDialog(null,sql);
			stmt=cn.xcon().createStatement();
			stmt.executeQuery(sql);
			
		}catch(Exception e){
			javax.swing.JOptionPane.showMessageDialog(null,e.toString());
		}
		return true;
	}
	////////////////////////////////////////////////////////////////////////////
	public ResultSet genera_Hoja_Vida(){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			
			String sql="select max(n_hojavida) as 'num' from t_hoja_vida";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	////////////////////////////////////////////////////////////////////////////
	
	public ResultSet lista_profesor(){
		ResultSet rs=null;
		Statement stmt=null;
		try{
			
			String sql="select dato=c_prof_id + ' - ' + c_prof_nomb + ' ' + c_prof_apes  from T_PROFESOR ";
			stmt=cn.xcon().createStatement();
			rs=stmt.executeQuery(sql);
			
		}catch(Exception e){}
		return rs;
	}
	


}
