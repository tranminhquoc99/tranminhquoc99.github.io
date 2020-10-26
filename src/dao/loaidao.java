package dao;

import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> getloai(){
		ArrayList<loaibean> ds = new ArrayList<loaibean>();
		ds.add(new loaibean("l1","Thiếu Nhi"));
		ds.add(new loaibean("l2","Lập Trình"));
		ds.add(new loaibean("l3","Toán"));
		ds.add(new loaibean("l4","Giải Trí"));
		ds.add(new loaibean("l5","Ngôn Lù"));
		return ds;
	}
}
