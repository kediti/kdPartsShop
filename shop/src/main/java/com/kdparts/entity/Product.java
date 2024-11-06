package com.kdparts.entity;



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
	private Long prdId;
	
	private String prdImg;
	private String prdPack;
	private String prdParts;
	private String prdName;
	private String prdDes;
	private int prdCost;
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
