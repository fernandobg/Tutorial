package BEAN;

import java.sql.ResultSet;

public class BeanSeguridad {
	DAO.DaoSeguridad ins=new DAO.DaoSeguridad();
	public ResultSet valida_seguridad(String usu,String cla,String car){
	return ins.valida_seguridad(usu, cla, car);
	}


}
