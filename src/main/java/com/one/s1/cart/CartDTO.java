package com.one.s1.cart;

import java.sql.Date;

public class CartDTO {

	private Long cart_num;
	private Long product_num;
	private String id;
	//상품수량
	private Long cart_count;
	private Date adddate;
	private String com_name;
	
	//product
	private String product_name;
	//상품원가
	private Long product_price;
	//상품할인율
	private Double rate;
	
	//할인
	//상품할인가
	private int salePrice;
	//상품총가격
	private Long totalPrice;
	
	
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	
	public Long getProduct_price() {
		return product_price;
	}
	public void setProduct_price(Long product_price) {
		this.product_price = product_price;
	}
	
	public Double getRate() {
		return rate;
	}
	public void setRate(Double rate) {
		this.rate = rate;
	}

	public Long getCart_num() {
		return cart_num;
	}
	public void setCart_num(Long cart_num) {
		this.cart_num = cart_num;
	}
	public Long getProduct_num() {
		return product_num;
	}
	public void setProduct_num(Long product_num) {
		this.product_num = product_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Long getCart_count() {
		return cart_count;
	}
	public void setCart_count(Long cart_count) {
		this.cart_count = cart_count;
	}
	public Date getAdddate() {
		return adddate;
	}
	public void setAdddate(Date adddate) {
		this.adddate = adddate;
	}
	
	
	public int getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	public Long getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	public String getCom_name() {
		return com_name;
	}
	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}
	public void initSaleTotal() {
		this.salePrice= (int) (this.product_price * (1-this.rate));
		this.totalPrice = this.salePrice*this.cart_count;
		System.out.println("salePrice: " + this.salePrice);
		System.out.println("totalPrice :" + this.totalPrice);

	}
	
	
	@Override
	public String toString() {
		return "CartDTO [cart_num="+cart_num +", id="+id+", product_num="+product_num+",com_name="+com_name+", cart_count="+cart_count+", adddate="+adddate+", product_name="+product_name+", product_price="+product_price+", rate="+rate+", salePrice="+salePrice+", totalPrice="+totalPrice+"]";
	}

	

	
}
