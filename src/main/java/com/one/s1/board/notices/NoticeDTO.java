package com.one.s1.board.notices;

import java.util.List;

import com.one.s1.board.BoardDTO;

public class NoticeDTO extends BoardDTO {
	private List<NoticeFileDTO> noticefileDTOs;

	
	
	public List<NoticeFileDTO> getNoticeFileDTOs() {
		return noticefileDTOs;
	}

	public void setNoticeFileDTOs(List<NoticeFileDTO> noticefileDTOs) {
		this.noticefileDTOs = noticefileDTOs;
	}


	private Long type;

	public Long getType() {
		return type;
	}

	public void setType(Long type) {
		this.type = type;
	}
	
}
