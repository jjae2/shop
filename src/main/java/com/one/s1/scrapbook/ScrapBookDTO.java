package com.one.s1.scrapbook;

public class ScrapBookDTO {
	private Long scrap_num;
	private Long product_num;
	private Long category_num;
	private String id;
	public Long getScrap_num() {
		return scrap_num;
	}
	public void setScrap_num(Long scrap_num) {
		this.scrap_num = scrap_num;
	}
	public Long getProduct_num() {
		return product_num;
	}
	public void setProduct_num(Long product_num) {
		this.product_num = product_num;
	}
	public Long getCategory_num() {
		return category_num;
	}
	public void setCategory_num(Long category_num) {
		this.category_num = category_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
