package com.one.s1.board.qnas;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.one.s1.board.BoardDTO;
import com.one.s1.board.BoardService;
import com.one.s1.util.Pager;
import com.one.s1.util.Pager2;
@Service
public class QnaService implements BoardService {
	
	@Autowired
	private QnaDAO qnaDAO;
	

	@Override
	public List<BoardDTO> list(Pager pager) throws Exception {
		Pager2 pager2 = (Pager2)pager;
		
		return qnaDAO.list(pager2);
	}
	
	public List<BoardDTO> replyList(Pager2 pager) throws Exception {
		
		return qnaDAO.replyList(pager);
	}
	
	
	public Long total(Pager pager) throws Exception {
		Pager2 pager2 = (Pager2)pager;
		pager2.makeRow();
		
		Long total = qnaDAO.total(pager2);
		pager2.makeNum(total);
		
		return total;
	}

	@Override
	public BoardDTO detail(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return qnaDAO.detail(boardDTO);
	}


	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return qnaDAO.update(boardDTO);
	}

	
	public int reply(QnaDTO qnaDTO) throws Exception{
		// qnasDTO.num		: 부모글의 번호
		// qnasDTO.title		: 폼에서 입력한 제목
		// qnasDTO.writer	: 폼에서 입력한 작성자
		// qnasDTO.contents	: 폼에서 입력한 내용
		// qnasDTO.regDate	: null
		// qnasDTO.hit		: null
		// qnasDTO.ref		: null
		// qnasDTO.step		: null
		// qnasDTO.depth		: null
		//1. 부모글 조회(ref, step, depth)

		BoardDTO boardDTO = qnaDAO.detail(qnaDTO);
		QnaDTO parent = (QnaDTO)boardDTO;
		//2. 답글의 ref는 부모의 ref값
		qnaDTO.setQna_ref(parent.getQna_ref());

		//3. 답글의 step은 부모의 step+1
		qnaDTO.setQna_step(parent.getQna_step()+1);

		//4. 답글의 depth는 부모의 depth+1
		qnaDTO.setQna_depth(parent.getQna_depth()+1);

		//5. step update
		int result = qnaDAO.stepUpdate(parent);
		//6. 답글 insert
		result = qnaDAO.reply(qnaDTO);

		
		return result;
	}

	@Override
	public int add(BoardDTO boardDTO,MultipartFile[] files) throws Exception {
		int result=qnaDAO.add(boardDTO);
		
		return result;
	}

	@Override
	public int delete(BoardDTO boardDTO) throws Exception {
		int result=qnaDAO.delete(boardDTO);
		
		return result;
	}

	@Override
	public int add(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	

}