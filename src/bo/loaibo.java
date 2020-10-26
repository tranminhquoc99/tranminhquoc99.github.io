package bo;

import java.util.ArrayList;

import bean.loaibean;
import dao.loaidao;

public class loaibo{
	loaidao lbo = new loaidao();
	ArrayList<loaibean> ds;
	public ArrayList<loaibean> getloai(){
		ds = lbo.getloai();
		return ds;
	}

}
