package poly.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class ThongSoKyThuat {
	@Id
	@Column(name="Id", nullable=false, unique=true)
	 @GeneratedValue(strategy=GenerationType.AUTO)
	private int Id;
	private String Hangsanxuat;
	private String Chungloai;
	private String PartNumber;
	private String Mausac;
	private String Bovisuly;
	private String Chipset;
	private String Bonhotrong;
	private int Sokhecam;
	private String DungLuongtoida;
	private String Vga;
	private String Ocung;
	private String Oquang;
	private String Cardreader;
	private String Baomat;
	private String Manhinh;
	private String Webcam;
	private String Audio;
	private String Giaotiepmang;
	private String Giaotiepkhonggiay;
	private String Conggiaotiep;
	private String Pin;
	private String Kichthuoc;
	private String Cannang;
	private String Hedieuhanh;
	private String Phukiendikem;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getHangsanxuat() {
		return Hangsanxuat;
	}
	public void setHangsanxuat(String hangsanxuat) {
		Hangsanxuat = hangsanxuat;
	}
	public String getChungloai() {
		return Chungloai;
	}
	public void setChungloai(String chungloai) {
		Chungloai = chungloai;
	}
	public String getPartNumber() {
		return PartNumber;
	}
	public void setPartNumber(String partNumber) {
		PartNumber = partNumber;
	}
	public String getMausac() {
		return Mausac;
	}
	public void setMausac(String mausac) {
		Mausac = mausac;
	}
	public String getBovisuly() {
		return Bovisuly;
	}
	public void setBovisuly(String bovisuly) {
		Bovisuly = bovisuly;
	}
	public String getChipset() {
		return Chipset;
	}
	public void setChipset(String chipset) {
		Chipset = chipset;
	}
	public String getBonhotrong() {
		return Bonhotrong;
	}
	public void setBonhotrong(String bonhotrong) {
		Bonhotrong = bonhotrong;
	}
	public int getSokhecam() {
		return Sokhecam;
	}
	public void setSokhecam(int sokhecam) {
		Sokhecam = sokhecam;
	}
	public String getDungLuongtoida() {
		return DungLuongtoida;
	}
	public void setDungLuongtoida(String dungLuongtoida) {
		DungLuongtoida = dungLuongtoida;
	}
	public String getVga() {
		return Vga;
	}
	public void setVga(String vga) {
		Vga = vga;
	}
	public String getOcung() {
		return Ocung;
	}
	public void setOcung(String ocung) {
		Ocung = ocung;
	}
	public String getOquang() {
		return Oquang;
	}
	public void setOquang(String oquang) {
		Oquang = oquang;
	}
	public String getCardreader() {
		return Cardreader;
	}
	public void setCardreader(String cardreader) {
		Cardreader = cardreader;
	}
	public String getBaomat() {
		return Baomat;
	}
	public void setBaomat(String baomat) {
		Baomat = baomat;
	}
	public String getManhinh() {
		return Manhinh;
	}
	public void setManhinh(String manhinh) {
		Manhinh = manhinh;
	}
	public String getWebcam() {
		return Webcam;
	}
	public void setWebcam(String webcam) {
		Webcam = webcam;
	}
	public String getAudio() {
		return Audio;
	}
	public void setAudio(String audio) {
		Audio = audio;
	}
	public String getGiaotiepmang() {
		return Giaotiepmang;
	}
	public void setGiaotiepmang(String giaotiepmang) {
		Giaotiepmang = giaotiepmang;
	}
	public String getGiaotiepkhonggiay() {
		return Giaotiepkhonggiay;
	}
	public void setGiaotiepkhonggiay(String giaotiepkhonggiay) {
		Giaotiepkhonggiay = giaotiepkhonggiay;
	}
	public String getConggiaotiep() {
		return Conggiaotiep;
	}
	public void setConggiaotiep(String conggiaotiep) {
		Conggiaotiep = conggiaotiep;
	}
	public String getPin() {
		return Pin;
	}
	public void setPin(String pin) {
		Pin = pin;
	}
	public String getKichthuoc() {
		return Kichthuoc;
	}
	public void setKichthuoc(String kichthuoc) {
		Kichthuoc = kichthuoc;
	}
	public String getCannang() {
		return Cannang;
	}
	public void setCannang(String cannang) {
		Cannang = cannang;
	}
	public String getHedieuhanh() {
		return Hedieuhanh;
	}
	public void setHedieuhanh(String hedieuhanh) {
		Hedieuhanh = hedieuhanh;
	}
	public String getPhukiendikem() {
		return Phukiendikem;
	}
	public void setPhukiendikem(String phukiendikem) {
		Phukiendikem = phukiendikem;
	}
	public ThongSoKyThuat(int id, String hangsanxuat, String chungloai, String partNumber, String mausac,
			String bovisuly, String chipset, String bonhotrong, int sokhecam, String dungLuongtoida, String vga,
			String ocung, String oquang, String cardreader, String baomat, String manhinh, String webcam, String audio,
			String giaotiepmang, String giaotiepkhonggiay, String conggiaotiep, String pin, String kichthuoc,
			String cannang, String hedieuhanh, String phukiendikem) {
		super();
		Id = id;
		Hangsanxuat = hangsanxuat;
		Chungloai = chungloai;
		PartNumber = partNumber;
		Mausac = mausac;
		Bovisuly = bovisuly;
		Chipset = chipset;
		Bonhotrong = bonhotrong;
		Sokhecam = sokhecam;
		DungLuongtoida = dungLuongtoida;
		Vga = vga;
		Ocung = ocung;
		Oquang = oquang;
		Cardreader = cardreader;
		Baomat = baomat;
		Manhinh = manhinh;
		Webcam = webcam;
		Audio = audio;
		Giaotiepmang = giaotiepmang;
		Giaotiepkhonggiay = giaotiepkhonggiay;
		Conggiaotiep = conggiaotiep;
		Pin = pin;
		Kichthuoc = kichthuoc;
		Cannang = cannang;
		Hedieuhanh = hedieuhanh;
		Phukiendikem = phukiendikem;
	}
	public ThongSoKyThuat() {
		super();
	}
	
	
	
	
	
}
