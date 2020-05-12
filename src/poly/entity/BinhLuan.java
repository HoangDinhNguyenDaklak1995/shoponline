package poly.entity;

import java.util.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table
public class BinhLuan {
	@Id
	@GeneratedValue
	private int Idcmt;
	@ManyToOne
	@JoinColumn(name = "Iduser")
	private Users Users;
	private int Subid;
	@ManyToOne
	@JoinColumn(name = "Idnews")
	private News news;
	@ManyToOne
	@JoinColumn(name = "Idcategoryproduct")
	private Categoryproduct Categoryproduct;
	private String Content_main;
	//@Temporal(TemporalType.DATE)
	//@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date Createdate;
	private boolean Status;
	private String Description;
	public BinhLuan() {
		super();
	}
	public BinhLuan(int id, poly.entity.Users users, int subiduser, News bv,
			poly.entity.Categoryproduct categoryproduct, String content_main, Date createdate, boolean status,
			String description, int subid) {
		super();
		Idcmt = id;
		Users = users;
		Subid = subid;
		news = bv;
		Categoryproduct = categoryproduct;
		Content_main = content_main;
		Createdate = createdate;
		Status = status;
		Description = description;
	}
	public BinhLuan(poly.entity.Users users, int subiduser, News bv,
			poly.entity.Categoryproduct categoryproduct, String content_main, Date createdate, boolean status,
			String description, int subid) {
		super();
		Users = users;
		Subid = subid;
		news = bv;
		Categoryproduct = categoryproduct;
		Content_main = content_main;
		Createdate = createdate;
		Status = status;
		Description = description;
	}
	public int getIdcmt() {
		return Idcmt;
	}
	public void setIdcmt(int id) {
		Idcmt = id;
	}
	public Users getUsers() {
		return Users;
	}
	public void setUsers(Users users) {
		Users = users;
	}
	public int getSubid() {
		return Subid;
	}
	public void setSubid(int subid) {
		Subid = subid;
	}
	public News getNews() {
		return news;
	}
	public void setCategorynews(News bv) {
		news = bv;
	}
	public Categoryproduct getCategoryproduct() {
		return Categoryproduct;
	}
	public void setCategoryproduct(Categoryproduct categoryproduct) {
		Categoryproduct = categoryproduct;
	}
	public String getContent_main() {
		return Content_main;
	}
	public void setContent_main(String content_main) {
		Content_main = content_main;
	}
	public Date getCreatedate() {
		return Createdate;
	}
	public void setCreatedate(Date createdate) {
		Createdate = createdate;
	}
	public boolean isStatus() {
		return Status;
	}
	public void setStatus(boolean status) {
		Status = status;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	
}
