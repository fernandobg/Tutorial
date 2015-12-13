package BEAN;

import java.sql.ResultSet;

public class BeanProfesor {
	DAO.DaoProfesor ins=new DAO.DaoProfesor();
	public ResultSet mostrar_profesor_B(){
		return ins.mostrar_Profesor();
	}
	public ResultSet filtro_Profesor(String cod){
		return ins.filtro_Profesor(cod);
	}
	
	public Boolean grabar_Profesor_B(String cod,String nom,String ape,String mail,String fono,String fono2,String dire,String sexo,String naci,String fecha,String dni){
		return ins.grabar_Profesor(cod, nom, ape, mail, fono, fono2, dire, sexo, naci, fecha,dni);
	}
	public Boolean eliminar_Profesor_B(String cod){
		return ins.eliminar_Profesor(cod);
	}
	public ResultSet genera_Profesor_B(){
		return ins.genera_Profesor();
	}
	public Boolean actualizar_Profesor_B(String cod,String nom,String ape,String mail,String fono,String fono2,String dire,String sexo,String naci,String fecha,String dni){
		return ins.actualizar_Profesor(cod, nom, ape, mail, fono, fono2, dire, sexo, naci, fecha,dni);
	}
}
