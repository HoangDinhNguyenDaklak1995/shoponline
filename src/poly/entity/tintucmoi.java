package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class tintucmoi {
	@Id
	@GeneratedValue
	private int id;
	private String tieude;
	private String motangan;
	private String images;
	private String motaanh1;
	private String images1;
	private String motaanh2;
	private String images2;
	private String images3;
	private String motaanh3;
	private String noidung;
	private String mota;
	public tintucmoi(int id, String tieude, String motangan, String images, String motaanh1, String images1,
			String motaanh2, String images2, String images3, String motaanh3, String noidung, String mota) {
		super();
		this.id = id;
		this.tieude = tieude;
		this.motangan = motangan;
		this.images = images;
		this.motaanh1 = motaanh1;
		this.images1 = images1;
		this.motaanh2 = motaanh2;
		this.images2 = images2;
		this.images3 = images3;
		this.motaanh3 = motaanh3;
		this.noidung = noidung;
		this.mota = mota;
	}
	public tintucmoi(String tieude, String motangan, String images, String motaanh1, String images1, String motaanh2,
			String images2, String images3, String motaanh3, String noidung, String mota) {
		super();
		this.tieude = tieude;
		this.motangan = motangan;
		this.images = images;
		this.motaanh1 = motaanh1;
		this.images1 = images1;
		this.motaanh2 = motaanh2;
		this.images2 = images2;
		this.images3 = images3;
		this.motaanh3 = motaanh3;
		this.noidung = noidung;
		this.mota = mota;
	}
	public tintucmoi() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTieude() {
		return tieude;
	}
	public void setTieude(String tieude) {
		this.tieude = tieude;
	}
	public String getMotangan() {
		return motangan;
	}
	public void setMotangan(String motangan) {
		this.motangan = motangan;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getMotaanh1() {
		return motaanh1;
	}
	public void setMotaanh1(String motaanh1) {
		this.motaanh1 = motaanh1;
	}
	public String getImages1() {
		return images1;
	}
	public void setImages1(String images1) {
		this.images1 = images1;
	}
	public String getMotaanh2() {
		return motaanh2;
	}
	public void setMotaanh2(String motaanh2) {
		this.motaanh2 = motaanh2;
	}
	public String getImages2() {
		return images2;
	}
	public void setImages2(String images2) {
		this.images2 = images2;
	}
	public String getImages3() {
		return images3;
	}
	public void setImages3(String images3) {
		this.images3 = images3;
	}
	public String getMotaanh3() {
		return motaanh3;
	}
	public void setMotaanh3(String motaanh3) {
		this.motaanh3 = motaanh3;
	}
	public String getNoidung() {
		return noidung;
	}
	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	
}
