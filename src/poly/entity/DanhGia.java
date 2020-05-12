package poly.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author VTA
 *
 */
/**
 * @author VTA
 *
 */
@Entity
@Table
public class DanhGia {
	@Id
	@GeneratedValue
	private int Id;
	@ManyToOne
	@JoinColumn(name = "Idproduct")
	private Products Products;
	@ManyToOne
	@JoinColumn(name = "Iduser")
	private Users User;
	private int Star;
	@Temporal(TemporalType.DATE)
//	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date CreateDate;
	private String Description;

	public DanhGia() {
		super();
	}

	public DanhGia(int id, poly.entity.Products products, Users user, int star,Date createdate , String description) {
		super();
		Id = id;
		Products = products;
		User =user;
		Star = star;
		CreateDate=createdate;
		Description = description;
	}

	public DanhGia(poly.entity.Products products, Users user, int star,Date createdate, String description) {
		super();
		Products = products;
		User = user;
		Star = star;
		CreateDate=createdate;
		Description = description;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public Products getProducts() {
		return Products;
	}

	public void setProducts(Products products) {
		Products = products;
	}

	

	public Users getUser() {
		return User;
	}

	public void setUser(Users user) {
		User = user;
	}

	public int getStar() {
		return Star;
	}

	public void setStar(int star) {
		Star = star;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}
	public Date getCreateDate() {
		return CreateDate;
	}


	public void setCreateDate(Date createDate) {
		CreateDate = createDate;
		}
}
