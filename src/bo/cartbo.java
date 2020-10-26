package bo;

import java.util.ArrayList;

import bean.cartbean;

public class cartbo {
	public ArrayList<cartbean> ds = new ArrayList<cartbean>();
	public void Add_Cart(String maSach, String tensach, int soLuong, long gia, String maLoai) {
		for(cartbean g:ds) {
			if(g.getMaSach().equalsIgnoreCase(maSach)) {
				g.setSoLuong(g.getSoLuong()+ soLuong);
				return;
			}	
		}
		ds.add(new cartbean(maSach,tensach,soLuong,gia,maLoai));		
	}
	public void Delete_Cart(String maSach){
		for(cartbean g:ds) {
			if(g.getMaSach().equalsIgnoreCase(maSach)) {
				ds.remove(g);
				return;
			}
		}
	}
	public void Update_Cart(String maSach, int soLuong) {
		for(cartbean g:ds) {
			if(g.getMaSach().equalsIgnoreCase(maSach)) {
				if(g.getSoLuong() != soLuong) {
					g.setSoLuong(soLuong);
					return;
				}	
			}
		}
		
	}
	
	public long Total_Cart() {
		long total = 0;
		for(cartbean g:ds) {
			total = total + g.getThanhTien();
		}
		return total;
	}
	public int Size() {
		int total = 0;
		for(cartbean g:ds) {
			total = total + 1;
		}
		System.out.println(total);
		return total;
	}

}
