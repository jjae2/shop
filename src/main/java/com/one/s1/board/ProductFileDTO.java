package com.one.s1.board;

import com.one.s1.file.FileDTO;

public class ProductFileDTO extends FileDTO{
	

	private Long product_num;
	private Long fileSection;
	
	
	
	public Long getFileSection() {
		return fileSection;
	}

	public void setFileSection(Long fileSection) {
		this.fileSection = fileSection;
	}

	public Long getProduct_num() {
		return product_num;
	}

	public void setProduct_num(Long product_num) {
		this.product_num = product_num;
	}

	
	
}