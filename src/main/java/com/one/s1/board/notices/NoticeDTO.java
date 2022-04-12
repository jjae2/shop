package com.one.s1.board.notices;

import java.util.List;

import com.one.s1.board.BoardDTO;

public class NoticeDTO extends BoardDTO {
	private List<NoticeFileDTO> fileDTOs;

	public List<NoticeFileDTO> getFileDTOs() {
		return fileDTOs;
	}

	public void setFileDTOs(List<NoticeFileDTO> fileDTOs) {
		this.fileDTOs = fileDTOs;
	}


	private Long type;

	public Long getType() {
		return type;
	}

	public void setType(Long type) {
		this.type = type;
	}
	
}
