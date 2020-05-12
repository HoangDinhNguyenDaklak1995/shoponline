package poly.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class sanphamchitiet {
	@Id
	@GeneratedValue
	private int idchitiet;
	private String Tensanphamchitet;
	private String img;
	private Date ngaydang;
	private int giabanchitiet;
	private int Gianhapchitiet;
	private int giamgiachitiet;
	private int soluongchitiet;
	private boolean trangthai;
	private String Noidung;
	private String Noidunglon;
	@ManyToOne
	@JoinColumn(name = "Idthongso")
	private ThongSoKyThuat ThongSoKyThuat;
	public sanphamchitiet() {
		super();
	}
	public sanphamchitiet(String tensanphamchitet, String img, Date ngaydang, int giabanchitiet, int gianhapchitiet,
			int giamgiachitiet, int soluongchitiet, boolean trangthai,String Noidung,String Noidunglon) {
		super();
		Tensanphamchitet = tensanphamchitet;
		this.img = img;
		this.ngaydang = ngaydang;
		this.giabanchitiet = giabanchitiet;
		Gianhapchitiet = gianhapchitiet;
		this.giamgiachitiet = giamgiachitiet;
		this.soluongchitiet = soluongchitiet;
		this.trangthai = trangthai;
		this.Noidung = Noidung;
	    this.Noidunglon = Noidunglon;
	}
	public sanphamchitiet(int idchitiet, String tensanphamchitet, String img, Date ngaydang, int giabanchitiet,
			int gianhapchitiet, int giamgiachitiet, int soluongchitiet, boolean trangthai, String noidung,
			String noidunglon,poly.entity.ThongSoKyThuat thongSoKyThuat) {
		super();
		this.idchitiet = idchitiet;
		Tensanphamchitet = tensanphamchitet;
		this.img = img;
		this.ngaydang = ngaydang;
		this.giabanchitiet = giabanchitiet;
		Gianhapchitiet = gianhapchitiet;
		this.giamgiachitiet = giamgiachitiet;
		this.soluongchitiet = soluongchitiet;
		this.trangthai = trangthai;
		Noidung = noidung;
		Noidunglon = noidunglon;
		ThongSoKyThuat = thongSoKyThuat;
	}
	public int getIdchitiet() {
		return idchitiet;
	}
	public void setIdchitiet(int idchitiet) {
		this.idchitiet = idchitiet;
	}
	public String getTensanphamchitet() {
		return Tensanphamchitet;
	}
	public void setTensanphamchitet(String tensanphamchitet) {
		Tensanphamchitet = tensanphamchitet;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Date getNgaydang() {
		return ngaydang;
	}
	public void setNgaydang(Date ngaydang) {
		this.ngaydang = ngaydang;
	}
	public int getGiabanchitiet() {
		return giabanchitiet;
	}
	public void setGiabanchitiet(int giabanchitiet) {
		this.giabanchitiet = giabanchitiet;
	}
	public int getGianhapchitiet() {
		return Gianhapchitiet;
	}
	public void setGianhapchitiet(int gianhapchitiet) {
		Gianhapchitiet = gianhapchitiet;
	}
	public int getGiamgiachitiet() {
		return giamgiachitiet;
	}
	public void setGiamgiachitiet(int giamgiachitiet) {
		this.giamgiachitiet = giamgiachitiet;
	}
	public int getSoluongchitiet() {
		return soluongchitiet;
	}
	public void setSoluongchitiet(int soluongchitiet) {
		this.soluongchitiet = soluongchitiet;
	}
	public boolean isTrangthai() {
		return trangthai;
	}
	public void setTrangthai(boolean trangthai) {
		this.trangthai = trangthai;
	}
	public String getNoidung() {
		return Noidung;
	}
	public void setNoidung(String noidung) {
		Noidung = noidung;
	}
	public String getNoidunglon() {
		return Noidunglon;
	}
	public void setNoidunglon(String noidunglon) {
		Noidunglon = noidunglon;
	}
	public ThongSoKyThuat getThongSoKyThuat() {
		return ThongSoKyThuat;
	}
	public void setThongSoKyThuat(ThongSoKyThuat thongSoKyThuat) {
		ThongSoKyThuat = thongSoKyThuat;
	}
	
}
