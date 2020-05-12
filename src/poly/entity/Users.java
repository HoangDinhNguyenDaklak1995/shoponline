package poly.entity;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="Users")
public class Users {
	@Id @GeneratedValue
	private int Iduser;
	private String Username;
	private String Pwd;
	private String Email;
	private String Fullname;
	private String Img;
	private Date Createdate;
	private boolean Is_active;
	private String Address;
	private String Facebookid;
	private String FacebookName;
	private String Description;
	private String Phone;
	private String GoogleID;
	@ManyToOne
	@JoinColumn(name="Idroles")
	private Roles Roles;
    
	public Users() {
		super();
	}

	
	public Users(int id, String username, String pwd, String email, String fullname, String img, Date createdate,
			boolean is_active, String address, String facebookid, String facebookName, String description, String phone,
			poly.entity.Roles roles, String googleID) {
		super();
		Iduser = id;
		Username = username;
		Pwd = pwd;
		Email = email;
		Fullname = fullname;
		Img = img;
		Createdate = createdate;
		Is_active = is_active;
		Address = address;
		Facebookid = facebookid;
		FacebookName = facebookName;
		Description = description;
		Phone = phone;
		Roles = roles;
		GoogleID=googleID;
	}


	public Users(String fullname, String email, String password, java.util.Date date, Boolean trangthai,
			poly.entity.Roles roles,String avarta,String username,String googleID) {
		super();
		Fullname = fullname;
		Email = email;
		Pwd = password;
		Createdate = date;
		Is_active = trangthai;
		Roles = roles;
		Img = avarta;
		Username = username;
		GoogleID=googleID;
	}
	public Users(String fullname, String email, String password, java.util.Date date, Boolean trangthai,
			poly.entity.Roles roles,String avarta,String username) {
		super();
		Fullname = fullname;
		Email = email;
		Pwd = password;
		Createdate = date;
		Is_active = trangthai;
		Roles = roles;
		Img = avarta;
		Username = username;
	}
	public Users(String username, String pwd, String email, String fullname, Date createdate, boolean is_active,
			poly.entity.Roles roles,String googleID) {
		super();
		Username = username;
		Pwd = pwd;
		Email = email;
		Fullname = fullname;
		Createdate = createdate;
		Is_active = is_active;
		Roles = roles;
		GoogleID=googleID;
	}


	public int getId() {
		return Iduser;
	}


	public void setId(int id) {
		Iduser = id;
	}


	public String getUsername() {
		return Username;
	}


	public void setUsername(String username) {
		Username = username;
	}


	public String getGoogleID() {
		return GoogleID;
	}


	public void setGoogleID(String googleID) {
		GoogleID = googleID;
	}


	public String getPwd() {
		return Pwd;
	}


	public void setPwd(String pwd) {
		Pwd = pwd;
	}


	public String getEmail() {
		return Email;
	}


	public void setEmail(String email) {
		Email = email;
	}


	public String getFullname() {
		return Fullname;
	}


	public void setFullname(String fullname) {
		Fullname = fullname;
	}


	public String getImg() {
		return Img;
	}


	public void setImg(String img) {
		Img = img;
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


	public String getAddress() {
		return Address;
	}


	public void setAddress(String address) {
		Address = address;
	}


	public String getFacebookid() {
		return Facebookid;
	}


	public void setFacebookid(String facebookid) {
		Facebookid = facebookid;
	}


	public String getFacebookName() {
		return FacebookName;
	}


	public void setFacebookName(String facebookName) {
		FacebookName = facebookName;
	}


	public String getDescription() {
		return Description;
	}


	public void setDescription(String description) {
		Description = description;
	}


	public String getPhone() {
		return Phone;
	}


	public void setPhone(String phone) {
		Phone = phone;
	}


	public Roles getRoles() {
		return Roles;
	}


	public void setRoles(Roles roles) {
		Roles = roles;
	}

}
