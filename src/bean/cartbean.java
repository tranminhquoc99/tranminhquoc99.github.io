package bean;

public class cartbean {
	private String maSach;
	private String tensach;
	private int soLuong;
	private long gia;
	private long thanhTien = soLuong * gia;
	private String maLoai;
	public cartbean(String maSach, String tensach, int soLuong, long gia, String maLoai) {
		super();
		this.maSach = maSach;
		this.tensach = tensach;
		this.soLuong = soLuong;
		this.gia = gia;
		this.maLoai = maLoai;
	}
	public cartbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMaSach() {
		return maSach;
	}
	public void setMaSach(String maSach) {
		this.maSach = maSach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getThanhTien() {
		return soLuong * gia;
	}
	public void setThanhTien(long thanhTien) {
		this.thanhTien = thanhTien;
	}
	public String getMaLoai() {
		return maLoai;
	}
	public void setMaLoai(String maLoai) {
		this.maLoai = maLoai;
	}
	
	
	
	

}
