package poly.entity;

import java.util.Date;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class NguoiDung {
	@Id @GeneratedValue
	private int Id;
	@ManyToOne
	@JoinColumn(name="id")
	private Users users;
	private String name;
	private String lastname;
	private Date birthday;
	private String country;
	private String mobile;
	private String phone;
	private String facebookname;
	private String twittername;
	private String Email;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "mm/dd/yyyy")
	private Date Createdate;
	private boolean Is_active;
	public NguoiDung() {
		super();
	}
	public NguoiDung(int id, Users users, String name, String lastname, Date birthday,
			String country, String mobile, String phone, String facebook, String twitter, String email, Date createdate,
			boolean is_active) {
		super();
		Id = id;
		this.users = users;
		this.name = name;
		this.lastname = lastname;
		this.birthday = birthday;
		this.country = country;
		this.mobile = mobile;
		this.phone = phone;
		this.facebookname = facebook;
		this.twittername = twitter;
		Email = email;
		Createdate = createdate;
		Is_active = is_active;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFacebook() {
		return facebookname;
	}
	public void setFacebook(String facebook) {
		this.facebookname = facebook;
	}
	public String getTwitter() {
		return twittername;
	}
	public void setTwitter(String twitter) {
		this.twittername = twitter;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public Date getCreatedate() {
		return Createdate;
	}
	public void setCreatedate(Date createdate) {
		Createdate = createdate;
	}
	public boolean isIs_active() {
		return Is_active;
	}
	public void setIs_active(boolean is_active) {
		Is_active = is_active;
	}
	
}
