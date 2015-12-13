package BEAN;

import java.sql.ResultSet;

public class BeanDepartamentos {
	DAO.DaoDepartamentos ins=new DAO.DaoDepartamentos();
	public ResultSet mostrar_Departamentos_B(){
		return ins.mostrar_departamentoss();
	}
	public ResultSet filtro_departamentos(String cod){
		return ins.filtro_departamentos(cod);
	}
	
	public boolean grabar_departamentos_C(String id,String dep){
		return ins.grabar_departamentos(id, dep);
	}
	
	public boolean eliminar_departamentos_C(String id){
		return ins.eliminar_departamentos(id);
		
	}
	
	public boolean actualizar_departamento_C(String id,String depa){
		return ins.actualizar_departamentos(id, depa);
	}

}
