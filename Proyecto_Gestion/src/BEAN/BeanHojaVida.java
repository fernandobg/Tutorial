package BEAN;

import java.sql.ResultSet;

public class BeanHojaVida {
	DAO.DaoHojaVida ins=new DAO.DaoHojaVida();
	public boolean grabar_hojavida_B(String codprof,String dir,String tel1,String tel2,String dni,
			String eda,String sex,String naci,String dis,String est_pri,String est_sec,String est_sup,String exp_lab,
			String conf,String ref,String obj){
		
		return ins.grabar_hojavida(codprof, dir, tel1, tel2, dni, eda, sex, naci, dis, est_pri, est_sec, est_sup, exp_lab, conf, ref, obj);
	}
	public ResultSet genera_Hoja_Vida_B(){
		return ins.genera_Hoja_Vida();
	}
	public ResultSet lista_profesor_B(){
		return ins.lista_profesor();
	}
}
