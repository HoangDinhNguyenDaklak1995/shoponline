package poly.entity;

import java.util.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class CategoryNews {
	@Id
	@GeneratedValue
	private int Id;
	private String Name;
	private int Subcategory;
	private String Url;
	private Date Createdate;
	private String Description;
	public CategoryNews(int id, String name, int subcategory, String url, Date createdate, String description) {
		super();
		Id = id;
		Name = name;
		Subcategory = subcategory;
		Url = url;
		Createdate = createdate;
		Description = description;
	}
	public CategoryNews() {
		super();
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getSubcategory() {
		return Subcategory;
	}
	public void setSubcategory(int subcategory) {
		Subcategory = subcategory;
	}
	public String getUrl() {
		return Url;
	}
	public void setUrl(String url) {
		Url = url;
	}
	public Date getCreatedate() {
		return Createdate;
	}
	public void setCreatedate(Date createdate) {
		Createdate = createdate;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	
}
