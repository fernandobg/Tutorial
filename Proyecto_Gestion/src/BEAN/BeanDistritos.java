package BEAN;

import java.sql.ResultSet;

public class BeanDistritos {
	DAO.DaoDiatritos ins=new DAO.DaoDiatritos();
	public ResultSet mostrar_Distritos_B(){
		return ins.mostrar_distritos();
	}
	public ResultSet filtro_distritos(String cod){
		return ins.filtro_distritos(cod);
	}
}
