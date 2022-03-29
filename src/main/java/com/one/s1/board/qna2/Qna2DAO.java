package com.one.s1.board.qna2;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.one.s1.board.BoardDAO;
import com.one.s1.board.BoardDTO;
import com.one.s1.util.Pager;

@Repository
public class Qna2DAO implements BoardDAO{
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.one.s1.board.qna2.Qna2DAO.";

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

	@Override
	public int add(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE+"add", boardDTO);
	}

	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE+"update", boardDTO)	;
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
	
	public int stepUpdate(Qna2DTO qna2dto) throws Exception{
		return sqlSession.update(NAMESPACE+"stepUpdate", qna2dto);
	}
	
	public int reply(Qna2DTO qna2dto)throws Exception{
		return sqlSession.insert(NAMESPACE+"reply", qna2dto);
	}


}
