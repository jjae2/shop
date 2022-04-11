package com.one.s1.util;

public class PassingNum {

	private Long categoryFilter_num;//버튼에 따라 다른 filter창 jsp 출력
	private Long filterSale;
	private String filterBrand;
	private Long filterStartPrice;
	private Long filterLastPrice;
	private Long category_num;

	private Long sale;
	private String brand;
	
	private Long productArray;
	
	
	
	
	public Long getProductArray() {
		if(this.productArray==null) {
			return 1L;
		}else {
			return productArray;
		}
		
		
	}
	public void setProductArray(Long productArray) {
		this.productArray = productArray;
	}
	public String getBrand() {
		if(this.brand==null) {
			return "-1";
		}else if(this.brand==""){
			return "-1";
		}else {
			return brand;
		}		
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public Long getSale() {
		return sale;
	}
	public void setSale(Long sale) {
		this.sale = sale;
	}
	public Long getCategory_num() {
		if(this.category_num == null) {
			this.category_num=0L;
		}
		return category_num;
	}
	public void setCategory_num(Long category_num) {
		this.category_num = category_num;
	}
	
	
	
	public Long getFilterSale() {	
		
		if(this.filterSale==null) {
			return -1L;
		}else if(this.filterSale==1) {
			return 0L;
		}else {
			return -1L;
		}
	}

	public void setFilterSale(Long filterSale) {		
		this.filterSale = filterSale;
	}

	public String getFilterBrand() {					 
		if(this.filterBrand==null) {
			return "";
		}else {
			return this.filterBrand;
		}
	}

	public void setFilterBrand(String filterBrand) {
		this.filterBrand = filterBrand;
	}

	public Long getFilterStartPrice() {
		
		if(this.filterStartPrice==null) {
			return 0L;
		}else {
			return this.filterStartPrice;
		}		
		
	}

	public void setFilterStartPrice(Long filterStartPrice) {
		this.filterStartPrice = filterStartPrice;
	}

	public Long getFilterLastPrice() {
		
		if(this.filterLastPrice==null) {
			return 100000000L;
		}else if(this.filterLastPrice==-1) {
			return 100000000L;
		}else {
			return this.filterLastPrice;
		}			

	}

	public void setFilterLastPrice(Long filterLastPrice) {
		this.filterLastPrice = filterLastPrice;
	}

	public Long getCategoryFilter_num() {
		return categoryFilter_num;
	}

	public void setCategoryFilter_num(Long categoryFilter_num) {
		this.categoryFilter_num = categoryFilter_num;
	}
	
	
}
