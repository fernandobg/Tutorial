package BEAN;

import java.sql.ResultSet;

public class BeanCoordinador {
	DAO.DaoCoordinador ins=new DAO.DaoCoordinador();
	public ResultSet mostrar_Coordinador_B(){
		return ins.mostrar_coordinador();
	}
	
	public ResultSet filtro_coordinador(String cod){
		return ins.filtro_coordinador(cod);
	}
}
