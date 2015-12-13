package BEAN;

import java.sql.ResultSet;

public class BeanAlumnos {
	DAO.DaoAlumnos ins=new DAO.DaoAlumnos();
	public ResultSet mostrar_alumnos_B(){
		return ins.mostrar_alumnos();
	}
	public ResultSet filtro_alumnos_B(String cod){
		return ins.filtro_alumnos(cod);
	}
}
