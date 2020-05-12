package poly.entity;
import java.util.*;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table
public class Categoryproduct {
	@Id
	@GeneratedValue
	private int Id;
	private String Name;
	private int Subcategoryproduct;
	private String Url;
	private Date Createdate;
	private String Status;
	public Categoryproduct(int id, String name, int subcategoryproduct, String url, Date createdate, String status) {
		super();
		Id = id;
		Name = name;
		Subcategoryproduct = subcategoryproduct;
		Url = url;
		Createdate = createdate;
		Status = status;
	}
	
	public Categoryproduct(String name, int subcategoryproduct, String url, Date createdate, String status) {
		super();
		Name = name;
		Subcategoryproduct = subcategoryproduct;
		Url = url;
		Createdate = createdate;
		Status = status;
	}

	public Categoryproduct() {
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
	public int getSubcategoryproduct() {
		return Subcategoryproduct;
	}
	public void setSubcategoryproduct(int subcategoryproduct) {
		Subcategoryproduct = subcategoryproduct;
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
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	
}
