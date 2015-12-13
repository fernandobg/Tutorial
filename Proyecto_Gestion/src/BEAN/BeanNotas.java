package BEAN;

import java.sql.ResultSet;

public class BeanNotas {
	DAO.DaoNotas ins=new DAO.DaoNotas();
	public ResultSet mostrar_notas_B(){
		return ins.mostrar_notas();
	}
	public ResultSet filtros_notas(String cod){
		return ins.filtros_notas(cod);
	}
}
