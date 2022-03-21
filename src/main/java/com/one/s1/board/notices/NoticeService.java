package com.one.s1.board.notices;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.one.s1.board.BoardDTO;
import com.one.s1.board.BoardService;
import com.one.s1.util.Pager;

@Service
public class NoticeService implements BoardService {

	
	@Autowired
	private NoticeDAO noticeDAO;


	@Override
	public List<BoardDTO> list(Pager pager) throws Exception {
		
		pager.makeRow();
		
		pager.makeNum(noticeDAO.total(pager));
		
		return noticeDAO.list(pager);
	}

	@Override
	public BoardDTO detail(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.detail(boardDTO);
	}

	@Override
	public int add(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		//long num = noticeDAO.seqNum();
		//boardDTO.setNum(num);
		int result=noticeDAO.add(boardDTO);
		
		return result;
	}

	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.update(boardDTO);
	}

	@Override
	public int delete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		//num 으로 HDD에 저장된 파일명 조회
		
		int result = noticeDAO.delete(boardDTO);
		return result;	
	}
	
}
