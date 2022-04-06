package com.one.s1.board.house;

import java.util.List;

import com.one.s1.board.BoardDTO;

public class HouseDTO extends BoardDTO {

	private Long order_num;
	private Long cart_num;
	private Long product_num;
	private String house_type;
	private Long house_space;
	private String house_style;
	private List<HouseFileDTO> fileDTOs;
	
	public List<HouseFileDTO> getFileDTOs() {
		return fileDTOs;
	}
	public void setFileDTOs(List<HouseFileDTO> fileDTOs) {
		this.fileDTOs = fileDTOs;
	}
	public Long getOrder_num() {
		return order_num;
	}
	public void setOrder_num(Long order_num) {
		this.order_num = order_num;
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
	public String getHouse_type() {
		return house_type;
	}
	public void setHouse_type(String house_type) {
		this.house_type = house_type;
	}
	public Long getHouse_space() {
		return house_space;
	}
	public void setHouse_space(Long house_space) {
		this.house_space = house_space;
	}
	public String getHouse_style() {
		return house_style;
	}
	public void setHouse_style(String house_style) {
		this.house_style = house_style;
	}
}
