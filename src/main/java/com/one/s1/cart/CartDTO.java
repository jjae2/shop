package com.one.s1.cart;

public class CartDTO {

	private Long cart_num;
	private Long product_num;
	private String id;
	private Long cart_count;
	
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
	
	
	
}
