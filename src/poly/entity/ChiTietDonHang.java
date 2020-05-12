package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class ChiTietDonHang {

	@Id
	@GeneratedValue
	private int Id;
	@ManyToOne
	@JoinColumn(name = "Sohoadon")
	private DonHang Donhang;
	@ManyToOne
	@JoinColumn(name = "Idproduct")
	private Products Products;
	private int Numbers;
	private double Prices;
	private String Status;

	public ChiTietDonHang() {
		super();
	}

	public ChiTietDonHang(int id, DonHang donhang, poly.entity.Products products, int numbers, double prices,
			String status) {
		super();
		Id = id;
		Donhang = donhang;
		Products = products;
		Numbers = numbers;
		Prices = prices;
		Status = status;
	}

	public ChiTietDonHang(DonHang donhang, poly.entity.Products products, int numbers, double prices, String status) {
		super();
		Donhang = donhang;
		Products = products;
		Numbers = numbers;
		Prices = prices;
		Status = status;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public DonHang getDonhang() {
		return Donhang;
	}

	public void setDonhang(DonHang donhang) {
		Donhang = donhang;
	}

	public Products getProducts() {
		return Products;
	}

	public void setProducts(Products products) {
		Products = products;
	}

	public int getNumbers() {
		return Numbers;
	}

	public void setNumbers(int numbers) {
		Numbers = numbers;
	}

	public double getPrices() {
		return Prices;
	}

	public void setPrices(double prices) {
		Prices = prices;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

}
