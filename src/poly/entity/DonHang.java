package poly.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class DonHang {
	@Id

	private String Sohoadon;
	@ManyToOne
	@JoinColumn(name = "Iduser")
	private Users Users;

	private double Sum_price;
	private String Status;
	private Date Createdate;
	private String Address;
	public DonHang() {
		super();
	}
	
	public DonHang(String sohoadon, poly.entity.Users users, double sum_price, String status, Date createdate,
			String address) {
		super();
		Sohoadon = sohoadon;
		Users = users;
		Sum_price = sum_price;
		Status = status;
		Createdate = createdate;
		Address = address;
	}
	public String getSohoadon() {
		return Sohoadon;
	}
	public void setSohoadon(String sohoadon) {
		Sohoadon = sohoadon;
	}
	public Users getUsers() {
		return Users;
	}
	public void setUsers(Users users) {
		Users = users;
	}
	public double getSum_price() {
		return Sum_price;
	}
	public void setSum_price(double sum_price) {
		Sum_price = sum_price;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public Date getCreatedate() {
		return Createdate;
	}
	public void setCreatedate(Date createdate) {
		Createdate = createdate;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}

	
}
