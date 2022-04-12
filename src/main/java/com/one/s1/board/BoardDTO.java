package com.one.s1.board;

import java.sql.Date;



public class BoardDTO {

	private Long num;
	private String title;
	private String id;
	private String contents;
	private Date cd;
	private Date md;
	private Long hit;

	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public Long getHit() {
		return hit;
	}

	public void setHit(Long hit) {
		this.hit = hit;
	}



}
