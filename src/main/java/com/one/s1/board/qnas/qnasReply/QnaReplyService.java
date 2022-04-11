package com.one.s1.board.qnas.qnasReply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaReplyService {
	
	@Autowired
	private QnaReplyDAO qnaReplyDAO;
	
	public int update(QnaReplyDTO qnaReplyDTO)throws Exception{
		return qnaReplyDAO.update(qnaReplyDTO);
	}
	
	public int delete(QnaReplyDTO qnaReplyDTO)throws Exception{
		return qnaReplyDAO.delete(qnaReplyDTO);
	}
	
	public int add(QnaReplyDTO qnaReplyDTO)throws Exception{
		return qnaReplyDAO.add(qnaReplyDTO);
	}
	
	public List<QnaReplyDTO> list(QnaReplyDTO qnaReplyDTO)throws Exception{
		return qnaReplyDAO.list(qnaReplyDTO);
	}

}
