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
public class News {
	@Id
	@GeneratedValue
	private int Id;
	@ManyToOne
	@JoinColumn(name = "Iduser")
	private Users Users;
	@ManyToOne
	@JoinColumn(name = "Idcategorynews")
	private CategoryNews Categorys;
	private String Title;
	private Date Createdate;
	private String Sum_content;
	private String Content_main;
	private boolean Status;
	private String Img;
	private int Views;
	private int Idusermodify;
	private Date Modifydate;
	private String Description;
	private String link;

	public News() {
		super();
	}

	public News(int id, poly.entity.Users users, CategoryNews categorys, String title, Date createdate,
			String sum_content, String content_main, boolean status, String img, int views, int idusermodify,
			Date modifydate, String description, String link) {
		super();
		Id = id;
		Users = users;
		Categorys = categorys;
		Title = title;
		Createdate = createdate;
		Sum_content = sum_content;
		Content_main = content_main;
		Status = status;
		Img = img;
		Views = views;
		Idusermodify = idusermodify;
		Modifydate = modifydate;
		Description = description;
		this.link = link;
	}

	public News(poly.entity.Users iduser, String title, Date createdate, String sum_content, String content_main,
			String img) {
		super();
		Users = iduser;
		Title = title;
		Createdate = createdate;
		Sum_content = sum_content;
		Content_main = content_main;
		Img = img;
	}

	
	public News(poly.entity.Users users, CategoryNews categorys, String title, Date createdate, String sum_content,
			String content_main, boolean status, String img, int views, int idusermodify, Date modifydate,
			String link) {
		super();
		Users = users;
		Categorys = categorys;
		Title = title;
		Createdate = createdate;
		Sum_content = sum_content;
		Content_main = content_main;
		Status = status;
		Img = img;
		Views = views;
		Idusermodify = idusermodify;
		Modifydate = modifydate;
		this.link = link;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public Users getUsers() {
		return Users;
	}

	public void setUsers(Users users) {
		Users = users;
	}

	public CategoryNews getCategorys() {
		return Categorys;
	}

	public void setCategorys(CategoryNews categorys) {
		Categorys = categorys;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public Date getCreatedate() {
		return Createdate;
	}

	public void setCreatedate(Date createdate) {
		Createdate = createdate;
	}

	public String getSum_content() {
		return Sum_content;
	}

	public void setSum_content(String sum_content) {
		Sum_content = sum_content;
	}

	public String getContent_main() {
		return Content_main;
	}

	public void setContent_main(String content_main) {
		Content_main = content_main;
	}

	public boolean isStatus() {
		return Status;
	}

	public void setStatus(boolean status) {
		Status = status;
	}

	public String getImg() {
		return Img;
	}

	public void setImg(String img) {
		Img = img;
	}

	public int getViews() {
		return Views;
	}

	public void setViews(int views) {
		Views = views;
	}

	public int getIdusermodify() {
		return Idusermodify;
	}

	public void setIdusermodify(int idusermodify) {
		Idusermodify = idusermodify;
	}

	public Date getModifydate() {
		return Modifydate;
	}

	public void setModifydate(Date modifydate) {
		Modifydate = modifydate;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

}
