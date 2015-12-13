package BEAN;

import java.sql.ResultSet;

public class BeanCursos {
	DAO.DaoCursos ins=new DAO.DaoCursos();
	public ResultSet mostrar_cursos_B(){
		return ins.mostrar_cursos();
	}
	public ResultSet filtro_cursos(String cod){
		return ins.filtro_cursos(cod);
		
	}
	public boolean grabar_cursos_C(String id,String curs,String dura,String hora){
		return ins.grabar_cursos(id, curs, dura, hora);
	}
	
	public boolean eliminar_cursos_C(String id){
		return ins.eliminar_cursos(id);
		
	}
	
	public boolean actualizar_cursos_C(String id,String curs,String dura,String hora){
		return ins.actualizar_cursos(id, curs, dura, hora);
	}

}
