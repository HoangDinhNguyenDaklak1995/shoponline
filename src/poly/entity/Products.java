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
public class Products {
	@Id
	@GeneratedValue
	private int Idproduct;
	@ManyToOne
	@JoinColumn(name = "Iduser")
	private Users Iduser;
	@ManyToOne
	@JoinColumn(name = "Iddoitac")
	private Doitac doitac;
	@ManyToOne
	@JoinColumn(name = "Idcategoryproduct")
	private Categoryproduct Categoryproduct;
	@ManyToOne
	@JoinColumn(name = "Idthongso")
	private ThongSoKyThuat ThongSoKyThuat;
	
	private String Name;
	private int Price;
	private int Gianhap;
	private int Saleprice;
	private String Img;
	private String Img1;
	private String Img2;
	private String Img3;
	private boolean Status;
	private String Content_main;
	private String Sum_content;
	private Date CreateDate;
	private int Numbers;
	private String Description;
	public Products(int id, poly.entity.Users iduser, poly.entity.Doitac doitac, poly.entity.Categoryproduct categoryproduct,poly.entity.ThongSoKyThuat thongSoKyThuat,
			String name, int price, int gianhap, int saleprice, String img,String img1,String img2,String img3, boolean status,
			String content_main, String sum_content, Date createDate, int numbers, String description) {
		super();
		Idproduct = id;
		Iduser = iduser;
		this.doitac = doitac;
		Categoryproduct = categoryproduct;
		ThongSoKyThuat = thongSoKyThuat;
		Name = name;
		Price = price;
		Gianhap = gianhap;
		Saleprice = saleprice;
		Img = img;
		Img1 = img1;
		Img2 = img2;
		Img3 = img3;
		Status = status;
		Content_main = content_main;
		Sum_content = sum_content;
		CreateDate = createDate;
		Numbers = numbers;
		Description = description;
	}

	public Products(Users iduser, poly.entity.Doitac doitac, poly.entity.Categoryproduct categoryproduct, String name,
			int price, int gianhap, int saleprice, String img,String img1,String img2,String img3, boolean status, Date createDate, int numbers) {
		super();
		Iduser = iduser;
		this.doitac = doitac;
		Categoryproduct = categoryproduct;
		Name = name;
		Price = price;
		Gianhap = gianhap;
		Saleprice = saleprice;
		Img = img;
		Img1 = img1;
		Img2 = img2;
		Img3 = img3;
		Status = status;
		CreateDate = createDate;
		Numbers = numbers;
	}
	public Products(Users iduser, Doitac doitac, poly.entity.Categoryproduct categoryproduct,poly.entity.ThongSoKyThuat thongSoKyThuat, String name,
			int price, int gianhap, int saleprice, String img,String img1,String img2,String img3, boolean status, Date createDate, int numbers) {
		super();
		Iduser = iduser;
		this.doitac = doitac;
		Categoryproduct = categoryproduct;
		Name = name;
		ThongSoKyThuat = thongSoKyThuat;
		Price = price;
		Gianhap = gianhap;
		Saleprice = saleprice;
		Img = img;
		Img1 = img1;
		Img2 = img2;
		Img3 = img3;
		Status = status;
		CreateDate = createDate;
		Numbers = numbers;
	}


	public int getId() {
		return Idproduct;
	}

	public void setId(int id) {
		Idproduct = id;
	}

	public Users getIduser() {
		return Iduser;
	}

	public void setIduser(Users iduser) {
		Iduser = iduser;
	}

	public Doitac getDoitac() {
		return doitac;
	}

	public void setDoitac(Doitac doitac) {
		doitac = this.doitac;
	}

	public Categoryproduct getCategoryproduct() {
		return Categoryproduct;
	}

	public void setCategoryproduct(Categoryproduct categoryproduct) {
		Categoryproduct = categoryproduct;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}
	public ThongSoKyThuat getThongSoKyThuat() {
		return ThongSoKyThuat;
	}
	public void setThongSoKyThuat(ThongSoKyThuat thongSoKyThuat) {
		ThongSoKyThuat = thongSoKyThuat;
	}
	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}

	public int getGianhap() {
		return Gianhap;
	}

	public void setGianhap(int gianhap) {
		Gianhap = gianhap;
	}

	public int getSaleprice() {
		return Saleprice;
	}

	public void setSaleprice(int saleprice) {
		Saleprice = saleprice;
	}

	public String getImg() {
		return Img;
	}
	public String getImg1() {
		return Img1;
	}
	public String getImg2() {
		return Img2;
	}
	public String getImg3() {
		return Img3;
	}

	public void setImg(String img) {
		Img = img;
	}

	public boolean isStatus() {
		return Status;
	}

	public void setStatus(boolean status) {
		Status = status;
	}

	public String getContent_main() {
		return Content_main;
	}

	public void setContent_main(String content_main) {
		Content_main = content_main;
	}

	public String getSum_content() {
		return Sum_content;
	}

	public void setSum_content(String sum_content) {
		Sum_content = sum_content;
	}

	public Date getCreateDate() {
		return CreateDate;
	}

	public void setCreateDate(Date createDate) {
		CreateDate = createDate;
	}

	public int getNumbers() {
		return Numbers;
	}

	public void setNumbers(int numbers) {
		Numbers = numbers;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public Products() {
		super();
	}

	public int getIdproduct() {
		return Idproduct;
	}

	public void setIdproduct(int idproduct) {
		Idproduct = idproduct;
	}

	public void setImg1(String img1) {
		Img1 = img1;
	}

	public void setImg2(String img2) {
		Img2 = img2;
	}

	public void setImg3(String img3) {
		Img3 = img3;
	}


}
