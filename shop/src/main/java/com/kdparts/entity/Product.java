package com.kdparts.entity;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="product")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "prd_id")
	private Long prdId;
	
	@Column(name = "prd_img")
	private String prdImg;
	
	@Column(name = "prd_pack")
	private String prdPack;
	
	@Column(name = "prd_parts")
	private String prdParts;
	
	@Column(name = "prd_name")
	private String prdName;
	
	@Column(name = "prd_des")
	private String prdDes;
	
	@Column(name = "prd_cost")
	private int prdCost;
	
	@Column(name = "prd_price")
	private int prdPrice;
	
	
	public Long getPrdId() {
		return prdId;
	}
	public void setPrdId(Long prdId) {
		this.prdId = prdId;
	}
	public String getPrdImg() {
		return prdImg;
	}
	public void setPrdImg(String prdImg) {
		this.prdImg = prdImg;
	}
	public String getPrdPack() {
		return prdPack;
	}
	public void setPrdPack(String prdPack) {
		this.prdPack = prdPack;
	}
	public String getPrdParts() {
		return prdParts;
	}
	public void setPrdParts(String prdParts) {
		this.prdParts = prdParts;
	}
	public String getPrdName() {
		return prdName;
	}
	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}
	public String getPrdDes() {
		return prdDes;
	}
	public void setPrdDes(String prdDes) {
		this.prdDes = prdDes;
	}
	public int getPrdCost() {
		return prdCost;
	}
	public void setPrdCost(int prdCost) {
		this.prdCost = prdCost;
	}
	public int getPrdPrice() {
		return prdPrice;
	}
	public void setPrdPrice(int prdPrice) {
		this.prdPrice = prdPrice;
	}
	
	
}
