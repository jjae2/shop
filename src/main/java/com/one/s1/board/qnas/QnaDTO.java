package com.one.s1.board.qnas;

import java.util.ArrayList;

import com.one.s1.board.BoardDTO;

public class QnaDTO extends BoardDTO {

	private Long product_num;
	private Long qna_buy;
	private Long qna_reply;
	private Long qna_secret;
	private Long qna_ref;
	private Long qna_step;
	private Long qna_depth;
	private Long qna_type;

	public Long getQna_type() {
		return qna_type;
	}
	public void setQna_type(Long qna_type) {
		this.qna_type = qna_type;
	}
	public Long getProduct_num() {
		return product_num;
	}
	public void setProduct_num(Long product_num) {
		this.product_num = product_num;
	}
	public Long getQna_buy() {
		return qna_buy;
	}
	public void setQna_buy(Long qna_buy) {
		this.qna_buy = qna_buy;
	}
	public Long getQna_reply() {
		return qna_reply;
	}
	public void setQna_reply(Long qna_reply) {
		this.qna_reply = qna_reply;
	}
	public Long getQna_secret() {
		return qna_secret;
	}
	public void setQna_secret(Long qna_secret) {
		this.qna_secret = qna_secret;
	}
	public Long getQna_ref() {
		return qna_ref;
	}
	public void setQna_ref(Long qna_ref) {
		this.qna_ref = qna_ref;
	}
	public Long getQna_step() {
		return qna_step;
	}
	public void setQna_step(Long qna_step) {
		this.qna_step = qna_step;
	}
	public Long getQna_depth() {
		return qna_depth;
	}
	public void setQna_depth(Long qna_depth) {
		this.qna_depth = qna_depth;
	}
	
}
