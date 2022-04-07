package com.one.s1.product;

import java.util.List;

import com.one.s1.review.ReviewDTO;
import com.one.s1.scrapbook.ScrapBookDTO;


public class ProductDTO {
	private Long product_num;
	private String id;
	private String product_name;
	private List<ReviewDTO> reviewDTO;
	private List<ScrapBookDTO> scrapBookDTO;
	
	public List<ScrapBookDTO> getScrapBookDTO() {
		return scrapBookDTO;
	}
	public void setScrapBookDTO(List<ScrapBookDTO> scrapBookDTO) {
		this.scrapBookDTO = scrapBookDTO;
	}
	public List<ReviewDTO> getReviewDTO() {
		return reviewDTO;
	}
	public void setReviewDTO(List<ReviewDTO> reviewDTO) {
		this.reviewDTO = reviewDTO;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
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
}
