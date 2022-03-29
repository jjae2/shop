package com.one.s1.board.qna2;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.one.s1.board.BoardDTO;
import com.one.s1.board.BoardService;
import com.one.s1.util.Pager;

@Service
public class Qna2Service implements BoardService {

	@Autowired
	public Qna2DAO qna2dao;
	
	
	@Override
	public List<BoardDTO> list(Pager pager) throws Exception {
		pager.makeRow();
		pager.makeNum(qna2dao.total(pager));
		return qna2dao.list(pager);
	}

	@Override
	public BoardDTO detail(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return qna2dao.detail(boardDTO);
	}

	@Override
	public int add(BoardDTO boardDTO) throws Exception {
		int result = qna2dao.add(boardDTO);
		//파일해야함
		return result;
	}

	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return qna2dao.update(boardDTO);
	}

	@Override
	public int delete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		int result = qna2dao.delete(boardDTO);
		return result;
	}
	
	public int reply(Qna2DTO qna2dto) throws Exception{
		BoardDTO boardDTO = qna2dao.detail(qna2dto);
		Qna2DTO parent = (Qna2DTO)boardDTO;
		
		System.out.println("qna2DTO.getNum() : "+qna2dto.getNum());
	      System.out.println("qna2DTO.getTitle() : "+qna2dto.getTitle());
	      System.out.println("qna2DTO.getContents() : "+qna2dto.getContents());
	      System.out.println("qna2DTO.getId() : "+qna2dto.getId());
		
		
		
	      System.out.println(parent.getQna2_ref());
		qna2dto.setQna2_ref(parent.getQna2_ref());
		System.out.println(parent.getQna2_step());
		 qna2dto.setQna2_step(parent.getQna2_step()+1);
		 System.out.println(parent.getQna2_depth());
		qna2dto.setQna2_depth(parent.getQna2_depth()+1);
		
		
		int result = qna2dao.stepUpdate(parent);
		result = qna2dao.reply(qna2dto);
		return result;
	}

}
