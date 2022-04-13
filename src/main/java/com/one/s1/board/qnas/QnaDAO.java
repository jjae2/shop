package com.one.s1.board.qnas;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.one.s1.board.BoardDAO;
import com.one.s1.board.BoardDTO;
import com.one.s1.board.BoardFileDTO;
import com.one.s1.util.Pager;
import com.one.s1.util.Pager2;
import com.one.s1.util.Pager3;

@Repository
public class QnaDAO implements BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.one.s1.board.qnas.QnaDAO.";
	

	public int reply(QnaDTO qnaDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"reply", qnaDTO);
	}
	
	public int stepUpdate(QnaDTO qnaDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"stepUpdate", qnaDTO);
	}
	
	@Override
	public BoardDTO detail(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"detail", boardDTO);
	}

	@Override
	public List<BoardDTO> list(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE+"list", pager);
	}
	
	public List<BoardDTO> sellList(Pager3 pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE+"sellList", pager);
	}
	
	public List<BoardDTO> replyList(Pager2 pager) throws Exception {
		// TODO Auto-generated method stub
		
		
		
		return sqlSession.selectList(NAMESPACE+"replyList", pager);
	}

	@Override
	public int add(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE+"add", boardDTO);
	}
	public int sellAdd(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE+"sellAdd", boardDTO);
	}

	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE+"update", boardDTO);
	}

	@Override
	public int delete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE+"delete", boardDTO);
	}

	@Override
	public Long total(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"total", pager);
	}

	public Long sellListTotal(Pager3 pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"sellListTotal", pager);
	}
	
	
	@Override
	public int addFile(BoardFileDTO boardFileDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

}