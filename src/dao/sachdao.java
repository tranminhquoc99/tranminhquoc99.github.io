package dao;

import java.util.ArrayList;

import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> getsach(){
		
		ArrayList<sachbean> ds= new ArrayList<sachbean>();
		ds.add(new sachbean("s1","Bản Tình Ca Cuộc Sống","Nguyen Hoang Ha",5000,"image/ban-tinh-ca-cuoc-song.jpg","l1"));
		ds.add(new sachbean("s2","Bật Đèn","Nguyen Hoang Ha",5000,"image/bat-den.jpg","l2"));
		ds.add(new sachbean("s3","Cây Mạ Ly Huyền Bí","Nguyen Hoang Ha",5000,"image/cay-ma-ly-huyen-bi.jpg","l1"));
		ds.add(new sachbean("s4","Món Ngon Quê Nhà","Nguyen Hoang Ha",5000,"image/mon-ngon-que-nha.jpg","l3"));
		ds.add(new sachbean("s5","Những Làn Khói Tỏa Hương","Nguyen Hoang Ha",5000,"image/nhung-lan-khoi-toa-huong.jpg","l5"));
		ds.add(new sachbean("s5","Tuyết Đỏ","Nguyen Hoang Ha",5000,"image/tuyet-do.jpg","l4"));
		
		return ds;
	}
}
