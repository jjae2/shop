package com.one.s1.product;
import java.util.List;
import com.one.s1.review.ReviewDTO;
import com.one.s1.scrapbook.ScrapBookDTO;
import java.sql.Date;
import java.util.List;

import com.one.s1.members.MemberDTO;

public class ProductDTO {

	private Long product_num;
	private Long category_num;
	private String id;
	private String product_name;
	private Long product_price;
	private String content;
	private Long sales;
	private Long stock;
	private Long hit;
	private Long date;
	private Long rate;
	private ProductFileDTO productFileDTO;
	private List<ProductFileDTO> productFileDTOs;
	private MemberDTO memberDTO;
	public Long totalPrice;
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
	public Long getTotalPrice() {		
		return Math.round(this.product_price * (1-(this.rate*0.01)));
	}
	
	public MemberDTO getMemberDTO() {
		return memberDTO;
	}
	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}
	public ProductFileDTO getProductFileDTO() {
		return productFileDTO;
	}
	public void setProductFileDTO(ProductFileDTO productFileDTO) {
		this.productFileDTO = productFileDTO;
	}
	public List<ProductFileDTO> getProductFileDTOs() {
		return productFileDTOs;
	}
	public void setProductFileDTOs(List<ProductFileDTO> productFileDTOs) {
		this.productFileDTOs = productFileDTOs;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Long getSales() {
		return sales;
	}
	public void setSales(Long sales) {
		this.sales = sales;
	}
	public Long getStock() {
		return stock;
	}
	public void setStock(Long stock) {
		this.stock = stock;
	}
	public Long getHit() {
		return hit;
	}
	public void setHit(Long hit) {
		this.hit = hit;
	}
	public Long getDate() {
		return date;
	}
	public void setDate(Long date) {
		this.date = date;
	}
	public Long getRate() {
		return rate;
	}
	public void setRate(Long rate) {
		this.rate = rate;
	}



	

}

