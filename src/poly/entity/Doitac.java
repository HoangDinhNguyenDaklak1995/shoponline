package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Doitac {
	@Id
	@GeneratedValue
	private int Iddoitac;
	@ManyToOne
	@JoinColumn(name = "Iduser")
	private Users Users;
	private String Name;
	private String Address;
	private String Phone;
	private String Description;
	public Doitac() {
		super();
	}
	public Doitac(poly.entity.Users users, String name, String address, String phone, String description) {
		super();
		Users = users;
		Name = name;
		Address = address;
		Phone = phone;
		Description = description;
	}
	public Doitac(int iddoitac, poly.entity.Users users, String name, String address, String phone,
			String description) {
		super();
		Iddoitac = iddoitac;
		Users = users;
		Name = name;
		Address = address;
		Phone = phone;
		Description = description;
	}
	public int getIddoitac() {
		return Iddoitac;
	}
	public void setIddoitac(int iddoitac) {
		Iddoitac = iddoitac;
	}
	public Users getUsers() {
		return Users;
	}
	public void setUsers(Users users) {
		Users = users;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	
	
}
