package BEAN;

import java.sql.ResultSet;

public class BeanModulos {
	DAO.DaoModulos ins=new DAO.DaoModulos();
	public ResultSet mostrar_modulos_B(){
		return ins.mostrar_modulos();
	}
	public ResultSet filtro_modulos(String cod){
		return ins.filtro_modulos(cod);
	}
	public boolean grabar_modulos_C(String id,String modu){
		return ins.grabar_modulos(id, modu);
	}
	
	public boolean eliminar_modulos_C(String id){
		return ins.eliminar_modulos(id);
		
	}
	
	public boolean actualizar_modulos_C(String id,String modu){
		return ins.actualizar_modulos(id, modu);
	}

}
