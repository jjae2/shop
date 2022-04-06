package com.one.s1.review;

import java.sql.Date;

public class ReviewDTO {
	private Long review_number;
	private Long product_num;
	private String id;
	private Long review_point;
	private String contents;
	private Date cd;
	private Date md;
	public Long getReview_number() {
		return review_number;
	}
	public void setReview_number(Long review_number) {
		this.review_number = review_number;
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

	public Long getReview_point() {
		return review_point;
	}
	public void setReview_point(Long review_point) {
		this.review_point = review_point;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getCd() {
		return cd;
	}
	public void setCd(Date cd) {
		this.cd = cd;
	}
	public Date getMd() {
		return md;
	}
	public void setMd(Date md) {
		this.md = md;
	}
	
}
