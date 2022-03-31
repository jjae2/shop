package com.one.s1.board.qna2;

import java.util.List;

import com.one.s1.board.BoardDTO;

public class Qna2DTO extends BoardDTO{

	private Long qna2_ref;
	private Long qna2_step;
	private Long qna2_depth;
	
	private List<Qna2DTO> fileDTOs;
	
	
	public List<Qna2DTO> getFileDTOs() {
		return fileDTOs;
	}
	public void setFileDTOs(List<Qna2DTO> fileDTOs) {
		this.fileDTOs = fileDTOs;
	}
	public Long getQna2_ref() {
		return qna2_ref;
	}
	public void setQna2_ref(Long qna2_ref) {
		this.qna2_ref = qna2_ref;
	}
	public Long getQna2_step() {
		return qna2_step;
	}
	public void setQna2_step(Long qna2_step) {
		this.qna2_step = qna2_step;
	}
	public Long getQna2_depth() {
		return 	qna2_depth;
	}
	public void setQna2_depth(Long qna2_depth) {
		this.qna2_depth = qna2_depth;
	}
	


	
	
}
