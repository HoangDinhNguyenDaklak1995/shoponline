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
public class sanphamsale {
	@Id
	@GeneratedValue
	private int id;
	private String Tensanphamsale;
	private int giabansale;
	private int Gianhapsale;
	private int giamgiasale;
	private String Noidungsale;
	private String anhsanphamsale;
	private boolean trangthai;
	private int soluongsale;
	private Date ngaydang;
	private String Noidung;
	private String Noidunglon;
	@ManyToOne
	@JoinColumn(name = "Idthongso")
	private ThongSoKyThuat ThongSoKyThuat;
	public sanphamsale() {
		super();
	}
	public sanphamsale(String tensanphamsale, int giabansale, int gianhapsale, int giamgiasale, String anhsanphamsale,
			boolean trangthai, String img, Date ngaydang, int soluongsale,String noidungsale,String Noidung,String Noidunglon) {
		super();
		Tensanphamsale = tensanphamsale;
		this.giabansale = giabansale;
		Gianhapsale = gianhapsale;
		this.giamgiasale = giamgiasale;
		this.anhsanphamsale = anhsanphamsale;
		this.trangthai = trangthai;
		this.ngaydang = ngaydang;
		this.soluongsale = soluongsale;
	    this.Noidungsale = noidungsale;
	    this.Noidung = Noidung;
	    this.Noidunglon = Noidunglon;
	}
	public sanphamsale(int id, String tensanphamsale, int giabansale, int gianhapsale, int giamgiasale,
			String noidungsale, String anhsanphamsale, boolean trangthai, int soluongsale, Date ngaydang,
			String noidung, String noidunglon,poly.entity.ThongSoKyThuat thongSoKyThuat) {
		super();
		this.id = id;
		Tensanphamsale = tensanphamsale;
		this.giabansale = giabansale;
		Gianhapsale = gianhapsale;
		this.giamgiasale = giamgiasale;
		Noidungsale = noidungsale;
		this.anhsanphamsale = anhsanphamsale;
		this.trangthai = trangthai;
		this.soluongsale = soluongsale;
		this.ngaydang = ngaydang;
		Noidung = noidung;
		Noidunglon = noidunglon;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTensanphamsale() {
		return Tensanphamsale;
	}
	public void setTensanphamsale(String tensanphamsale) {
		Tensanphamsale = tensanphamsale;
	}
	public int getGiabansale() {
		return giabansale;
	}
	public void setGiabansale(int giabansale) {
		this.giabansale = giabansale;
	}
	public int getGianhapsale() {
		return Gianhapsale;
	}
	public void setGianhapsale(int gianhapsale) {
		Gianhapsale = gianhapsale;
	}
	public int getGiamgiasale() {
		return giamgiasale;
	}
	public void setGiamgiasale(int giamgiasale) {
		this.giamgiasale = giamgiasale;
	}
	public String getNoidungsale() {
		return Noidungsale;
	}
	public void setNoidungsale(String noidungsale) {
		Noidungsale = noidungsale;
	}
	public String getAnhsanphamsale() {
		return anhsanphamsale;
	}
	public void setAnhsanphamsale(String anhsanphamsale) {
		this.anhsanphamsale = anhsanphamsale;
	}
	public boolean isTrangthai() {
		return trangthai;
	}
	public void setTrangthai(boolean trangthai) {
		this.trangthai = trangthai;
	}
	public int getSoluongsale() {
		return soluongsale;
	}
	public void setSoluongsale(int soluongsale) {
		this.soluongsale = soluongsale;
	}
	public Date getNgaydang() {
		return ngaydang;
	}
	public void setNgaydang(Date ngaydang) {
		this.ngaydang = ngaydang;
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
